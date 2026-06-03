	.attribute	4, 16
	.attribute	5, "rv64i2p1"
	.file	"hello.mojo"
	.text
	.globl	main
	.p2align	2
	.type	main,@function
main:
.Lmain$local:
	.type	.Lmain$local,@function
	.cfi_startproc
	addi	sp, sp, -48
	.cfi_def_cfa_offset 48
	sd	ra, 40(sp)
	sd	s0, 32(sp)
	sd	s1, 24(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	.cfi_offset s1, -24
	mv	s0, a1
	mv	s1, a0
	call	KGEN_CompilerRT_AsyncRT_GetCurrentRuntime
	bnez	a0, .LBB0_2
.Lpcrel_hi1:
	auipc	a0, %got_pcrel_hi("std::builtin::_startup::__wrap_and_execute_main[def() -> None](::SIMD[::DType(int32), ::Int(1)],!kgen.pointer<pointer<scalar<ui8>>>),main_func=\"hello::main()\"_closure_0")
.Lpcrel_hi2:
	auipc	a1, %got_pcrel_hi("std::builtin::_startup::__wrap_and_execute_main[def() -> None](::SIMD[::DType(int32), ::Int(1)],!kgen.pointer<pointer<scalar<ui8>>>),main_func=\"hello::main()\"_closure_1")
	ld	a2, %pcrel_lo(.Lpcrel_hi1)(a0)
	ld	a3, %pcrel_lo(.Lpcrel_hi2)(a1)
.Lpcrel_hi0:
	auipc	a0, %pcrel_hi(static_string_a61c3395ab9379d9)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi0)
	li	a1, 7
	call	KGEN_CompilerRT_GetOrCreateGlobal
.LBB0_2:
	mv	a0, s1
	mv	a1, s0
	call	KGEN_CompilerRT_SetArgV
	call	KGEN_CompilerRT_PrintStackTraceOnFault
	li	a0, 12
.Lpcrel_hi3:
	auipc	a1, %pcrel_hi(static_string_e8597dc2a433cb0a)
	li	s1, 1
	addi	a1, a1, %pcrel_lo(.Lpcrel_hi3)
	slli	a2, s1, 61
	sd	a1, 0(sp)
	sd	a0, 8(sp)
	sd	a2, 16(sp)
.Lpcrel_hi4:
	auipc	a1, %pcrel_hi(static_string_bbe01a6a523daf15)
	mv	a0, sp
	li	a2, 1
	addi	a1, a1, %pcrel_lo(.Lpcrel_hi4)
	li	a4, 1
	li	a3, 0
	call	"std::io::io::print[*::Writable](*$0,sep:::StringSlice[::Bool(False), StaticConstantOrigin, *?],end:::StringSlice[::Bool(False), StaticConstantOrigin, *?],flush:::Bool,file:::FileDescriptor$),Ts=[[typevalue<#kgen.instref<\"std::collections::string::string::String\">>, struct<(pointer<none>, index, index) memoryOnly>]]"
	lbu	a0, 23(sp)
	andi	a0, a0, 64
	beqz	a0, .LBB0_5
	ld	s0, 0(sp)
	addi	s0, s0, -8
	li	a1, 1
	li	a2, 3
	mv	a0, s0
	call	__atomic_fetch_sub_8
	bne	a0, s1, .LBB0_5
	fence	r, rw
	mv	a0, s0
	call	KGEN_CompilerRT_AlignedFree
.LBB0_5:
	call	KGEN_CompilerRT_DestroyGlobals
	li	a0, 0
	ld	ra, 40(sp)
	ld	s0, 32(sp)
	ld	s1, 24(sp)
	.cfi_restore ra
	.cfi_restore s0
	.cfi_restore s1
	addi	sp, sp, 48
	.cfi_def_cfa_offset 0
	ret
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.size	.Lmain$local, .Lfunc_end0-main
	.cfi_endproc

	.p2align	2
	.type	"std::format::_utils::_WriteBufferStack::write_string[::Bool,LITOrigin[$4._mlir_value],::Origin[$4, $5]](::_WriteBufferStack[$0, $1, $2, $3]&,::StringSlice[$4, $5, $6]),W=[typevalue<#kgen.instref<\"std::io::file_descriptor::FileDescriptor\">>, index],stack_buffer_bytes=4096,string.mut`2x1=0",@function
