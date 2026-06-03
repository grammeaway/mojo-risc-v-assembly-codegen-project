	.attribute	4, 16
	.attribute	5, "rv64i2p1"
	.file	"dot_int8.mojo"
	.text
	.p2align	2
	.type	main_closure_0,@function
main_closure_0:
	.cfi_startproc
	li	a0, 0
	tail	KGEN_CompilerRT_AsyncRT_CreateRuntime
.Lfunc_end0:
	.size	main_closure_0, .Lfunc_end0-main_closure_0
	.cfi_endproc

	.p2align	2
	.type	main_closure_1,@function
main_closure_1:
	.cfi_startproc
	tail	KGEN_CompilerRT_AsyncRT_DestroyRuntime
.Lfunc_end1:
	.size	main_closure_1, .Lfunc_end1-main_closure_1
	.cfi_endproc

	.globl	main
	.p2align	2
	.type	main,@function
main:
.Lmain$local:
	.type	.Lmain$local,@function
	.cfi_startproc
	addi	sp, sp, -128
	.cfi_def_cfa_offset 128
	sd	ra, 120(sp)
	sd	s0, 112(sp)
	sd	s1, 104(sp)
	sd	s2, 96(sp)
	sd	s3, 88(sp)
	sd	s4, 80(sp)
	sd	s5, 72(sp)
	sd	s6, 64(sp)
	sd	s7, 56(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	.cfi_offset s1, -24
	.cfi_offset s2, -32
	.cfi_offset s3, -40
	.cfi_offset s4, -48
	.cfi_offset s5, -56
	.cfi_offset s6, -64
	.cfi_offset s7, -72
	mv	s0, a1
	mv	s1, a0
	call	KGEN_CompilerRT_AsyncRT_GetCurrentRuntime
	bnez	a0, .LBB2_2
.Lpcrel_hi1:
	auipc	a0, %got_pcrel_hi(main_closure_0)
.Lpcrel_hi2:
	auipc	a1, %got_pcrel_hi(main_closure_1)
	ld	a2, %pcrel_lo(.Lpcrel_hi1)(a0)
	ld	a3, %pcrel_lo(.Lpcrel_hi2)(a1)
.Lpcrel_hi0:
	auipc	a0, %pcrel_hi(static_string_a61c3395ab9379d9)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi0)
	li	a1, 7
	call	KGEN_CompilerRT_GetOrCreateGlobal
.LBB2_2:
	mv	a0, s1
	mv	a1, s0
	call	KGEN_CompilerRT_SetArgV
	call	KGEN_CompilerRT_PrintStackTraceOnFault
	addi	a0, sp, 32
	li	a1, 1
	li	a4, 8
	li	s1, 8
	li	a2, 0
	li	a3, 0
	call	"std::collections::list::List::_realloc(::List[$0]&,::Int),T=[typevalue<#kgen.instref<\"std::builtin::simd::SIMD,dtype=si8,size=1\">>, scalar<si8>]"
	ld	s0, 32(sp)
	ld	a1, 40(sp)
	ld	s3, 48(sp)
	li	s2, 7
	blt	s2, a1, .LBB2_4
	add	a0, s0, a1
	sub	a2, s1, a1
	li	a1, 1
	call	memset
.LBB2_4:
	addi	a0, sp, 8
	li	a1, 1
	li	a4, 8
	li	s5, 8
	li	a2, 0
	li	a3, 0
	call	"std::collections::list::List::_realloc(::List[$0]&,::Int),T=[typevalue<#kgen.instref<\"std::builtin::simd::SIMD,dtype=si8,size=1\">>, scalar<si8>]"
	ld	s1, 8(sp)
	ld	a1, 16(sp)
	ld	s4, 24(sp)
	blt	s2, a1, .LBB2_6
	add	a0, s1, a1
	sub	a2, s5, a1
	li	a1, 2
	call	memset
.LBB2_6:
	li	s2, 0
	addi	s5, s1, 8
	mv	s6, s0
	mv	s7, s1
.LBB2_7:
	lb	a1, 0(s6)
	lb	a0, 0(s7)
	call	__muldi3
	addw	s2, a0, s2
	addi	s7, s7, 1
	addi	s6, s6, 1
	bne	s7, s5, .LBB2_7
	blez	s3, .LBB2_10
	mv	a0, s0
	call	KGEN_CompilerRT_AlignedFree
.LBB2_10:
	blez	s4, .LBB2_12
	mv	a0, s1
	call	KGEN_CompilerRT_AlignedFree
