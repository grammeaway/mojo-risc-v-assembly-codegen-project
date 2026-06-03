	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_v1p0_zicsr2p0_zifencei2p0_zmmul1p0_zaamo1p0_zalrsc1p0_zfh1p0_zfhmin1p0_zca1p0_zcd1p0_zba1p0_zbb1p0_zve32f1p0_zve32x1p0_zve64d1p0_zve64f1p0_zve64x1p0_zvfh1p0_zvfhmin1p0_zvl128b1p0_zvl256b1p0_zvl32b1p0_zvl512b1p0_zvl64b1p0"
	.file	"dot_int8_simd.mojo"
	.text
	.p2align	1
	.type	main_closure_0,@function
main_closure_0:
	.cfi_startproc
	li	a0, 0
	tail	KGEN_CompilerRT_AsyncRT_CreateRuntime
.Lfunc_end0:
	.size	main_closure_0, .Lfunc_end0-main_closure_0
	.cfi_endproc

	.p2align	1
	.type	main_closure_1,@function
main_closure_1:
	.cfi_startproc
	tail	KGEN_CompilerRT_AsyncRT_DestroyRuntime
.Lfunc_end1:
	.size	main_closure_1, .Lfunc_end1-main_closure_1
	.cfi_endproc

	.globl	main
	.p2align	1
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
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	.cfi_offset s1, -24
	.cfi_offset s2, -32
	.cfi_offset s3, -40
	.cfi_offset s4, -48
	.cfi_offset s5, -56
	.cfi_offset s6, -64
	csrr	a2, vlenb
	sh1add	a2, a2, a2
	sub	sp, sp, a2
	.cfi_escape 0x0f, 0x0e, 0x72, 0x00, 0x11, 0x80, 0x01, 0x22, 0x11, 0x03, 0x92, 0xa2, 0x38, 0x00, 0x1e, 0x22
	mv	s0, a1
	mv	s1, a0
	call	KGEN_CompilerRT_AsyncRT_GetCurrentRuntime
	bnez	a0, .LBB2_2
.Lpcrel_hi1:
	auipc	a1, %got_pcrel_hi(main_closure_0)
.Lpcrel_hi2:
	auipc	a3, %got_pcrel_hi(main_closure_1)
.Lpcrel_hi0:
	auipc	a0, %pcrel_hi(static_string_a61c3395ab9379d9)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi0)
	ld	a2, %pcrel_lo(.Lpcrel_hi1)(a1)
	li	a1, 7
	ld	a3, %pcrel_lo(.Lpcrel_hi2)(a3)
	call	KGEN_CompilerRT_GetOrCreateGlobal
.LBB2_2:
	mv	a0, s1
	mv	a1, s0
	call	KGEN_CompilerRT_SetArgV
	call	KGEN_CompilerRT_PrintStackTraceOnFault
	addi	a0, sp, 40
	li	a1, 1
	li	a4, 32
	li	a2, 0
	li	a3, 0
	li	s0, 32
	call	"std::collections::list::List::_realloc(::List[$0]&,::Int),T=[typevalue<#kgen.instref<\"std::builtin::simd::SIMD,dtype=si8,size=1\">>, scalar<si8>]"
	ld	s4, 40(sp)
	li	s5, 31
	ld	s2, 56(sp)
	ld	a1, 48(sp)
	blt	s5, a1, .LBB2_4
	add	a0, s4, a1
	sub	a2, s0, a1
	li	a1, 1
	call	memset
.LBB2_4:
	li	a2, 0
	li	a3, 0
	addi	a0, sp, 16
	li	a1, 1
	li	a4, 32
	li	s0, 1
	li	s6, 32
	call	"std::collections::list::List::_realloc(::List[$0]&,::Int),T=[typevalue<#kgen.instref<\"std::builtin::simd::SIMD,dtype=si8,size=1\">>, scalar<si8>]"
	ld	s1, 16(sp)
	ld	s3, 32(sp)
	ld	a1, 24(sp)
	blt	s5, a1, .LBB2_6
	add	a0, s1, a1
	sub	a2, s6, a1
	li	a1, 2
	call	memset
