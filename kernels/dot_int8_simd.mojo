# Pure SIMD primitive: no loops, no pointers, just vector arithmetic.
# This is the cleanest test for "does Mojo emit RVV for vector ops on RISC-V?"
fn dot_int8_simd_primitive(
    a: SIMD[DType.int8, 16],
    b: SIMD[DType.int8, 16],
) -> Int32:
    # Widen to int32 element-wise (sixteen int8 -> sixteen int32)
    var a32 = a.cast[DType.int32]()
    var b32 = b.cast[DType.int32]()
    # Element-wise multiply, then horizontal sum across all 16 lanes
    var products = a32 * b32
    return products.reduce_add()


# Looped version: iterates over a buffer of int8s in chunks of 16.
# Assumes n is a multiple of 16 to keep the loop body trivial.
fn dot_int8_simd_loop(
    a: UnsafePointer[Int8, origin=...],
    b: UnsafePointer[Int8, origin=...],
    n: Int,
) -> Int32:
    comptime WIDTH = 16
    var acc = SIMD[DType.int32, WIDTH](0)
    var i = 0
    while i < n:
        # Load 16 contiguous bytes from each pointer
        var va = (a + i).load[width=WIDTH]()
        var vb = (b + i).load[width=WIDTH]()
        # Widen + multiply + accumulate into the vector accumulator
        acc += va.cast[DType.int32]() * vb.cast[DType.int32]()
        i += WIDTH
    return acc.reduce_add()


fn main():
    # Anchor for codegen — same harness pattern as the scalar kernel.
    var a = List[Int8](length=32, fill=Int8(1))
    var b = List[Int8](length=32, fill=Int8(2))

    # Call the primitive — needs us to construct SIMD values from somewhere
    var va = (a.unsafe_ptr()).load[width=16]()
    var vb = (b.unsafe_ptr()).load[width=16]()
    var result_primitive = dot_int8_simd_primitive(va, vb)

    # Call the looped version
    var result_loop = dot_int8_simd_loop(a.unsafe_ptr(), b.unsafe_ptr(), 32)

    # Force observability so the compiler can't elide the calls
    print(result_primitive)
    print(result_loop)
