fn dot_int8(
    a: UnsafePointer[Int8, origin=...],
    b: UnsafePointer[Int8, origin=...],
    n: Int,
) -> Int32:
    var acc: Int32 = 0
    for i in range(n):
        acc += Int32(a[i]) * Int32(b[i])
    return acc


fn main():
    var a = List[Int8](length=8, fill=Int8(1))
    var b = List[Int8](length=8, fill=Int8(2))
    var result = dot_int8(a.unsafe_ptr(), b.unsafe_ptr(), 8)
    print(result)