.LBB2_6:
	csrr	a0, vlenb
	vsetivli	zero, 16, e32, m1, ta, ma
	vle8.v	v8, (s4)
	vmv.v.i	v11, 0
	add	a0, a0, sp
	addi	a0, a0, 64
	vs1r.v	v8, (a0)
	addi	a0, sp, 64
	vle8.v	v8, (s1)
	vs1r.v	v8, (a0)
	li	a0, 0
.LBB2_7:
	add	a1, s4, a0
	add	a0, a0, s1
	vsetvli	zero, zero, e16, mf2, ta, ma
	vle8.v	v8, (a1)
	andi	a1, s0, 1
	vle8.v	v9, (a0)
	li	a0, 16
	li	s0, 0
	vsext.vf2	v10, v8
	vsext.vf2	v8, v9
	vwmacc.vv	v11, v8, v10
	bnez	a1, .LBB2_7
	csrr	a0, vlenb
	sh1add	a0, a0, sp
	addi	a0, a0, 64
	vs1r.v	v11, (a0)
	blez	s2, .LBB2_10
	mv	a0, s4
	call	KGEN_CompilerRT_AlignedFree
	csrr	a0, vlenb
	sh1add	a0, a0, sp
	addi	a0, a0, 64
	vl1r.v	v11, (a0)
.LBB2_10:
	blez	s3, .LBB2_12
	mv	a0, s1
	call	KGEN_CompilerRT_AlignedFree
	csrr	a0, vlenb
	sh1add	a0, a0, sp
	addi	a0, a0, 64
	vl1r.v	v11, (a0)
.LBB2_12:
	vsetivli	zero, 8, e32, m1, ta, ma
	vslidedown.vi	v8, v11, 8
	vsetivli	zero, 8, e32, mf2, ta, ma
	csrr	a0, vlenb
.Lpcrel_hi3:
	auipc	s1, %pcrel_hi(static_string_bbe01a6a523daf15)
	li	a2, 1
	addi	s1, s1, %pcrel_lo(.Lpcrel_hi3)
	li	a4, 1
	vadd.vv	v8, v11, v8
	vsetivli	zero, 4, e32, mf2, ta, ma
	add	a0, a0, sp
	mv	a1, s1
	addi	a0, a0, 64
	li	a3, 0
	vslidedown.vi	v9, v8, 4
	vl1r.v	v11, (a0)
	addi	a0, sp, 64
	vadd.vv	v8, v8, v9
	vsetivli	zero, 2, e32, mf2, ta, ma
	vl1r.v	v12, (a0)
	vslidedown.vi	v9, v8, 2
	vadd.vv	v8, v8, v9
	vmv.s.x	v9, zero
	vredsum.vs	v8, v8, v9
	vsetivli	zero, 16, e16, mf2, ta, ma
	vsext.vf2	v10, v11
	vsext.vf2	v11, v12
	vwmul.vv	v12, v11, v10
	vsetivli	zero, 8, e32, m1, ta, ma
	vslidedown.vi	v10, v12, 8
	vsetivli	zero, 8, e32, mf2, ta, ma
	vadd.vv	v10, v12, v10
	vsetivli	zero, 4, e32, mf2, ta, ma
	vslidedown.vi	v11, v10, 4
	vadd.vv	v10, v10, v11
	vsetivli	zero, 2, e32, mf2, ta, ma
	vmv.x.s	s0, v8
	vslidedown.vi	v11, v10, 2
	vadd.vv	v10, v10, v11
	vredsum.vs	v9, v10, v9
	vmv.x.s	a0, v9
	call	"std::io::io::print[*::Writable](*$0,sep:::StringSlice[::Bool(False), StaticConstantOrigin, *?],end:::StringSlice[::Bool(False), StaticConstantOrigin, *?],flush:::Bool,file:::FileDescriptor$),Ts=[[typevalue<#kgen.instref<\"std::builtin::simd::SIMD,dtype=si32,size=1\">>, scalar<si32>]]"
	li	a2, 1
	li	a4, 1
	mv	a0, s0
	mv	a1, s1
	li	a3, 0
	call	"std::io::io::print[*::Writable](*$0,sep:::StringSlice[::Bool(False), StaticConstantOrigin, *?],end:::StringSlice[::Bool(False), StaticConstantOrigin, *?],flush:::Bool,file:::FileDescriptor$),Ts=[[typevalue<#kgen.instref<\"std::builtin::simd::SIMD,dtype=si32,size=1\">>, scalar<si32>]]"
	call	KGEN_CompilerRT_DestroyGlobals
	csrr	a1, vlenb
	li	a0, 0
	sh1add	a1, a1, a1
	add	sp, sp, a1
	.cfi_def_cfa sp, 128
	ld	ra, 120(sp)
	ld	s0, 112(sp)
	ld	s1, 104(sp)
	ld	s2, 96(sp)
	ld	s3, 88(sp)
	ld	s4, 80(sp)
	ld	s5, 72(sp)
	ld	s6, 64(sp)
	.cfi_restore ra
	.cfi_restore s0
	.cfi_restore s1
	.cfi_restore s2
	.cfi_restore s3
	.cfi_restore s4
	.cfi_restore s5
	.cfi_restore s6
	addi	sp, sp, 128
	.cfi_def_cfa_offset 0
	ret