.LBB2_12:
.Lpcrel_hi3:
	auipc	a0, %pcrel_hi(static_string_bbe01a6a523daf15)
	li	a2, 1
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi3)
	li	a4, 1
	mv	a0, s2
	li	a3, 0
	call	"std::io::io::print[*::Writable](*$0,sep:::StringSlice[::Bool(False), StaticConstantOrigin, *?],end:::StringSlice[::Bool(False), StaticConstantOrigin, *?],flush:::Bool,file:::FileDescriptor$),Ts=[[typevalue<#kgen.instref<\"std::builtin::simd::SIMD,dtype=si32,size=1\">>, scalar<si32>]]"
	call	KGEN_CompilerRT_DestroyGlobals
	li	a0, 0
	ld	ra, 120(sp)
	ld	s0, 112(sp)
	ld	s1, 104(sp)
	ld	s2, 96(sp)
	ld	s3, 88(sp)
	ld	s4, 80(sp)
	ld	s5, 72(sp)
	ld	s6, 64(sp)
	ld	s7, 56(sp)
	.cfi_restore ra
	.cfi_restore s0
	.cfi_restore s1
	.cfi_restore s2
	.cfi_restore s3
	.cfi_restore s4
	.cfi_restore s5
	.cfi_restore s6
	.cfi_restore s7
	addi	sp, sp, 128
	.cfi_def_cfa_offset 0
	ret
.Lfunc_end2:
	.size	main, .Lfunc_end2-main
	.size	.Lmain$local, .Lfunc_end2-main
	.cfi_endproc

	.p2align	2
	.type	"std::builtin::simd::SIMD::write_to[::Writer](::SIMD[$0, $1],$2&),dtype=si32,size=1,writer.T`2x=[typevalue<#kgen.instref<\"std::format::_utils::_WriteBufferStack,origin._mlir_origin`={  },origin={  },W=[typevalue<#kgen.instref<\\1B\\22std::io::file_descriptor::FileDescriptor\\22>>, index],stack_buffer_bytes=4096\">>, struct<(struct<(array<4096, scalar<ui8>>) memoryOnly>, index, pointer<index>) memoryOnly>]",@function