"std::format::_utils::_WriteBufferStack::write_string[::Bool,LITOrigin[$4._mlir_value],::Origin[$4, $5]](::_WriteBufferStack[$0, $1, $2, $3]&,::StringSlice[$4, $5, $6]),W=[typevalue<#kgen.instref<\"std::io::file_descriptor::FileDescriptor\">>, index],stack_buffer_bytes=4096,string.mut`2x1=0":
	.cfi_startproc
	addi	sp, sp, -48
	.cfi_def_cfa_offset 48
	sd	ra, 40(sp)
	sd	s0, 32(sp)
	sd	s1, 24(sp)
	sd	s2, 16(sp)
	sd	s3, 8(sp)
	sd	s4, 0(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	.cfi_offset s1, -24
	.cfi_offset s2, -32
	.cfi_offset s3, -40
	.cfi_offset s4, -48
	.cfi_remember_state
	mv	s0, a2
	mv	s1, a1
	mv	s2, a0
	lui	s4, 1
	addi	a0, s4, 1
	add	s4, s2, s4
	blt	a2, a0, .LBB1_2
	ld	a0, 8(s4)
	ld	a2, 0(s4)
	ld	a0, 0(a0)
	mv	a1, s2
	call	write
	ld	a0, 8(s4)
	sd	zero, 0(s4)
	ld	a0, 0(a0)
	mv	a1, s1
	mv	a2, s0
	ld	ra, 40(sp)
	ld	s0, 32(sp)
	ld	s1, 24(sp)
	ld	s2, 16(sp)
	ld	s3, 8(sp)
	ld	s4, 0(sp)
	.cfi_restore ra
	.cfi_restore s0
	.cfi_restore s1
	.cfi_restore s2
	.cfi_restore s3
	.cfi_restore s4
	addi	sp, sp, 48
	.cfi_def_cfa_offset 0
	tail	write
.LBB1_2:
	.cfi_restore_state
	ld	a2, 0(s4)
	add	a1, a2, s0
	blt	a1, a0, .LBB1_4
	ld	a0, 8(s4)
	ld	a0, 0(a0)
	mv	a1, s2
	call	write
	li	a2, 0
	sd	zero, 0(s4)
.LBB1_4:
	add	a1, s1, s0
	add	s2, s2, a2
	li	a2, 4
	add	a0, s2, s0
	blt	a2, s0, .LBB1_8
	beqz	s0, .LBB1_16
	lbu	a2, 0(s1)
	lbu	a3, -1(a1)
	sb	a2, 0(s2)
	li	a2, 3
	sb	a3, -1(a0)
	blt	s0, a2, .LBB1_16
	lbu	a2, 1(s1)
	lbu	a1, -2(a1)
	sb	a2, 1(s2)
	sb	a1, -2(a0)
	j	.LBB1_16
.LBB1_8:
	li	a2, 16
	blt	a2, s0, .LBB1_11
	li	a2, 8
	blt	s0, a2, .LBB1_15
	lbu	a2, 0(s1)
	lbu	a3, 1(s1)
	lbu	a4, 2(s1)
	lbu	a5, 3(s1)
	lbu	a6, 4(s1)
	lbu	a7, 5(s1)
	lbu	t0, 6(s1)
	lbu	t1, 7(s1)
	lbu	t2, -8(a1)
	lbu	t3, -7(a1)
	lbu	t4, -6(a1)
	lbu	t5, -5(a1)
	sb	a6, 4(s2)
	sb	a7, 5(s2)
	sb	t0, 6(s2)
	sb	t1, 7(s2)
	lbu	a6, -4(a1)
	lbu	a7, -3(a1)
	lbu	t0, -2(a1)
	lbu	a1, -1(a1)
	sb	a2, 0(s2)
	sb	a3, 1(s2)
	sb	a4, 2(s2)
	sb	a5, 3(s2)
	sb	a6, -4(a0)
	sb	a7, -3(a0)
	sb	t0, -2(a0)
	sb	a1, -1(a0)
	sb	t2, -8(a0)
	sb	t3, -7(a0)
	sb	t4, -6(a0)
	sb	t5, -5(a0)
	j	.LBB1_16
.LBB1_11:
	li	a0, -63
	srli	a0, a0, 1
	and	s3, s0, a0
	beqz	s3, .LBB1_13
	mv	a0, s2
	mv	a1, s1
	mv	a2, s3
	call	memcpy
.LBB1_13:
	beq	s3, s0, .LBB1_16
	add	a0, s2, s3
	add	a1, s1, s3
	andi	a2, s0, 31
	call	memcpy
	j	.LBB1_16
.LBB1_15:
	lbu	a2, 0(s1)
	lbu	a3, 1(s1)
	lbu	a4, 2(s1)
	lb	a5, 3(s1)
	lbu	a6, -4(a1)
	lbu	a7, -3(a1)
	lbu	t0, -2(a1)
	lb	a1, -1(a1)
	sb	a2, 0(s2)
	sb	a3, 1(s2)
	sb	a4, 2(s2)
	sb	a5, 3(s2)
	sb	a6, -4(a0)
	sb	a7, -3(a0)
	sb	t0, -2(a0)
	sb	a1, -1(a0)
.LBB1_16:
	ld	a0, 0(s4)
	add	a0, a0, s0
	sd	a0, 0(s4)
	ld	ra, 40(sp)
	ld	s0, 32(sp)
	ld	s1, 24(sp)
	ld	s2, 16(sp)
	ld	s3, 8(sp)
	ld	s4, 0(sp)
	.cfi_restore ra
	.cfi_restore s0
	.cfi_restore s1
	.cfi_restore s2
	.cfi_restore s3
	.cfi_restore s4
	addi	sp, sp, 48
	.cfi_def_cfa_offset 0
	ret
.Lfunc_end1:
	.size	"std::format::_utils::_WriteBufferStack::write_string[::Bool,LITOrigin[$4._mlir_value],::Origin[$4, $5]](::_WriteBufferStack[$0, $1, $2, $3]&,::StringSlice[$4, $5, $6]),W=[typevalue<#kgen.instref<\"std::io::file_descriptor::FileDescriptor\">>, index],stack_buffer_bytes=4096,string.mut`2x1=0", .Lfunc_end1-"std::format::_utils::_WriteBufferStack::write_string[::Bool,LITOrigin[$4._mlir_value],::Origin[$4, $5]](::_WriteBufferStack[$0, $1, $2, $3]&,::StringSlice[$4, $5, $6]),W=[typevalue<#kgen.instref<\"std::io::file_descriptor::FileDescriptor\">>, index],stack_buffer_bytes=4096,string.mut`2x1=0"
	.cfi_endproc

	.p2align	2
	.type	"std::builtin::_startup::__wrap_and_execute_main[def() -> None](::SIMD[::DType(int32), ::Int(1)],!kgen.pointer<pointer<scalar<ui8>>>),main_func=\"hello::main()\"_closure_0",@function
"std::builtin::_startup::__wrap_and_execute_main[def() -> None](::SIMD[::DType(int32), ::Int(1)],!kgen.pointer<pointer<scalar<ui8>>>),main_func=\"hello::main()\"_closure_0":
	.cfi_startproc
	li	a0, 0
	tail	KGEN_CompilerRT_AsyncRT_CreateRuntime
.Lfunc_end2:
	.size	"std::builtin::_startup::__wrap_and_execute_main[def() -> None](::SIMD[::DType(int32), ::Int(1)],!kgen.pointer<pointer<scalar<ui8>>>),main_func=\"hello::main()\"_closure_0", .Lfunc_end2-"std::builtin::_startup::__wrap_and_execute_main[def() -> None](::SIMD[::DType(int32), ::Int(1)],!kgen.pointer<pointer<scalar<ui8>>>),main_func=\"hello::main()\"_closure_0"
	.cfi_endproc

	.p2align	2
	.type	"std::builtin::_startup::__wrap_and_execute_main[def() -> None](::SIMD[::DType(int32), ::Int(1)],!kgen.pointer<pointer<scalar<ui8>>>),main_func=\"hello::main()\"_closure_1",@function
"std::builtin::_startup::__wrap_and_execute_main[def() -> None](::SIMD[::DType(int32), ::Int(1)],!kgen.pointer<pointer<scalar<ui8>>>),main_func=\"hello::main()\"_closure_1":
	.cfi_startproc
	tail	KGEN_CompilerRT_AsyncRT_DestroyRuntime
.Lfunc_end3:
	.size	"std::builtin::_startup::__wrap_and_execute_main[def() -> None](::SIMD[::DType(int32), ::Int(1)],!kgen.pointer<pointer<scalar<ui8>>>),main_func=\"hello::main()\"_closure_1", .Lfunc_end3-"std::builtin::_startup::__wrap_and_execute_main[def() -> None](::SIMD[::DType(int32), ::Int(1)],!kgen.pointer<pointer<scalar<ui8>>>),main_func=\"hello::main()\"_closure_1"
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
.Lfunc_end4:
	.size	"std::io::io::_flush(::FileDescriptor)", .Lfunc_end4-"std::io::io::_flush(::FileDescriptor)"
	.cfi_endproc

	.p2align	2
	.type	"std::io::io::print[*::Writable](*$0,sep:::StringSlice[::Bool(False), StaticConstantOrigin, *?],end:::StringSlice[::Bool(False), StaticConstantOrigin, *?],flush:::Bool,file:::FileDescriptor$),Ts=[[typevalue<#kgen.instref<\"std::collections::string::string::String\">>, struct<(pointer<none>, index, index) memoryOnly>]]",@function
"std::io::io::print[*::Writable](*$0,sep:::StringSlice[::Bool(False), StaticConstantOrigin, *?],end:::StringSlice[::Bool(False), StaticConstantOrigin, *?],flush:::Bool,file:::FileDescriptor$),Ts=[[typevalue<#kgen.instref<\"std::collections::string::string::String\">>, struct<(pointer<none>, index, index) memoryOnly>]]":
	.cfi_startproc
	addi	sp, sp, -2032
	.cfi_def_cfa_offset 2032
	sd	ra, 2024(sp)
	sd	s0, 2016(sp)
	sd	s1, 2008(sp)
	sd	s2, 2000(sp)
	sd	s3, 1992(sp)
	.cfi_offset ra, -8
	.cfi_offset s0, -16
	.cfi_offset s1, -24
	.cfi_offset s2, -32
	.cfi_offset s3, -40
	addi	sp, sp, -2048
	addi	sp, sp, -96
	.cfi_def_cfa_offset 4176
	.cfi_remember_state
	mv	s0, a3
	mv	s1, a2
	mv	s2, a1
	mv	a1, a0
	lui	s3, 1
	addi	a0, sp, 24
	add	s3, a0, s3
	ld	a0, 16(a1)
	sd	a4, 16(sp)
	addi	a2, sp, 16
	sd	zero, 0(s3)
	sd	a2, 8(s3)
	bltz	a0, .LBB5_2
	ld	a0, 0(a1)
	ld	a2, 8(a1)
	mv	a1, a0
	j	.LBB5_3
.LBB5_2:
	slli	a0, a0, 3
	srli	a2, a0, 59
.LBB5_3:
	addi	a0, sp, 24
	call	"std::format::_utils::_WriteBufferStack::write_string[::Bool,LITOrigin[$4._mlir_value],::Origin[$4, $5]](::_WriteBufferStack[$0, $1, $2, $3]&,::StringSlice[$4, $5, $6]),W=[typevalue<#kgen.instref<\"std::io::file_descriptor::FileDescriptor\">>, index],stack_buffer_bytes=4096,string.mut`2x1=0"
	addi	a0, sp, 24
	mv	a1, s2
	mv	a2, s1
	call	"std::format::_utils::_WriteBufferStack::write_string[::Bool,LITOrigin[$4._mlir_value],::Origin[$4, $5]](::_WriteBufferStack[$0, $1, $2, $3]&,::StringSlice[$4, $5, $6]),W=[typevalue<#kgen.instref<\"std::io::file_descriptor::FileDescriptor\">>, index],stack_buffer_bytes=4096,string.mut`2x1=0"
	ld	a0, 8(s3)
	ld	a2, 0(s3)
	ld	a0, 0(a0)
	addi	a1, sp, 24
	call	write
	andi	s0, s0, 1
	beqz	s0, .LBB5_5
	ld	a0, 16(sp)
	addi	sp, sp, 2032
	addi	sp, sp, 112
	.cfi_def_cfa_offset 2032
	ld	ra, 2024(sp)
	ld	s0, 2016(sp)
	ld	s1, 2008(sp)
	ld	s2, 2000(sp)
	ld	s3, 1992(sp)
	.cfi_restore ra
	.cfi_restore s0
	.cfi_restore s1
	.cfi_restore s2
	.cfi_restore s3
	addi	sp, sp, 2032
	.cfi_def_cfa_offset 0
	tail	"std::io::io::_flush(::FileDescriptor)"
.LBB5_5:
	.cfi_restore_state
	addi	sp, sp, 2032
	addi	sp, sp, 112
	.cfi_def_cfa_offset 2032
	ld	ra, 2024(sp)
	ld	s0, 2016(sp)
	ld	s1, 2008(sp)
	ld	s2, 2000(sp)
	ld	s3, 1992(sp)
	.cfi_restore ra
	.cfi_restore s0
	.cfi_restore s1
	.cfi_restore s2
	.cfi_restore s3
	addi	sp, sp, 2032
	.cfi_def_cfa_offset 0
	ret
.Lfunc_end5:
	.size	"std::io::io::print[*::Writable](*$0,sep:::StringSlice[::Bool(False), StaticConstantOrigin, *?],end:::StringSlice[::Bool(False), StaticConstantOrigin, *?],flush:::Bool,file:::FileDescriptor$),Ts=[[typevalue<#kgen.instref<\"std::collections::string::string::String\">>, struct<(pointer<none>, index, index) memoryOnly>]]", .Lfunc_end5-"std::io::io::print[*::Writable](*$0,sep:::StringSlice[::Bool(False), StaticConstantOrigin, *?],end:::StringSlice[::Bool(False), StaticConstantOrigin, *?],flush:::Bool,file:::FileDescriptor$),Ts=[[typevalue<#kgen.instref<\"std::collections::string::string::String\">>, struct<(pointer<none>, index, index) memoryOnly>]]"
	.cfi_endproc

	.type	static_string_a61c3395ab9379d9,@object
	.section	.rodata,"a",@progbits
	.p2align	4, 0x0
static_string_a61c3395ab9379d9:
	.asciz	"Runtime"
	.size	static_string_a61c3395ab9379d9, 8

	.type	static_string_e8597dc2a433cb0a,@object
	.p2align	4, 0x0
static_string_e8597dc2a433cb0a:
	.asciz	"Hello, Mojo!"
	.size	static_string_e8597dc2a433cb0a, 13

	.type	static_string_bbe01a6a523daf15,@object
	.p2align	4, 0x0
static_string_bbe01a6a523daf15:
	.asciz	"\n"
	.size	static_string_bbe01a6a523daf15, 2

	.type	static_string_0d78baac08237ddb,@object
	.p2align	4, 0x0
static_string_0d78baac08237ddb:
	.asciz	"a"
	.size	static_string_0d78baac08237ddb, 2

	.section	".note.GNU-stack","",@progbits