.Lfunc_end2:
	.size	main, .Lfunc_end2-main
	.size	.Lmain$local, .Lfunc_end2-main
	.cfi_endproc

	.p2align	1
	.type	"std::builtin::simd::SIMD::write_to[::Writer](::SIMD[$0, $1],$2&),dtype=si32,size=1,writer.T`2x=[typevalue<#kgen.instref<\"std::format::_utils::_WriteBufferStack,origin._mlir_origin`={  },origin={  },W=[typevalue<#kgen.instref<\\1B\\22std::io::file_descriptor::FileDescriptor\\22>>, index],stack_buffer_bytes=4096\">>, struct<(struct<(array<4096, scalar<ui8>>) memoryOnly>, index, pointer<index>) memoryOnly>]",@function
"std::builtin::simd::SIMD::write_to[::Writer](::SIMD[$0, $1],$2&),dtype=si32,size=1,writer.T`2x=[typevalue<#kgen.instref<\"std::format::_utils::_WriteBufferStack,origin._mlir_origin`={  },origin={  },W=[typevalue<#kgen.instref<\\1B\\22std::io::file_descriptor::FileDescriptor\\22>>, index],stack_buffer_bytes=4096\">>, struct<(struct<(array<4096, scalar<ui8>>) memoryOnly>, index, pointer<index>) memoryOnly>]":
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
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	.cfi_offset s1, -24
	.cfi_offset s2, -32
	.cfi_offset s3, -40
	.cfi_offset s4, -48
	.cfi_offset s5, -56
	mv	s0, a0
	lui	a0, 1
	mv	s3, a1
	add	s5, a1, a0
	sext.w	s1, s0
	bltz	s1, .LBB3_3
	ld	a2, 0(s5)
	bge	a0, a2, .LBB3_9
	ld	a0, 8(s5)
	mv	a1, s3
	ld	a0, 0(a0)
	call	write
	li	a2, 0
	sd	zero, 0(s5)
	bnez	s1, .LBB3_10
	j	.LBB3_25
.LBB3_3:
	ld	a2, 0(s5)
	addi	a0, a0, 1
	addi	a1, a2, 1
	blt	a1, a0, .LBB3_5
	ld	a0, 8(s5)
	mv	a1, s3
	ld	a0, 0(a0)
	call	write
	li	a2, 0
	sd	zero, 0(s5)
.LBB3_5:
	add	a2, a2, s3
	li	a0, 45
	sb	a0, 0(a2)
	lui	a0, 1
	ld	a2, 0(s5)
	addi	a0, a0, 1
	addi	a2, a2, 1
	sd	a2, 0(s5)
	blt	a2, a0, .LBB3_7
	ld	a0, 8(s5)
	mv	a1, s3
	ld	a0, 0(a0)
	call	write
	li	a2, 0
	sd	zero, 0(s5)
.LBB3_7:
	lui	a3, 419430
.Lpcrel_hi1:
	auipc	a4, %pcrel_hi(static_string_978d8d34847e5196)
	lui	a5, 629146
	li	a0, 63
	addi	a6, sp, 7
	addi	t0, a3, 1639
	addi	t1, a4, %pcrel_lo(.Lpcrel_hi1)
	addi	a5, a5, -1639
	li	a7, -10
	sb	zero, 71(sp)