"std::builtin::simd::SIMD::write_to[::Writer](::SIMD[$0, $1],$2&),dtype=si32,size=1,writer.T`2x=[typevalue<#kgen.instref<\"std::format::_utils::_WriteBufferStack,origin._mlir_origin`={  },origin={  },W=[typevalue<#kgen.instref<\\1B\\22std::io::file_descriptor::FileDescriptor\\22>>, index],stack_buffer_bytes=4096\">>, struct<(struct<(array<4096, scalar<ui8>>) memoryOnly>, index, pointer<index>) memoryOnly>]":
	.cfi_startproc
	addi	sp, sp, -160
	.cfi_def_cfa_offset 160
	sd	ra, 152(sp)
	sd	s0, 144(sp)
	sd	s1, 136(sp)
	sd	s2, 128(sp)
	sd	s3, 120(sp)
	sd	s4, 112(sp)
	sd	s5, 104(sp)
	sd	s6, 96(sp)
	sd	s7, 88(sp)
	sd	s8, 80(sp)
	sd	s9, 72(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	.cfi_offset s1, -24
	.cfi_offset s2, -32
	.cfi_offset s3, -40
	.cfi_offset s4, -48
	.cfi_offset s5, -56
	.cfi_offset s6, -64
	.cfi_offset s7, -72
	.cfi_offset s8, -80
	.cfi_offset s9, -88
	mv	s0, a1
	mv	s2, a0
	sext.w	s3, a0
	lui	a0, 1
	add	s4, a1, a0
	bltz	s3, .LBB3_3
	ld	s1, 0(s4)
	bge	a0, s1, .LBB3_9
	ld	a0, 8(s4)
	ld	a0, 0(a0)
	mv	a1, s0
	mv	a2, s1
	call	write
	li	s1, 0
	sd	zero, 0(s4)
	bnez	s3, .LBB3_10
	j	.LBB3_29
.LBB3_3:
	ld	a2, 0(s4)
	addi	a1, a2, 1
	addi	a0, a0, 1
	blt	a1, a0, .LBB3_5
	ld	a0, 8(s4)
	ld	a0, 0(a0)
	mv	a1, s0
	call	write
	li	a2, 0
	sd	zero, 0(s4)
.LBB3_5:
	add	a2, s0, a2
	li	a0, 45
	sb	a0, 0(a2)
	ld	s1, 0(s4)
	lui	a0, 1
	addi	s1, s1, 1
	addi	a0, a0, 1
	sd	s1, 0(s4)
	blt	s1, a0, .LBB3_7
	ld	a0, 8(s4)
	ld	a0, 0(a0)
	mv	a1, s0
	mv	a2, s1
	call	write
	li	s1, 0
	sd	zero, 0(s4)
.LBB3_7:
	sb	zero, 71(sp)
	li	s5, 63
	addi	s6, sp, 7
.Lpcrel_hi1:
	auipc	s7, %pcrel_hi(static_string_978d8d34847e5196)
	addi	s7, s7, %pcrel_lo(.Lpcrel_hi1)
.LBB3_8:
	sext.w	s3, s2
	li	a1, 10
	mv	a0, s3
	call	__moddi3
	srliw	a1, s2, 31
	snez	a2, a0
	xori	s2, a1, 1
	and	a1, s2, a2
	neg	a1, a1
	andi	a1, a1, -10
	add	a0, a1, a0
	sraiw	a1, a0, 31
	xor	a0, a0, a1
	subw	a0, a0, a1
	add	a0, s7, a0
	lbu	a0, 0(a0)
	add	a1, s6, s5
	sb	a0, 0(a1)
	addi	s5, s5, -1
	li	a1, -10
	mv	a0, s3
	call	__divdi3
	slli	a1, a0, 3
	slli	a2, a0, 1
	add	a1, a2, a1
	negw	a1, a1
	xor	a1, a1, s3
	snez	a1, a1
	and	a1, s2, a1
	subw	s2, a1, a0
	bnez	s2, .LBB3_8
	j	.LBB3_12
.LBB3_9:
	beqz	s3, .LBB3_27
.LBB3_10:
	sb	zero, 71(sp)
	li	s5, 63
	li	s3, 10
	addi	s6, sp, 7
.Lpcrel_hi0:
	auipc	s7, %pcrel_hi(static_string_978d8d34847e5196)
	addi	s7, s7, %pcrel_lo(.Lpcrel_hi0)
.LBB3_11:
	mv	s8, s2
	sext.w	s9, s2
	slli	a0, s2, 32
	srli	a0, a0, 32
	li	a1, 10
	call	__udivdi3
	mv	s2, a0
	slli	a0, a0, 1
	slli	a1, s2, 3
	add	a0, a1, a0
	subw	a0, s8, a0
	add	a0, s7, a0
	lbu	a0, 0(a0)
	add	a1, s6, s5
	sb	a0, 0(a1)
	addi	s5, s5, -1
	bgeu	s9, s3, .LBB3_11
.LBB3_12:
	addi	a0, s5, 1
	li	a1, 65
	mv	s6, a0
	blt	a0, a1, .LBB3_14
	li	s6, 65
.LBB3_14:
	bgez	a0, .LBB3_16
	addi	a0, s5, 66
	sgtz	a1, a0
	neg	a1, a1
	and	s6, a1, a0
.LBB3_16:
	addi	s3, sp, 7
	li	a0, 64
	lui	a1, 1
	sub	s2, a0, s6
	addi	a0, a1, 1
	add	s3, s3, s6
	blt	s2, a0, .LBB3_18
	ld	a0, 8(s4)
	ld	a0, 0(a0)
	mv	a1, s0
	mv	a2, s1
	call	write
	ld	a0, 8(s4)
	sd	zero, 0(s4)
	ld	a0, 0(a0)
	mv	a1, s3
	mv	a2, s2
	call	write
	j	.LBB3_37
.LBB3_18:
	add	a1, s1, s2
	blt	a1, a0, .LBB3_20
	ld	a0, 8(s4)
	ld	a0, 0(a0)
	mv	a1, s0
	mv	a2, s1
	call	write
	li	s1, 0
	sd	zero, 0(s4)
.LBB3_20:
	li	a0, 4
	add	s0, s0, s1
	blt	a0, s2, .LBB3_24
	li	a0, 64
	beq	s6, a0, .LBB3_35
	lbu	a0, 0(s3)
	li	a1, 63
	lbu	a2, 70(sp)
	sb	a0, 0(s0)
	li	a0, 3
	sub	a1, a1, s6
	add	a1, s0, a1
	sb	a2, 0(a1)
	blt	s2, a0, .LBB3_35
	li	a0, 62
	lbu	a1, 1(s3)
	lbu	a2, 69(sp)
	sub	a0, a0, s6
	add	a0, s0, a0
	sb	a1, 1(s0)
	sb	a2, 0(a0)
	j	.LBB3_35
.LBB3_24:
	li	a0, 16
	blt	a0, s2, .LBB3_30
	li	a1, 8
	add	a0, s0, s2
	blt	s2, a1, .LBB3_34
	lbu	a1, 0(s3)
	lbu	a2, 1(s3)
	lbu	a3, 2(s3)
	lbu	a4, 3(s3)
	lbu	a5, 4(s3)
	lbu	a6, 5(s3)
	lbu	a7, 6(s3)
	lbu	t0, 7(s3)
	sb	a5, 4(s0)
	sb	a6, 5(s0)
	sb	a7, 6(s0)
	sb	t0, 7(s0)
	lbu	a5, 63(sp)
	lbu	a6, 64(sp)
	lbu	a7, 65(sp)
	lbu	t0, 66(sp)
	sb	a1, 0(s0)
	sb	a2, 1(s0)
	sb	a3, 2(s0)
	sb	a4, 3(s0)
	lbu	a1, 67(sp)
	lbu	a2, 68(sp)
	lbu	a3, 69(sp)
	lbu	a4, 70(sp)
	sb	a1, -4(a0)
	sb	a2, -3(a0)
	sb	a3, -2(a0)
	sb	a4, -1(a0)
	sb	a5, -8(a0)
	sb	a6, -7(a0)
	sb	a7, -6(a0)
	sb	t0, -5(a0)
	j	.LBB3_35
.LBB3_27:
	bne	s1, a0, .LBB3_29
	ld	a0, 8(s4)
	ld	a0, 0(a0)
	mv	a1, s0
	mv	a2, s1
	call	write
	li	s1, 0
	sd	zero, 0(s4)
.LBB3_29:
	add	s0, s0, s1
	li	a0, 48
	sb	a0, 0(s0)
	ld	a0, 0(s4)
	addi	a0, a0, 1
	j	.LBB3_36
.LBB3_30:
	li	a0, -63
	srli	a0, a0, 1
	and	s1, s2, a0
	beqz	s1, .LBB3_32
	mv	a0, s0
	mv	a1, s3
	mv	a2, s1
	call	memcpy
.LBB3_32:
	beq	s1, s2, .LBB3_35
	add	a0, s0, s1
	add	a1, s3, s1
	andi	a2, s2, 31
	call	memcpy
	j	.LBB3_35
.LBB3_34:
	lbu	a1, 0(s3)
	lbu	a2, 1(s3)
	lbu	a3, 2(s3)
	lb	a4, 3(s3)
	sb	a1, 0(s0)
	sb	a2, 1(s0)
	sb	a3, 2(s0)
	sb	a4, 3(s0)
	lbu	a1, 67(sp)
	lbu	a2, 68(sp)
	lbu	a3, 69(sp)
	lb	a4, 70(sp)
	sb	a1, -4(a0)
	sb	a2, -3(a0)
	sb	a3, -2(a0)
	sb	a4, -1(a0)
.LBB3_35:
	ld	a0, 0(s4)
	add	a0, a0, s2
.LBB3_36:
	sd	a0, 0(s4)
.LBB3_37:
	ld	ra, 152(sp)
	ld	s0, 144(sp)
	ld	s1, 136(sp)
	ld	s2, 128(sp)
	ld	s3, 120(sp)
	ld	s4, 112(sp)
	ld	s5, 104(sp)
	ld	s6, 96(sp)
	ld	s7, 88(sp)
	ld	s8, 80(sp)
	ld	s9, 72(sp)
	.cfi_restore ra
	.cfi_restore s0
	.cfi_restore s1
	.cfi_restore s2
	.cfi_restore s3
	.cfi_restore s4
	.cfi_restore s5
	.cfi_restore s6
	.cfi_restore s7
	.cfi_restore s8
	.cfi_restore s9
	addi	sp, sp, 160
	.cfi_def_cfa_offset 0
	ret
.Lfunc_end3:
	.size	"std::builtin::simd::SIMD::write_to[::Writer](::SIMD[$0, $1],$2&),dtype=si32,size=1,writer.T`2x=[typevalue<#kgen.instref<\"std::format::_utils::_WriteBufferStack,origin._mlir_origin`={  },origin={  },W=[typevalue<#kgen.instref<\\1B\\22std::io::file_descriptor::FileDescriptor\\22>>, index],stack_buffer_bytes=4096\">>, struct<(struct<(array<4096, scalar<ui8>>) memoryOnly>, index, pointer<index>) memoryOnly>]", .Lfunc_end3-"std::builtin::simd::SIMD::write_to[::Writer](::SIMD[$0, $1],$2&),dtype=si32,size=1,writer.T`2x=[typevalue<#kgen.instref<\"std::format::_utils::_WriteBufferStack,origin._mlir_origin`={  },origin={  },W=[typevalue<#kgen.instref<\\1B\\22std::io::file_descriptor::FileDescriptor\\22>>, index],stack_buffer_bytes=4096\">>, struct<(struct<(array<4096, scalar<ui8>>) memoryOnly>, index, pointer<index>) memoryOnly>]"
	.cfi_endproc

	.p2align	2
	.type	"std::collections::list::List::_realloc(::List[$0]&,::Int),T=[typevalue<#kgen.instref<\"std::builtin::simd::SIMD,dtype=si8,size=1\">>, scalar<si8>]",@function
"std::collections::list::List::_realloc(::List[$0]&,::Int),T=[typevalue<#kgen.instref<\"std::builtin::simd::SIMD,dtype=si8,size=1\">>, scalar<si8>]":
	.cfi_startproc
	addi	sp, sp, -64
	.cfi_def_cfa_offset 64
	sd	ra, 56(sp)
	sd	s0, 48(sp)
	sd	s1, 40(sp)
	sd	s2, 32(sp)
	sd	s3, 24(sp)
	sd	s4, 16(sp)
	sd	s5, 8(sp)
	sd	s6, 0(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	.cfi_offset s1, -24
	.cfi_offset s2, -32
	.cfi_offset s3, -40
	.cfi_offset s4, -48
	.cfi_offset s5, -56
	.cfi_offset s6, -64
	.cfi_remember_state
	mv	s0, a4
	mv	s4, a3
	mv	s1, a2
	mv	s3, a1
	mv	s2, a0
	li	a0, 1
	mv	a1, a4
	call	KGEN_CompilerRT_AlignedAlloc
	mv	s5, a0
	add	a1, s3, s1
	li	a2, 4
	add	a0, a0, s1
	blt	a2, s1, .LBB4_4
	beqz	s1, .LBB4_11
	lbu	a2, 0(s3)
	lbu	a3, -1(a1)
	sb	a2, 0(s5)
	li	a2, 3
	sb	a3, -1(a0)
	blt	s1, a2, .LBB4_11
	lbu	a2, 1(s3)
	lbu	a1, -2(a1)
	sb	a2, 1(s5)
	sb	a1, -2(a0)
	bgtz	s4, .LBB4_12
	j	.LBB4_13
.LBB4_4:
	li	a2, 16
	bltu	a2, s1, .LBB4_7
	li	a2, 8
	blt	s1, a2, .LBB4_14
	lbu	a2, 0(s3)
	lbu	a3, 1(s3)
	lbu	a4, 2(s3)
	lbu	a5, 3(s3)
	lbu	a6, 4(s3)
	lbu	a7, 5(s3)
	lbu	t0, 6(s3)
	lbu	t1, 7(s3)
	lbu	t2, -8(a1)
	lbu	t3, -7(a1)
	lbu	t4, -6(a1)
	lbu	t5, -5(a1)
	sb	a6, 4(s5)
	sb	a7, 5(s5)
	sb	t0, 6(s5)
	sb	t1, 7(s5)
	lbu	a6, -4(a1)
	lbu	a7, -3(a1)
	lbu	t0, -2(a1)
	lbu	a1, -1(a1)
	sb	a2, 0(s5)
	sb	a3, 1(s5)
	sb	a4, 2(s5)
	sb	a5, 3(s5)
	sb	a6, -4(a0)
	sb	a7, -3(a0)
	sb	t0, -2(a0)
	sb	a1, -1(a0)
	sb	t2, -8(a0)
	sb	t3, -7(a0)
	sb	t4, -6(a0)
	sb	t5, -5(a0)
	bgtz	s4, .LBB4_12
	j	.LBB4_13
.LBB4_7:
	li	a0, -63
	srli	a0, a0, 1
	and	s6, s1, a0
	beqz	s6, .LBB4_9
	mv	a0, s5
	mv	a1, s3
	mv	a2, s6
	call	memcpy
.LBB4_9:
	beq	s6, s1, .LBB4_11
	add	a0, s5, s6
	add	a1, s3, s6
	andi	a2, s1, 31
	call	memcpy
.LBB4_11:
	blez	s4, .LBB4_13
.LBB4_12:
	mv	a0, s3
	call	KGEN_CompilerRT_AlignedFree
.LBB4_13:
	sd	s5, 0(s2)
	sd	s1, 8(s2)
	sd	s0, 16(s2)
	ld	ra, 56(sp)
	ld	s0, 48(sp)
	ld	s1, 40(sp)
	ld	s2, 32(sp)
	ld	s3, 24(sp)
	ld	s4, 16(sp)
	ld	s5, 8(sp)
	ld	s6, 0(sp)
	.cfi_restore ra
	.cfi_restore s0
	.cfi_restore s1
	.cfi_restore s2
	.cfi_restore s3
	.cfi_restore s4
	.cfi_restore s5
	.cfi_restore s6
	addi	sp, sp, 64
	.cfi_def_cfa_offset 0
	ret
.LBB4_14:
	.cfi_restore_state
	lbu	a2, 0(s3)
	lbu	a3, 1(s3)
	lbu	a4, 2(s3)
	lb	a5, 3(s3)
	lbu	a6, -4(a1)
	lbu	a7, -3(a1)
	lbu	t0, -2(a1)
	lb	a1, -1(a1)
	sb	a2, 0(s5)
	sb	a3, 1(s5)
	sb	a4, 2(s5)
	sb	a5, 3(s5)
	sb	a6, -4(a0)
	sb	a7, -3(a0)
	sb	t0, -2(a0)
	sb	a1, -1(a0)
	bgtz	s4, .LBB4_12
	j	.LBB4_13
.Lfunc_end4:
	.size	"std::collections::list::List::_realloc(::List[$0]&,::Int),T=[typevalue<#kgen.instref<\"std::builtin::simd::SIMD,dtype=si8,size=1\">>, scalar<si8>]", .Lfunc_end4-"std::collections::list::List::_realloc(::List[$0]&,::Int),T=[typevalue<#kgen.instref<\"std::builtin::simd::SIMD,dtype=si8,size=1\">>, scalar<si8>]"
	.cfi_endproc

	.p2align	2
	.type	"std::io::io::_flush(::FileDescriptor)",@function
"std::io::io::_flush(::FileDescriptor)":
	.cfi_startproc
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sd	ra, 8(sp)
	sd	s0, 0(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	call	dup
.Lpcrel_hi0:
	auipc	a1, %pcrel_hi(static_string_0d78baac08237ddb)
	addi	a1, a1, %pcrel_lo(.Lpcrel_hi0)
	call	fdopen
	mv	s0, a0
	call	fflush
	mv	a0, s0
	ld	ra, 8(sp)
	ld	s0, 0(sp)
	.cfi_restore ra
	.cfi_restore s0
	addi	sp, sp, 16
	.cfi_def_cfa_offset 0
	tail	fclose
.Lfunc_end5:
	.size	"std::io::io::_flush(::FileDescriptor)", .Lfunc_end5-"std::io::io::_flush(::FileDescriptor)"
	.cfi_endproc

	.p2align	2
	.type	"std::io::io::print[*::Writable](*$0,sep:::StringSlice[::Bool(False), StaticConstantOrigin, *?],end:::StringSlice[::Bool(False), StaticConstantOrigin, *?],flush:::Bool,file:::FileDescriptor$),Ts=[[typevalue<#kgen.instref<\"std::builtin::simd::SIMD,dtype=si32,size=1\">>, scalar<si32>]]",@function
"std::io::io::print[*::Writable](*$0,sep:::StringSlice[::Bool(False), StaticConstantOrigin, *?],end:::StringSlice[::Bool(False), StaticConstantOrigin, *?],flush:::Bool,file:::FileDescriptor$),Ts=[[typevalue<#kgen.instref<\"std::builtin::simd::SIMD,dtype=si32,size=1\">>, scalar<si32>]]":
	.cfi_startproc
	addi	sp, sp, -2032
	.cfi_def_cfa_offset 2032
	sd	ra, 2024(sp)
	sd	s0, 2016(sp)
	sd	s1, 2008(sp)
	sd	s2, 2000(sp)
	sd	s3, 1992(sp)
	sd	s4, 1984(sp)
	sd	s5, 1976(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	.cfi_offset s1, -24
	.cfi_offset s2, -32
	.cfi_offset s3, -40
	.cfi_offset s4, -48
	.cfi_offset s5, -56
	addi	sp, sp, -2048
	addi	sp, sp, -112
	.cfi_def_cfa_offset 4192
	.cfi_remember_state
	mv	s0, a3
	mv	s1, a2
	mv	s2, a1
	lui	s3, 1
	addi	s5, sp, 24
	sd	a4, 16(sp)
	addi	a1, sp, 16
	add	s5, s5, s3
	sd	zero, 0(s5)
	sd	a1, 8(s5)
	addi	a1, sp, 24
	call	"std::builtin::simd::SIMD::write_to[::Writer](::SIMD[$0, $1],$2&),dtype=si32,size=1,writer.T`2x=[typevalue<#kgen.instref<\"std::format::_utils::_WriteBufferStack,origin._mlir_origin`={  },origin={  },W=[typevalue<#kgen.instref<\\1B\\22std::io::file_descriptor::FileDescriptor\\22>>, index],stack_buffer_bytes=4096\">>, struct<(struct<(array<4096, scalar<ui8>>) memoryOnly>, index, pointer<index>) memoryOnly>]"
	addi	a0, s3, 1
	blt	s1, a0, .LBB6_3
	ld	a0, 8(s5)
	ld	a2, 0(s5)
	ld	a0, 0(a0)
	addi	a1, sp, 24
	call	write
	ld	a0, 8(s5)
	sd	zero, 0(s5)
	ld	a0, 0(a0)
	mv	a1, s2
	mv	a2, s1
	call	write
	ld	a2, 0(s5)
	ld	a0, 8(s5)
	ld	a0, 0(a0)
	addi	a1, sp, 24
	call	write
	andi	s0, s0, 1
	bnez	s0, .LBB6_18
.LBB6_2:
	addi	sp, sp, 2032
	addi	sp, sp, 128
	.cfi_def_cfa_offset 2032
	ld	ra, 2024(sp)
	ld	s0, 2016(sp)
	ld	s1, 2008(sp)
	ld	s2, 2000(sp)
	ld	s3, 1992(sp)
	ld	s4, 1984(sp)
	ld	s5, 1976(sp)
	.cfi_restore ra
	.cfi_restore s0
	.cfi_restore s1
	.cfi_restore s2
	.cfi_restore s3
	.cfi_restore s4
	.cfi_restore s5
	addi	sp, sp, 2032
	.cfi_def_cfa_offset 0
	ret
.LBB6_3:
	.cfi_restore_state
	ld	a2, 0(s5)
	add	a1, a2, s1
	blt	a1, a0, .LBB6_5
	ld	a0, 8(s5)
	ld	a0, 0(a0)
	addi	a1, sp, 24
	call	write
	li	a2, 0
	sd	zero, 0(s5)
.LBB6_5:
	add	a1, s2, s1
	addi	s3, sp, 24
	add	s3, s3, a2
	li	a2, 4
	add	a0, s3, s1
	blt	a2, s1, .LBB6_9
	beqz	s1, .LBB6_17
	lbu	a2, 0(s2)
	lbu	a3, -1(a1)
	sb	a2, 0(s3)
	li	a2, 3
	sb	a3, -1(a0)
	blt	s1, a2, .LBB6_17
	lbu	a2, 1(s2)
	lbu	a1, -2(a1)
	sb	a2, 1(s3)
	sb	a1, -2(a0)
	j	.LBB6_17
.LBB6_9:
	li	a2, 16
	blt	a2, s1, .LBB6_12
	li	a2, 8
	blt	s1, a2, .LBB6_16
	lbu	a2, 0(s2)
	lbu	a3, 1(s2)
	lbu	a4, 2(s2)
	lbu	a5, 3(s2)
	lbu	a6, 4(s2)
	lbu	a7, 5(s2)
	lbu	t0, 6(s2)
	lbu	t1, 7(s2)
	lbu	t2, -8(a1)
	lbu	t3, -7(a1)
	lbu	t4, -6(a1)
	lbu	t5, -5(a1)
	sb	a6, 4(s3)
	sb	a7, 5(s3)
	sb	t0, 6(s3)
	sb	t1, 7(s3)
	lbu	a6, -4(a1)
	lbu	a7, -3(a1)
	lbu	t0, -2(a1)
	lbu	a1, -1(a1)
	sb	a2, 0(s3)
	sb	a3, 1(s3)
	sb	a4, 2(s3)
	sb	a5, 3(s3)
	sb	a6, -4(a0)
	sb	a7, -3(a0)
	sb	t0, -2(a0)
	sb	a1, -1(a0)
	sb	t2, -8(a0)
	sb	t3, -7(a0)
	sb	t4, -6(a0)
	sb	t5, -5(a0)
	j	.LBB6_17
.LBB6_12:
	li	a0, -63
	srli	a0, a0, 1
	and	s4, s1, a0
	beqz	s4, .LBB6_14
	mv	a0, s3
	mv	a1, s2
	mv	a2, s4
	call	memcpy
.LBB6_14:
	beq	s4, s1, .LBB6_17
	add	a0, s3, s4
	add	a1, s2, s4
	andi	a2, s1, 31
	call	memcpy
	j	.LBB6_17
.LBB6_16:
	lbu	a2, 0(s2)
	lbu	a3, 1(s2)
	lbu	a4, 2(s2)
	lb	a5, 3(s2)
	lbu	a6, -4(a1)
	lbu	a7, -3(a1)
	lbu	t0, -2(a1)
	lb	a1, -1(a1)
	sb	a2, 0(s3)
	sb	a3, 1(s3)
	sb	a4, 2(s3)
	sb	a5, 3(s3)
	sb	a6, -4(a0)
	sb	a7, -3(a0)
	sb	t0, -2(a0)
	sb	a1, -1(a0)
.LBB6_17:
	ld	a2, 0(s5)
	add	a2, a2, s1
	sd	a2, 0(s5)
	ld	a0, 8(s5)
	ld	a0, 0(a0)
	addi	a1, sp, 24
	call	write
	andi	s0, s0, 1
	beqz	s0, .LBB6_2
.LBB6_18:
	ld	a0, 16(sp)
	addi	sp, sp, 2032
	addi	sp, sp, 128
	.cfi_def_cfa_offset 2032
	ld	ra, 2024(sp)
	ld	s0, 2016(sp)
	ld	s1, 2008(sp)
	ld	s2, 2000(sp)
	ld	s3, 1992(sp)
	ld	s4, 1984(sp)
	ld	s5, 1976(sp)
	.cfi_restore ra
	.cfi_restore s0
	.cfi_restore s1
	.cfi_restore s2
	.cfi_restore s3
	.cfi_restore s4
	.cfi_restore s5
	addi	sp, sp, 2032
	.cfi_def_cfa_offset 0
	tail	"std::io::io::_flush(::FileDescriptor)"
.Lfunc_end6:
	.size	"std::io::io::print[*::Writable](*$0,sep:::StringSlice[::Bool(False), StaticConstantOrigin, *?],end:::StringSlice[::Bool(False), StaticConstantOrigin, *?],flush:::Bool,file:::FileDescriptor$),Ts=[[typevalue<#kgen.instref<\"std::builtin::simd::SIMD,dtype=si32,size=1\">>, scalar<si32>]]", .Lfunc_end6-"std::io::io::print[*::Writable](*$0,sep:::StringSlice[::Bool(False), StaticConstantOrigin, *?],end:::StringSlice[::Bool(False), StaticConstantOrigin, *?],flush:::Bool,file:::FileDescriptor$),Ts=[[typevalue<#kgen.instref<\"std::builtin::simd::SIMD,dtype=si32,size=1\">>, scalar<si32>]]"
	.cfi_endproc

	.type	static_string_bbe01a6a523daf15,@object
	.section	.rodata,"a",@progbits
	.p2align	4, 0x0
static_string_bbe01a6a523daf15:
	.asciz	"\n"
	.size	static_string_bbe01a6a523daf15, 2

	.type	static_string_a61c3395ab9379d9,@object
	.p2align	4, 0x0
static_string_a61c3395ab9379d9:
	.asciz	"Runtime"
	.size	static_string_a61c3395ab9379d9, 8

	.type	static_string_978d8d34847e5196,@object
	.p2align	4, 0x0
static_string_978d8d34847e5196:
	.asciz	"0123456789abcdefghijklmnopqrstuvwxyz"
	.size	static_string_978d8d34847e5196, 37

	.type	static_string_0d78baac08237ddb,@object
	.p2align	4, 0x0
static_string_0d78baac08237ddb:
	.asciz	"a"
	.size	static_string_0d78baac08237ddb, 2

	.section	".note.GNU-stack","",@progbits