.LBB3_8:
	sext.w	a1, s0
	mul	s1, a1, t0
	srli	a3, s1, 63
	srai	s1, s1, 34
	add	a3, a3, s1
	srliw	s1, s0, 31
	sh2add	a3, a3, a3
	slli	a3, a3, 1
	mul	a4, a1, a5
	subw	s0, s0, a3
	xori	a3, s1, 1
	snez	s1, s0
	and	s1, s1, a3
	beqz	s1, .LBB3_35
	addiw	s0, s0, -10
.LBB3_35:
	srli	s1, a4, 63
	srai	a4, a4, 34
	add	a4, a4, s1
	bgez	s0, .LBB3_37
	negw	s0, s0
.LBB3_37:
	add	s0, s0, t1
	mulw	s1, a4, a7
	xor	a1, a1, s1
	add	s1, a6, a0
	snez	a1, a1
	addi	a0, a0, -1
	and	a1, a1, a3
	lbu	a3, 0(s0)
	sub	s0, a1, a4
	sb	a3, 0(s1)
	bnez	s0, .LBB3_8
	j	.LBB3_12
.LBB3_9:
	beqz	s1, .LBB3_23
.LBB3_10:
	lui	a3, 838861
.Lpcrel_hi0:
	auipc	a4, %pcrel_hi(static_string_978d8d34847e5196)
	addi	a3, a3, -819
	li	a0, 63
	addi	a6, sp, 7
	slli	t0, a3, 32
	addi	a4, a4, %pcrel_lo(.Lpcrel_hi0)
	li	a7, 10
	sb	zero, 71(sp)
.LBB3_11:
	slli	s1, s0, 32
	sext.w	a5, s0
	add	a3, a6, a0
	addi	a0, a0, -1
	mulhu	s1, s1, t0
	srli	s1, s1, 35
	sh2add	a1, s1, s1
	slli	a1, a1, 1
	subw	a1, s0, a1
	mv	s0, s1
	add	a1, a1, a4
	lbu	a1, 0(a1)
	sb	a1, 0(a3)
	bgeu	a5, a7, .LBB3_11
.LBB3_12:
	addi	a1, a0, 1
	addi	a0, a0, 66
	li	a3, 65
	max	a0, a0, zero
	min	s0, a1, a3
	addi	s2, sp, 7
	li	s1, 64
	bgez	a1, .LBB3_39
	mv	s0, a0
.LBB3_39:
	add	s2, s2, s0
	lui	a0, 1
	sub	s1, s1, s0
	addi	a0, a0, 1
	blt	s1, a0, .LBB3_14
	ld	a0, 8(s5)
	mv	a1, s3
	ld	a0, 0(a0)
	call	write
	ld	a0, 8(s5)
	mv	a1, s2
	sd	zero, 0(s5)
	mv	a2, s1
	ld	a0, 0(a0)
	call	write
	j	.LBB3_33
.LBB3_14:
	add	a1, a2, s1
	blt	a1, a0, .LBB3_16
	ld	a0, 8(s5)
	mv	a1, s3
	ld	a0, 0(a0)
	call	write
	li	a2, 0
	sd	zero, 0(s5)
.LBB3_16:
	add	s4, s3, a2
	li	a0, 4
	blt	a0, s1, .LBB3_20
	li	a0, 64
	beq	s0, a0, .LBB3_31
	li	a0, 63
	lbu	a1, 0(s2)
	sub	a0, a0, s0
	lbu	a2, 70(sp)
	add	a0, a0, s4
	sb	a1, 0(s4)
	li	a1, 3
	sb	a2, 0(a0)
	blt	s1, a1, .LBB3_31
	li	a0, 62
	lbu	a1, 1(s2)
	sub	a0, a0, s0
	lbu	a2, 69(sp)
	add	a0, a0, s4
	sb	a1, 1(s4)
	sb	a2, 0(a0)
	j	.LBB3_31
.LBB3_20:
	li	a0, 16
	blt	a0, s1, .LBB3_26
	add	a0, s4, s1
	li	a1, 8
	blt	s1, a1, .LBB3_30
	lbu	a6, 0(s2)
	lbu	a7, 1(s2)
	lbu	a3, 2(s2)
	lbu	a4, 3(s2)
	lbu	a5, 4(s2)
	lbu	s0, 5(s2)
	lbu	a1, 6(s2)
	lbu	a2, 7(s2)
	sb	a5, 4(s4)
	sb	s0, 5(s4)
	sb	a1, 6(s4)
	sb	a2, 7(s4)
	sb	a6, 0(s4)
	sb	a7, 1(s4)
	sb	a3, 2(s4)
	sb	a4, 3(s4)
	lbu	a6, 63(sp)
	lbu	a7, 64(sp)
	lbu	a3, 65(sp)
	lbu	a4, 66(sp)
	lbu	a5, 67(sp)
	lbu	s0, 68(sp)
	lbu	a1, 69(sp)
	lbu	a2, 70(sp)
	sb	a5, -4(a0)
	sb	s0, -3(a0)
	sb	a1, -2(a0)
	sb	a2, -1(a0)
	sb	a6, -8(a0)
	sb	a7, -7(a0)
	sb	a3, -6(a0)
	sb	a4, -5(a0)
	j	.LBB3_31
.LBB3_23:
	bne	a2, a0, .LBB3_25
	ld	a0, 8(s5)
	mv	a1, s3
	ld	a0, 0(a0)
	call	write
	li	a2, 0
	sd	zero, 0(s5)
.LBB3_25:
	add	a2, a2, s3
	li	a0, 48
	sb	a0, 0(a2)
	ld	a0, 0(s5)
	addi	a0, a0, 1
	j	.LBB3_32
.LBB3_26:
	li	a0, -63
	srli	a0, a0, 1
	and	s3, s1, a0
	beqz	s3, .LBB3_28
	mv	a0, s4
	mv	a1, s2
	mv	a2, s3
	call	memcpy
.LBB3_28:
	beq	s3, s1, .LBB3_31
	add	a0, s4, s3
	add	a1, s2, s3
	andi	a2, s1, 31
	call	memcpy
	j	.LBB3_31
.LBB3_30:
	lbu	a1, 0(s2)
	lbu	a2, 1(s2)
	lbu	a3, 2(s2)
	lb	a4, 3(s2)
	sb	a1, 0(s4)
	sb	a2, 1(s4)
	sb	a3, 2(s4)
	sb	a4, 3(s4)
	lbu	a1, 67(sp)
	lbu	a2, 68(sp)
	lbu	a3, 69(sp)
	lb	a4, 70(sp)
	sb	a1, -4(a0)
	sb	a2, -3(a0)
	sb	a3, -2(a0)
	sb	a4, -1(a0)
.LBB3_31:
	ld	a0, 0(s5)
	add	a0, a0, s1
.LBB3_32:
	sd	a0, 0(s5)
.LBB3_33:
	ld	ra, 120(sp)
	ld	s0, 112(sp)
	ld	s1, 104(sp)
	ld	s2, 96(sp)
	ld	s3, 88(sp)
	ld	s4, 80(sp)
	ld	s5, 72(sp)
	.cfi_restore ra
	.cfi_restore s0
	.cfi_restore s1
	.cfi_restore s2
	.cfi_restore s3
	.cfi_restore s4
	.cfi_restore s5
	addi	sp, sp, 128
	.cfi_def_cfa_offset 0
	ret
.Lfunc_end3:
	.size	"std::builtin::simd::SIMD::write_to[::Writer](::SIMD[$0, $1],$2&),dtype=si32,size=1,writer.T`2x=[typevalue<#kgen.instref<\"std::format::_utils::_WriteBufferStack,origin._mlir_origin`={  },origin={  },W=[typevalue<#kgen.instref<\\1B\\22std::io::file_descriptor::FileDescriptor\\22>>, index],stack_buffer_bytes=4096\">>, struct<(struct<(array<4096, scalar<ui8>>) memoryOnly>, index, pointer<index>) memoryOnly>]", .Lfunc_end3-"std::builtin::simd::SIMD::write_to[::Writer](::SIMD[$0, $1],$2&),dtype=si32,size=1,writer.T`2x=[typevalue<#kgen.instref<\"std::format::_utils::_WriteBufferStack,origin._mlir_origin`={  },origin={  },W=[typevalue<#kgen.instref<\\1B\\22std::io::file_descriptor::FileDescriptor\\22>>, index],stack_buffer_bytes=4096\">>, struct<(struct<(array<4096, scalar<ui8>>) memoryOnly>, index, pointer<index>) memoryOnly>]"
	.cfi_endproc

	.p2align	1
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
	mv	s5, a1
	mv	s3, a0
	li	a0, 1
	mv	a1, a4
	mv	s2, a4
	mv	s4, a3
	mv	s1, a2
	call	KGEN_CompilerRT_AlignedAlloc
	mv	s0, a0
	add	a1, s5, s1
	add	a0, a0, s1
	li	a2, 4
	blt	a2, s1, .LBB4_4
	beqz	s1, .LBB4_11
	lbu	a2, -1(a1)
	lbu	a3, 0(s5)
	sb	a3, 0(s0)
	li	a3, 3
	sb	a2, -1(a0)
	blt	s1, a3, .LBB4_11
	lbu	a1, -2(a1)
	lbu	a2, 1(s5)
	sb	a2, 1(s0)
	sb	a1, -2(a0)
	bgtz	s4, .LBB4_12
	j	.LBB4_13
.LBB4_4:
	li	a2, 16
	bltu	a2, s1, .LBB4_7
	li	a2, 8
	blt	s1, a2, .LBB4_14
	lbu	a7, 1(s5)
	lbu	t0, 2(s5)
	lbu	a2, 4(s5)
	lbu	a3, 5(s5)
	lbu	a4, 6(s5)
	lbu	a5, 7(s5)
	lbu	a6, 0(s5)
	sb	a2, 4(s0)
	sb	a3, 5(s0)
	sb	a4, 6(s0)
	lbu	a2, -4(a1)
	lbu	a3, -3(a1)
	lbu	a4, -2(a1)
	lbu	t1, 3(s5)
	sb	a5, 7(s0)
	sb	a6, 0(s0)
	sb	a7, 1(s0)
	sb	t0, 2(s0)
	lbu	a6, -8(a1)
	lbu	a7, -7(a1)
	lbu	t0, -6(a1)
	lbu	a5, -5(a1)
	lbu	a1, -1(a1)
	sb	t1, 3(s0)
	sb	a2, -4(a0)
	sb	a3, -3(a0)
	sb	a4, -2(a0)
	sb	a1, -1(a0)
	sb	a6, -8(a0)
	sb	a7, -7(a0)
	sb	t0, -6(a0)
	sb	a5, -5(a0)
	bgtz	s4, .LBB4_12
	j	.LBB4_13
.LBB4_7:
	li	a0, -63
	srli	a0, a0, 1
	and	s6, s1, a0
	beqz	s6, .LBB4_9
	mv	a0, s0
	mv	a1, s5
	mv	a2, s6
	call	memcpy
.LBB4_9:
	beq	s6, s1, .LBB4_11
	add	a0, s0, s6
	add	a1, s5, s6
	andi	a2, s1, 31
	call	memcpy
.LBB4_11:
	blez	s4, .LBB4_13
.LBB4_12:
	mv	a0, s5
	call	KGEN_CompilerRT_AlignedFree
.LBB4_13:
	sd	s0, 0(s3)
	sd	s1, 8(s3)
	sd	s2, 16(s3)
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
	lbu	a2, 0(s5)
	lbu	a3, 1(s5)
	lbu	a4, 2(s5)
	lb	a5, 3(s5)
	sb	a2, 0(s0)
	sb	a3, 1(s0)
	sb	a4, 2(s0)
	lbu	a2, -4(a1)
	lbu	a3, -3(a1)
	lbu	a4, -2(a1)
	lb	a1, -1(a1)
	sb	a5, 3(s0)
	sb	a2, -4(a0)
	sb	a3, -3(a0)
	sb	a4, -2(a0)
	sb	a1, -1(a0)
	bgtz	s4, .LBB4_12
	j	.LBB4_13
.Lfunc_end4:
	.size	"std::collections::list::List::_realloc(::List[$0]&,::Int),T=[typevalue<#kgen.instref<\"std::builtin::simd::SIMD,dtype=si8,size=1\">>, scalar<si8>]", .Lfunc_end4-"std::collections::list::List::_realloc(::List[$0]&,::Int),T=[typevalue<#kgen.instref<\"std::builtin::simd::SIMD,dtype=si8,size=1\">>, scalar<si8>]"
	.cfi_endproc

	.p2align	1
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

	.p2align	1
	.type	"std::io::io::print[*::Writable](*$0,sep:::StringSlice[::Bool(False), StaticConstantOrigin, *?],end:::StringSlice[::Bool(False), StaticConstantOrigin, *?],flush:::Bool,file:::FileDescriptor$),Ts=[[typevalue<#kgen.instref<\"std::builtin::simd::SIMD,dtype=si32,size=1\">>, scalar<si32>]]",@function
"std::io::io::print[*::Writable](*$0,sep:::StringSlice[::Bool(False), StaticConstantOrigin, *?],end:::StringSlice[::Bool(False), StaticConstantOrigin, *?],flush:::Bool,file:::FileDescriptor$),Ts=[[typevalue<#kgen.instref<\"std::builtin::simd::SIMD,dtype=si32,size=1\">>, scalar<si32>]]":
	.cfi_startproc
	addi	sp, sp, -496
	.cfi_def_cfa_offset 496
	sd	ra, 488(sp)
	sd	s0, 480(sp)
	sd	s1, 472(sp)
	sd	s2, 464(sp)
	sd	s3, 456(sp)
	sd	s4, 448(sp)
	sd	s5, 440(sp)
	sd	s6, 432(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	.cfi_offset s1, -24
	.cfi_offset s2, -32
	.cfi_offset s3, -40
	.cfi_offset s4, -48
	.cfi_offset s5, -56
	.cfi_offset s6, -64
	addi	sp, sp, -2048
	addi	sp, sp, -1648
	.cfi_def_cfa_offset 4192
	.cfi_remember_state
	lui	s1, 1
	addi	s0, sp, 16
	add	s0, s0, s1
	mv	s5, a1
	addi	a1, sp, 8
	mv	s2, a3
	mv	s6, a2
	sd	a4, 8(sp)
	sd	zero, 0(s0)
	sd	a1, 8(s0)
	addi	a1, sp, 16
	call	"std::builtin::simd::SIMD::write_to[::Writer](::SIMD[$0, $1],$2&),dtype=si32,size=1,writer.T`2x=[typevalue<#kgen.instref<\"std::format::_utils::_WriteBufferStack,origin._mlir_origin`={  },origin={  },W=[typevalue<#kgen.instref<\\1B\\22std::io::file_descriptor::FileDescriptor\\22>>, index],stack_buffer_bytes=4096\">>, struct<(struct<(array<4096, scalar<ui8>>) memoryOnly>, index, pointer<index>) memoryOnly>]"
	addi	a0, s1, 1
	blt	s6, a0, .LBB6_3
	ld	a0, 8(s0)
	addi	a1, sp, 16
	ld	a2, 0(s0)
	ld	a0, 0(a0)
	call	write
	ld	a0, 8(s0)
	mv	a1, s5
	sd	zero, 0(s0)
	mv	a2, s6
	ld	a0, 0(a0)
	call	write
	ld	a2, 0(s0)
	ld	a0, 8(s0)
	addi	a1, sp, 16
	ld	a0, 0(a0)
	call	write
	andi	a0, s2, 1
	bnez	a0, .LBB6_18
.LBB6_2:
	addi	sp, sp, 2032
	addi	sp, sp, 1664
	.cfi_def_cfa_offset 496
	ld	ra, 488(sp)
	ld	s0, 480(sp)
	ld	s1, 472(sp)
	ld	s2, 464(sp)
	ld	s3, 456(sp)
	ld	s4, 448(sp)
	ld	s5, 440(sp)
	ld	s6, 432(sp)
	.cfi_restore ra
	.cfi_restore s0
	.cfi_restore s1
	.cfi_restore s2
	.cfi_restore s3
	.cfi_restore s4
	.cfi_restore s5
	.cfi_restore s6
	addi	sp, sp, 496
	.cfi_def_cfa_offset 0
	ret
.LBB6_3:
	.cfi_restore_state
	ld	a2, 0(s0)
	add	a1, a2, s6
	blt	a1, a0, .LBB6_5
	ld	a0, 8(s0)
	addi	a1, sp, 16
	ld	a0, 0(a0)
	call	write
	li	a2, 0
	sd	zero, 0(s0)
.LBB6_5:
	addi	s3, sp, 16
	add	a1, s5, s6
	add	s3, s3, a2
	li	a2, 4
	add	a0, s3, s6
	blt	a2, s6, .LBB6_9
	beqz	s6, .LBB6_17
	lbu	a2, 0(s5)
	lbu	a3, -1(a1)
	sb	a2, 0(s3)
	li	a2, 3
	sb	a3, -1(a0)
	blt	s6, a2, .LBB6_17
	lbu	a2, 1(s5)
	lbu	a1, -2(a1)
	sb	a2, 1(s3)
	sb	a1, -2(a0)
	j	.LBB6_17
.LBB6_9:
	li	a2, 16
	blt	a2, s6, .LBB6_12
	li	a2, 8
	blt	s6, a2, .LBB6_16
	lbu	a7, 1(s5)
	lbu	a5, 3(s5)
	lbu	s1, 4(s5)
	lbu	a2, 5(s5)
	lbu	a3, 6(s5)
	lbu	a4, 7(s5)
	lbu	a6, 0(s5)
	sb	s1, 4(s3)
	sb	a2, 5(s3)
	sb	a3, 6(s3)
	lbu	s1, -4(a1)
	lbu	a2, -3(a1)
	lbu	a3, -2(a1)
	lbu	t0, 2(s5)
	sb	a4, 7(s3)
	sb	a6, 0(s3)
	sb	a7, 1(s3)
	sb	a5, 3(s3)
	lbu	a6, -8(a1)
	lbu	a7, -7(a1)
	lbu	a4, -6(a1)
	lbu	a5, -5(a1)
	lbu	a1, -1(a1)
	sb	t0, 2(s3)
	sb	s1, -4(a0)
	sb	a2, -3(a0)
	sb	a3, -2(a0)
	sb	a1, -1(a0)
	sb	a6, -8(a0)
	sb	a7, -7(a0)
	sb	a4, -6(a0)
	sb	a5, -5(a0)
	j	.LBB6_17
.LBB6_12:
	li	a0, -63
	srli	a0, a0, 1
	and	s4, s6, a0
	beqz	s4, .LBB6_14
	mv	a0, s3
	mv	a1, s5
	mv	a2, s4
	call	memcpy
.LBB6_14:
	beq	s4, s6, .LBB6_17
	add	a0, s3, s4
	add	a1, s5, s4
	andi	a2, s6, 31
	call	memcpy
	j	.LBB6_17
.LBB6_16:
	lbu	a2, 0(s5)
	lbu	a3, 1(s5)
	lbu	a4, 2(s5)
	lb	a5, 3(s5)
	sb	a2, 0(s3)
	sb	a3, 1(s3)
	sb	a4, 2(s3)
	lbu	a2, -4(a1)
	lbu	a3, -3(a1)
	lbu	a4, -2(a1)
	lb	a1, -1(a1)
	sb	a5, 3(s3)
	sb	a2, -4(a0)
	sb	a3, -3(a0)
	sb	a4, -2(a0)
	sb	a1, -1(a0)
.LBB6_17:
	ld	a2, 0(s0)
	add	a2, a2, s6
	sd	a2, 0(s0)
	ld	a0, 8(s0)
	addi	a1, sp, 16
	ld	a0, 0(a0)
	call	write
	andi	a0, s2, 1
	beqz	a0, .LBB6_2
.LBB6_18:
	ld	a0, 8(sp)
	addi	sp, sp, 2032
	addi	sp, sp, 1664
	.cfi_def_cfa_offset 496
	ld	ra, 488(sp)
	ld	s0, 480(sp)
	ld	s1, 472(sp)
	ld	s2, 464(sp)
	ld	s3, 456(sp)
	ld	s4, 448(sp)
	ld	s5, 440(sp)
	ld	s6, 432(sp)
	.cfi_restore ra
	.cfi_restore s0
	.cfi_restore s1
	.cfi_restore s2
	.cfi_restore s3
	.cfi_restore s4
	.cfi_restore s5
	.cfi_restore s6
	addi	sp, sp, 496
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
