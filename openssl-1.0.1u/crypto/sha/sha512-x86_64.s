.text	

.globl	sha512_block_data_order
.def	sha512_block_data_order;	.scl 2;	.type 32;	.endef
.p2align	4
sha512_block_data_order:
	movq	%rdi,8(%rsp)
	movq	%rsi,16(%rsp)
	movq	%rsp,%rax
.LSEH_begin_sha512_block_data_order:
	movq	%rcx,%rdi
	movq	%rdx,%rsi
	movq	%r8,%rdx
	movq	%r9,%rcx

	pushq	%rbx
	pushq	%rbp
	pushq	%r12
	pushq	%r13
	pushq	%r14
	pushq	%r15
	movq	%rsp,%r11
	shlq	$4,%rdx
	subq	$128+32,%rsp
	leaq	(%rsi,%rdx,8),%rdx
	andq	$-64,%rsp
	movq	%rdi,128+0(%rsp)
	movq	%rsi,128+8(%rsp)
	movq	%rdx,128+16(%rsp)
	movq	%r11,128+24(%rsp)
.Lprologue:

	leaq	K512(%rip),%rbp

	movq	0(%rdi),%rax
	movq	8(%rdi),%rbx
	movq	16(%rdi),%rcx
	movq	24(%rdi),%rdx
	movq	32(%rdi),%r8
	movq	40(%rdi),%r9
	movq	48(%rdi),%r10
	movq	56(%rdi),%r11
	jmp	.Lloop

.p2align	4
.Lloop:
	xorq	%rdi,%rdi
	movq	0(%rsi),%r12
	movq	%r8,%r13
	movq	%rax,%r14
	bswapq	%r12
	rorq	$23,%r13
	movq	%r9,%r15
	movq	%r12,0(%rsp)

	rorq	$5,%r14
	xorq	%r8,%r13
	xorq	%r10,%r15

	rorq	$4,%r13
	addq	%r11,%r12
	xorq	%rax,%r14

	addq	(%rbp,%rdi,8),%r12
	andq	%r8,%r15
	movq	%rbx,%r11

	rorq	$6,%r14
	xorq	%r8,%r13
	xorq	%r10,%r15

	xorq	%rcx,%r11
	xorq	%rax,%r14
	addq	%r15,%r12
	movq	%rbx,%r15

	rorq	$14,%r13
	andq	%rax,%r11
	andq	%rcx,%r15

	rorq	$28,%r14
	addq	%r13,%r12
	addq	%r15,%r11

	addq	%r12,%rdx
	addq	%r12,%r11
	leaq	1(%rdi),%rdi
	addq	%r14,%r11

	movq	8(%rsi),%r12
	movq	%rdx,%r13
	movq	%r11,%r14
	bswapq	%r12
	rorq	$23,%r13
	movq	%r8,%r15
	movq	%r12,8(%rsp)

	rorq	$5,%r14
	xorq	%rdx,%r13
	xorq	%r9,%r15

	rorq	$4,%r13
	addq	%r10,%r12
	xorq	%r11,%r14

	addq	(%rbp,%rdi,8),%r12
	andq	%rdx,%r15
	movq	%rax,%r10

	rorq	$6,%r14
	xorq	%rdx,%r13
	xorq	%r9,%r15

	xorq	%rbx,%r10
	xorq	%r11,%r14
	addq	%r15,%r12
	movq	%rax,%r15

	rorq	$14,%r13
	andq	%r11,%r10
	andq	%rbx,%r15

	rorq	$28,%r14
	addq	%r13,%r12
	addq	%r15,%r10

	addq	%r12,%rcx
	addq	%r12,%r10
	leaq	1(%rdi),%rdi
	addq	%r14,%r10

	movq	16(%rsi),%r12
	movq	%rcx,%r13
	movq	%r10,%r14
	bswapq	%r12
	rorq	$23,%r13
	movq	%rdx,%r15
	movq	%r12,16(%rsp)

	rorq	$5,%r14
	xorq	%rcx,%r13
	xorq	%r8,%r15

	rorq	$4,%r13
	addq	%r9,%r12
	xorq	%r10,%r14

	addq	(%rbp,%rdi,8),%r12
	andq	%rcx,%r15
	movq	%r11,%r9

	rorq	$6,%r14
	xorq	%rcx,%r13
	xorq	%r8,%r15

	xorq	%rax,%r9
	xorq	%r10,%r14
	addq	%r15,%r12
	movq	%r11,%r15

	rorq	$14,%r13
	andq	%r10,%r9
	andq	%rax,%r15

	rorq	$28,%r14
	addq	%r13,%r12
	addq	%r15,%r9

	addq	%r12,%rbx
	addq	%r12,%r9
	leaq	1(%rdi),%rdi
	addq	%r14,%r9

	movq	24(%rsi),%r12
	movq	%rbx,%r13
	movq	%r9,%r14
	bswapq	%r12
	rorq	$23,%r13
	movq	%rcx,%r15
	movq	%r12,24(%rsp)

	rorq	$5,%r14
	xorq	%rbx,%r13
	xorq	%rdx,%r15

	rorq	$4,%r13
	addq	%r8,%r12
	xorq	%r9,%r14

	addq	(%rbp,%rdi,8),%r12
	andq	%rbx,%r15
	movq	%r10,%r8

	rorq	$6,%r14
	xorq	%rbx,%r13
	xorq	%rdx,%r15

	xorq	%r11,%r8
	xorq	%r9,%r14
	addq	%r15,%r12
	movq	%r10,%r15

	rorq	$14,%r13
	andq	%r9,%r8
	andq	%r11,%r15

	rorq	$28,%r14
	addq	%r13,%r12
	addq	%r15,%r8

	addq	%r12,%rax
	addq	%r12,%r8
	leaq	1(%rdi),%rdi
	addq	%r14,%r8

	movq	32(%rsi),%r12
	movq	%rax,%r13
	movq	%r8,%r14
	bswapq	%r12
	rorq	$23,%r13
	movq	%rbx,%r15
	movq	%r12,32(%rsp)

	rorq	$5,%r14
	xorq	%rax,%r13
	xorq	%rcx,%r15

	rorq	$4,%r13
	addq	%rdx,%r12
	xorq	%r8,%r14

	addq	(%rbp,%rdi,8),%r12
	andq	%rax,%r15
	movq	%r9,%rdx

	rorq	$6,%r14
	xorq	%rax,%r13
	xorq	%rcx,%r15

	xorq	%r10,%rdx
	xorq	%r8,%r14
	addq	%r15,%r12
	movq	%r9,%r15

	rorq	$14,%r13
	andq	%r8,%rdx
	andq	%r10,%r15

	rorq	$28,%r14
	addq	%r13,%r12
	addq	%r15,%rdx

	addq	%r12,%r11
	addq	%r12,%rdx
	leaq	1(%rdi),%rdi
	addq	%r14,%rdx

	movq	40(%rsi),%r12
	movq	%r11,%r13
	movq	%rdx,%r14
	bswapq	%r12
	rorq	$23,%r13
	movq	%rax,%r15
	movq	%r12,40(%rsp)

	rorq	$5,%r14
	xorq	%r11,%r13
	xorq	%rbx,%r15

	rorq	$4,%r13
	addq	%rcx,%r12
	xorq	%rdx,%r14

	addq	(%rbp,%rdi,8),%r12
	andq	%r11,%r15
	movq	%r8,%rcx

	rorq	$6,%r14
	xorq	%r11,%r13
	xorq	%rbx,%r15

	xorq	%r9,%rcx
	xorq	%rdx,%r14
	addq	%r15,%r12
	movq	%r8,%r15

	rorq	$14,%r13
	andq	%rdx,%rcx
	andq	%r9,%r15

	rorq	$28,%r14
	addq	%r13,%r12
	addq	%r15,%rcx

	addq	%r12,%r10
	addq	%r12,%rcx
	leaq	1(%rdi),%rdi
	addq	%r14,%rcx

	movq	48(%rsi),%r12
	movq	%r10,%r13
	movq	%rcx,%r14
	bswapq	%r12
	rorq	$23,%r13
	movq	%r11,%r15
	movq	%r12,48(%rsp)

	rorq	$5,%r14
	xorq	%r10,%r13
	xorq	%rax,%r15

	rorq	$4,%r13
	addq	%rbx,%r12
	xorq	%rcx,%r14

	addq	(%rbp,%rdi,8),%r12
	andq	%r10,%r15
	movq	%rdx,%rbx

	rorq	$6,%r14
	xorq	%r10,%r13
	xorq	%rax,%r15

	xorq	%r8,%rbx
	xorq	%rcx,%r14
	addq	%r15,%r12
	movq	%rdx,%r15

	rorq	$14,%r13
	andq	%rcx,%rbx
	andq	%r8,%r15

	rorq	$28,%r14
	addq	%r13,%r12
	addq	%r15,%rbx

	addq	%r12,%r9
	addq	%r12,%rbx
	leaq	1(%rdi),%rdi
	addq	%r14,%rbx

	movq	56(%rsi),%r12
	movq	%r9,%r13
	movq	%rbx,%r14
	bswapq	%r12
	rorq	$23,%r13
	movq	%r10,%r15
	movq	%r12,56(%rsp)

	rorq	$5,%r14
	xorq	%r9,%r13
	xorq	%r11,%r15

	rorq	$4,%r13
	addq	%rax,%r12
	xorq	%rbx,%r14

	addq	(%rbp,%rdi,8),%r12
	andq	%r9,%r15
	movq	%rcx,%rax

	rorq	$6,%r14
	xorq	%r9,%r13
	xorq	%r11,%r15

	xorq	%rdx,%rax
	xorq	%rbx,%r14
	addq	%r15,%r12
	movq	%rcx,%r15

	rorq	$14,%r13
	andq	%rbx,%rax
	andq	%rdx,%r15

	rorq	$28,%r14
	addq	%r13,%r12
	addq	%r15,%rax

	addq	%r12,%r8
	addq	%r12,%rax
	leaq	1(%rdi),%rdi
	addq	%r14,%rax

	movq	64(%rsi),%r12
	movq	%r8,%r13
	movq	%rax,%r14
	bswapq	%r12
	rorq	$23,%r13
	movq	%r9,%r15
	movq	%r12,64(%rsp)

	rorq	$5,%r14
	xorq	%r8,%r13
	xorq	%r10,%r15

	rorq	$4,%r13
	addq	%r11,%r12
	xorq	%rax,%r14

	addq	(%rbp,%rdi,8),%r12
	andq	%r8,%r15
	movq	%rbx,%r11

	rorq	$6,%r14
	xorq	%r8,%r13
	xorq	%r10,%r15

	xorq	%rcx,%r11
	xorq	%rax,%r14
	addq	%r15,%r12
	movq	%rbx,%r15

	rorq	$14,%r13
	andq	%rax,%r11
	andq	%rcx,%r15

	rorq	$28,%r14
	addq	%r13,%r12
	addq	%r15,%r11

	addq	%r12,%rdx
	addq	%r12,%r11
	leaq	1(%rdi),%rdi
	addq	%r14,%r11

	movq	72(%rsi),%r12
	movq	%rdx,%r13
	movq	%r11,%r14
	bswapq	%r12
	rorq	$23,%r13
	movq	%r8,%r15
	movq	%r12,72(%rsp)

	rorq	$5,%r14
	xorq	%rdx,%r13
	xorq	%r9,%r15

	rorq	$4,%r13
	addq	%r10,%r12
	xorq	%r11,%r14

	addq	(%rbp,%rdi,8),%r12
	andq	%rdx,%r15
	movq	%rax,%r10

	rorq	$6,%r14
	xorq	%rdx,%r13
	xorq	%r9,%r15

	xorq	%rbx,%r10
	xorq	%r11,%r14
	addq	%r15,%r12
	movq	%rax,%r15

	rorq	$14,%r13
	andq	%r11,%r10
	andq	%rbx,%r15

	rorq	$28,%r14
	addq	%r13,%r12
	addq	%r15,%r10

	addq	%r12,%rcx
	addq	%r12,%r10
	leaq	1(%rdi),%rdi
	addq	%r14,%r10

	movq	80(%rsi),%r12
	movq	%rcx,%r13
	movq	%r10,%r14
	bswapq	%r12
	rorq	$23,%r13
	movq	%rdx,%r15
	movq	%r12,80(%rsp)

	rorq	$5,%r14
	xorq	%rcx,%r13
	xorq	%r8,%r15

	rorq	$4,%r13
	addq	%r9,%r12
	xorq	%r10,%r14

	addq	(%rbp,%rdi,8),%r12
	andq	%rcx,%r15
	movq	%r11,%r9

	rorq	$6,%r14
	xorq	%rcx,%r13
	xorq	%r8,%r15

	xorq	%rax,%r9
	xorq	%r10,%r14
	addq	%r15,%r12
	movq	%r11,%r15

	rorq	$14,%r13
	andq	%r10,%r9
	andq	%rax,%r15

	rorq	$28,%r14
	addq	%r13,%r12
	addq	%r15,%r9

	addq	%r12,%rbx
	addq	%r12,%r9
	leaq	1(%rdi),%rdi
	addq	%r14,%r9

	movq	88(%rsi),%r12
	movq	%rbx,%r13
	movq	%r9,%r14
	bswapq	%r12
	rorq	$23,%r13
	movq	%rcx,%r15
	movq	%r12,88(%rsp)

	rorq	$5,%r14
	xorq	%rbx,%r13
	xorq	%rdx,%r15

	rorq	$4,%r13
	addq	%r8,%r12
	xorq	%r9,%r14

	addq	(%rbp,%rdi,8),%r12
	andq	%rbx,%r15
	movq	%r10,%r8

	rorq	$6,%r14
	xorq	%rbx,%r13
	xorq	%rdx,%r15

	xorq	%r11,%r8
	xorq	%r9,%r14
	addq	%r15,%r12
	movq	%r10,%r15

	rorq	$14,%r13
	andq	%r9,%r8
	andq	%r11,%r15

	rorq	$28,%r14
	addq	%r13,%r12
	addq	%r15,%r8

	addq	%r12,%rax
	addq	%r12,%r8
	leaq	1(%rdi),%rdi
	addq	%r14,%r8

	movq	96(%rsi),%r12
	movq	%rax,%r13
	movq	%r8,%r14
	bswapq	%r12
	rorq	$23,%r13
	movq	%rbx,%r15
	movq	%r12,96(%rsp)

	rorq	$5,%r14
	xorq	%rax,%r13
	xorq	%rcx,%r15

	rorq	$4,%r13
	addq	%rdx,%r12
	xorq	%r8,%r14

	addq	(%rbp,%rdi,8),%r12
	andq	%rax,%r15
	movq	%r9,%rdx

	rorq	$6,%r14
	xorq	%rax,%r13
	xorq	%rcx,%r15

	xorq	%r10,%rdx
	xorq	%r8,%r14
	addq	%r15,%r12
	movq	%r9,%r15

	rorq	$14,%r13
	andq	%r8,%rdx
	andq	%r10,%r15

	rorq	$28,%r14
	addq	%r13,%r12
	addq	%r15,%rdx

	addq	%r12,%r11
	addq	%r12,%rdx
	leaq	1(%rdi),%rdi
	addq	%r14,%rdx

	movq	104(%rsi),%r12
	movq	%r11,%r13
	movq	%rdx,%r14
	bswapq	%r12
	rorq	$23,%r13
	movq	%rax,%r15
	movq	%r12,104(%rsp)

	rorq	$5,%r14
	xorq	%r11,%r13
	xorq	%rbx,%r15

	rorq	$4,%r13
	addq	%rcx,%r12
	xorq	%rdx,%r14

	addq	(%rbp,%rdi,8),%r12
	andq	%r11,%r15
	movq	%r8,%rcx

	rorq	$6,%r14
	xorq	%r11,%r13
	xorq	%rbx,%r15

	xorq	%r9,%rcx
	xorq	%rdx,%r14
	addq	%r15,%r12
	movq	%r8,%r15

	rorq	$14,%r13
	andq	%rdx,%rcx
	andq	%r9,%r15

	rorq	$28,%r14
	addq	%r13,%r12
	addq	%r15,%rcx

	addq	%r12,%r10
	addq	%r12,%rcx
	leaq	1(%rdi),%rdi
	addq	%r14,%rcx

	movq	112(%rsi),%r12
	movq	%r10,%r13
	movq	%rcx,%r14
	bswapq	%r12
	rorq	$23,%r13
	movq	%r11,%r15
	movq	%r12,112(%rsp)

	rorq	$5,%r14
	xorq	%r10,%r13
	xorq	%rax,%r15

	rorq	$4,%r13
	addq	%rbx,%r12
	xorq	%rcx,%r14

	addq	(%rbp,%rdi,8),%r12
	andq	%r10,%r15
	movq	%rdx,%rbx

	rorq	$6,%r14
	xorq	%r10,%r13
	xorq	%rax,%r15

	xorq	%r8,%rbx
	xorq	%rcx,%r14
	addq	%r15,%r12
	movq	%rdx,%r15

	rorq	$14,%r13
	andq	%rcx,%rbx
	andq	%r8,%r15

	rorq	$28,%r14
	addq	%r13,%r12
	addq	%r15,%rbx

	addq	%r12,%r9
	addq	%r12,%rbx
	leaq	1(%rdi),%rdi
	addq	%r14,%rbx

	movq	120(%rsi),%r12
	movq	%r9,%r13
	movq	%rbx,%r14
	bswapq	%r12
	rorq	$23,%r13
	movq	%r10,%r15
	movq	%r12,120(%rsp)

	rorq	$5,%r14
	xorq	%r9,%r13
	xorq	%r11,%r15

	rorq	$4,%r13
	addq	%rax,%r12
	xorq	%rbx,%r14

	addq	(%rbp,%rdi,8),%r12
	andq	%r9,%r15
	movq	%rcx,%rax

	rorq	$6,%r14
	xorq	%r9,%r13
	xorq	%r11,%r15

	xorq	%rdx,%rax
	xorq	%rbx,%r14
	addq	%r15,%r12
	movq	%rcx,%r15

	rorq	$14,%r13
	andq	%rbx,%rax
	andq	%rdx,%r15

	rorq	$28,%r14
	addq	%r13,%r12
	addq	%r15,%rax

	addq	%r12,%r8
	addq	%r12,%rax
	leaq	1(%rdi),%rdi
	addq	%r14,%rax

	jmp	.Lrounds_16_xx
.p2align	4
.Lrounds_16_xx:
	movq	8(%rsp),%r13
	movq	112(%rsp),%r14
	movq	%r13,%r12
	movq	%r14,%r15

	rorq	$7,%r12
	xorq	%r13,%r12
	shrq	$7,%r13

	rorq	$1,%r12
	xorq	%r12,%r13
	movq	72(%rsp),%r12

	rorq	$42,%r15
	xorq	%r14,%r15
	shrq	$6,%r14

	rorq	$19,%r15
	addq	%r13,%r12
	xorq	%r15,%r14

	addq	0(%rsp),%r12
	movq	%r8,%r13
	addq	%r14,%r12
	movq	%rax,%r14
	rorq	$23,%r13
	movq	%r9,%r15
	movq	%r12,0(%rsp)

	rorq	$5,%r14
	xorq	%r8,%r13
	xorq	%r10,%r15

	rorq	$4,%r13
	addq	%r11,%r12
	xorq	%rax,%r14

	addq	(%rbp,%rdi,8),%r12
	andq	%r8,%r15
	movq	%rbx,%r11

	rorq	$6,%r14
	xorq	%r8,%r13
	xorq	%r10,%r15

	xorq	%rcx,%r11
	xorq	%rax,%r14
	addq	%r15,%r12
	movq	%rbx,%r15

	rorq	$14,%r13
	andq	%rax,%r11
	andq	%rcx,%r15

	rorq	$28,%r14
	addq	%r13,%r12
	addq	%r15,%r11

	addq	%r12,%rdx
	addq	%r12,%r11
	leaq	1(%rdi),%rdi
	addq	%r14,%r11

	movq	16(%rsp),%r13
	movq	120(%rsp),%r14
	movq	%r13,%r12
	movq	%r14,%r15

	rorq	$7,%r12
	xorq	%r13,%r12
	shrq	$7,%r13

	rorq	$1,%r12
	xorq	%r12,%r13
	movq	80(%rsp),%r12

	rorq	$42,%r15
	xorq	%r14,%r15
	shrq	$6,%r14

	rorq	$19,%r15
	addq	%r13,%r12
	xorq	%r15,%r14

	addq	8(%rsp),%r12
	movq	%rdx,%r13
	addq	%r14,%r12
	movq	%r11,%r14
	rorq	$23,%r13
	movq	%r8,%r15
	movq	%r12,8(%rsp)

	rorq	$5,%r14
	xorq	%rdx,%r13
	xorq	%r9,%r15

	rorq	$4,%r13
	addq	%r10,%r12
	xorq	%r11,%r14

	addq	(%rbp,%rdi,8),%r12
	andq	%rdx,%r15
	movq	%rax,%r10

	rorq	$6,%r14
	xorq	%rdx,%r13
	xorq	%r9,%r15

	xorq	%rbx,%r10
	xorq	%r11,%r14
	addq	%r15,%r12
	movq	%rax,%r15

	rorq	$14,%r13
	andq	%r11,%r10
	andq	%rbx,%r15

	rorq	$28,%r14
	addq	%r13,%r12
	addq	%r15,%r10

	addq	%r12,%rcx
	addq	%r12,%r10
	leaq	1(%rdi),%rdi
	addq	%r14,%r10

	movq	24(%rsp),%r13
	movq	0(%rsp),%r14
	movq	%r13,%r12
	movq	%r14,%r15

	rorq	$7,%r12
	xorq	%r13,%r12
	shrq	$7,%r13

	rorq	$1,%r12
	xorq	%r12,%r13
	movq	88(%rsp),%r12

	rorq	$42,%r15
	xorq	%r14,%r15
	shrq	$6,%r14

	rorq	$19,%r15
	addq	%r13,%r12
	xorq	%r15,%r14

	addq	16(%rsp),%r12
	movq	%rcx,%r13
	addq	%r14,%r12
	movq	%r10,%r14
	rorq	$23,%r13
	movq	%rdx,%r15
	movq	%r12,16(%rsp)

	rorq	$5,%r14
	xorq	%rcx,%r13
	xorq	%r8,%r15

	rorq	$4,%r13
	addq	%r9,%r12
	xorq	%r10,%r14

	addq	(%rbp,%rdi,8),%r12
	andq	%rcx,%r15
	movq	%r11,%r9

	rorq	$6,%r14
	xorq	%rcx,%r13
	xorq	%r8,%r15

	xorq	%rax,%r9
	xorq	%r10,%r14
	addq	%r15,%r12
	movq	%r11,%r15

	rorq	$14,%r13
	andq	%r10,%r9
	andq	%rax,%r15

	rorq	$28,%r14
	addq	%r13,%r12
	addq	%r15,%r9

	addq	%r12,%rbx
	addq	%r12,%r9
	leaq	1(%rdi),%rdi
	addq	%r14,%r9

	movq	32(%rsp),%r13
	movq	8(%rsp),%r14
	movq	%r13,%r12
	movq	%r14,%r15

	rorq	$7,%r12
	xorq	%r13,%r12
	shrq	$7,%r13

	rorq	$1,%r12
	xorq	%r12,%r13
	movq	96(%rsp),%r12

	rorq	$42,%r15
	xorq	%r14,%r15
	shrq	$6,%r14

	rorq	$19,%r15
	addq	%r13,%r12
	xorq	%r15,%r14

	addq	24(%rsp),%r12
	movq	%rbx,%r13
	addq	%r14,%r12
	movq	%r9,%r14
	rorq	$23,%r13
	movq	%rcx,%r15
	movq	%r12,24(%rsp)

	rorq	$5,%r14
	xorq	%rbx,%r13
	xorq	%rdx,%r15

	rorq	$4,%r13
	addq	%r8,%r12
	xorq	%r9,%r14

	addq	(%rbp,%rdi,8),%r12
	andq	%rbx,%r15
	movq	%r10,%r8

	rorq	$6,%r14
	xorq	%rbx,%r13
	xorq	%rdx,%r15

	xorq	%r11,%r8
	xorq	%r9,%r14
	addq	%r15,%r12
	movq	%r10,%r15

	rorq	$14,%r13
	andq	%r9,%r8
	andq	%r11,%r15

	rorq	$28,%r14
	addq	%r13,%r12
	addq	%r15,%r8

	addq	%r12,%rax
	addq	%r12,%r8
	leaq	1(%rdi),%rdi
	addq	%r14,%r8

	movq	40(%rsp),%r13
	movq	16(%rsp),%r14
	movq	%r13,%r12
	movq	%r14,%r15

	rorq	$7,%r12
	xorq	%r13,%r12
	shrq	$7,%r13

	rorq	$1,%r12
	xorq	%r12,%r13
	movq	104(%rsp),%r12

	rorq	$42,%r15
	xorq	%r14,%r15
	shrq	$6,%r14

	rorq	$19,%r15
	addq	%r13,%r12
	xorq	%r15,%r14

	addq	32(%rsp),%r12
	movq	%rax,%r13
	addq	%r14,%r12
	movq	%r8,%r14
	rorq	$23,%r13
	movq	%rbx,%r15
	movq	%r12,32(%rsp)

	rorq	$5,%r14
	xorq	%rax,%r13
	xorq	%rcx,%r15

	rorq	$4,%r13
	addq	%rdx,%r12
	xorq	%r8,%r14

	addq	(%rbp,%rdi,8),%r12
	andq	%rax,%r15
	movq	%r9,%rdx

	rorq	$6,%r14
	xorq	%rax,%r13
	xorq	%rcx,%r15

	xorq	%r10,%rdx
	xorq	%r8,%r14
	addq	%r15,%r12
	movq	%r9,%r15

	rorq	$14,%r13
	andq	%r8,%rdx
	andq	%r10,%r15

	rorq	$28,%r14
	addq	%r13,%r12
	addq	%r15,%rdx

	addq	%r12,%r11
	addq	%r12,%rdx
	leaq	1(%rdi),%rdi
	addq	%r14,%rdx

	movq	48(%rsp),%r13
	movq	24(%rsp),%r14
	movq	%r13,%r12
	movq	%r14,%r15

	rorq	$7,%r12
	xorq	%r13,%r12
	shrq	$7,%r13

	rorq	$1,%r12
	xorq	%r12,%r13
	movq	112(%rsp),%r12

	rorq	$42,%r15
	xorq	%r14,%r15
	shrq	$6,%r14

	rorq	$19,%r15
	addq	%r13,%r12
	xorq	%r15,%r14

	addq	40(%rsp),%r12
	movq	%r11,%r13
	addq	%r14,%r12
	movq	%rdx,%r14
	rorq	$23,%r13
	movq	%rax,%r15
	movq	%r12,40(%rsp)

	rorq	$5,%r14
	xorq	%r11,%r13
	xorq	%rbx,%r15

	rorq	$4,%r13
	addq	%rcx,%r12
	xorq	%rdx,%r14

	addq	(%rbp,%rdi,8),%r12
	andq	%r11,%r15
	movq	%r8,%rcx

	rorq	$6,%r14
	xorq	%r11,%r13
	xorq	%rbx,%r15

	xorq	%r9,%rcx
	xorq	%rdx,%r14
	addq	%r15,%r12
	movq	%r8,%r15

	rorq	$14,%r13
	andq	%rdx,%rcx
	andq	%r9,%r15

	rorq	$28,%r14
	addq	%r13,%r12
	addq	%r15,%rcx

	addq	%r12,%r10
	addq	%r12,%rcx
	leaq	1(%rdi),%rdi
	addq	%r14,%rcx

	movq	56(%rsp),%r13
	movq	32(%rsp),%r14
	movq	%r13,%r12
	movq	%r14,%r15

	rorq	$7,%r12
	xorq	%r13,%r12
	shrq	$7,%r13

	rorq	$1,%r12
	xorq	%r12,%r13
	movq	120(%rsp),%r12

	rorq	$42,%r15
	xorq	%r14,%r15
	shrq	$6,%r14

	rorq	$19,%r15
	addq	%r13,%r12
	xorq	%r15,%r14

	addq	48(%rsp),%r12
	movq	%r10,%r13
	addq	%r14,%r12
	movq	%rcx,%r14
	rorq	$23,%r13
	movq	%r11,%r15
	movq	%r12,48(%rsp)

	rorq	$5,%r14
	xorq	%r10,%r13
	xorq	%rax,%r15

	rorq	$4,%r13
	addq	%rbx,%r12
	xorq	%rcx,%r14

	addq	(%rbp,%rdi,8),%r12
	andq	%r10,%r15
	movq	%rdx,%rbx

	rorq	$6,%r14
	xorq	%r10,%r13
	xorq	%rax,%r15

	xorq	%r8,%rbx
	xorq	%rcx,%r14
	addq	%r15,%r12
	movq	%rdx,%r15

	rorq	$14,%r13
	andq	%rcx,%rbx
	andq	%r8,%r15

	rorq	$28,%r14
	addq	%r13,%r12
	addq	%r15,%rbx

	addq	%r12,%r9
	addq	%r12,%rbx
	leaq	1(%rdi),%rdi
	addq	%r14,%rbx

	movq	64(%rsp),%r13
	movq	40(%rsp),%r14
	movq	%r13,%r12
	movq	%r14,%r15

	rorq	$7,%r12
	xorq	%r13,%r12
	shrq	$7,%r13

	rorq	$1,%r12
	xorq	%r12,%r13
	movq	0(%rsp),%r12

	rorq	$42,%r15
	xorq	%r14,%r15
	shrq	$6,%r14

	rorq	$19,%r15
	addq	%r13,%r12
	xorq	%r15,%r14

	addq	56(%rsp),%r12
	movq	%r9,%r13
	addq	%r14,%r12
	movq	%rbx,%r14
	rorq	$23,%r13
	movq	%r10,%r15
	movq	%r12,56(%rsp)

	rorq	$5,%r14
	xorq	%r9,%r13
	xorq	%r11,%r15

	rorq	$4,%r13
	addq	%rax,%r12
	xorq	%rbx,%r14

	addq	(%rbp,%rdi,8),%r12
	andq	%r9,%r15
	movq	%rcx,%rax

	rorq	$6,%r14
	xorq	%r9,%r13
	xorq	%r11,%r15

	xorq	%rdx,%rax
	xorq	%rbx,%r14
	addq	%r15,%r12
	movq	%rcx,%r15

	rorq	$14,%r13
	andq	%rbx,%rax
	andq	%rdx,%r15

	rorq	$28,%r14
	addq	%r13,%r12
	addq	%r15,%rax

	addq	%r12,%r8
	addq	%r12,%rax
	leaq	1(%rdi),%rdi
	addq	%r14,%rax

	movq	72(%rsp),%r13
	movq	48(%rsp),%r14
	movq	%r13,%r12
	movq	%r14,%r15

	rorq	$7,%r12
	xorq	%r13,%r12
	shrq	$7,%r13

	rorq	$1,%r12
	xorq	%r12,%r13
	movq	8(%rsp),%r12

	rorq	$42,%r15
	xorq	%r14,%r15
	shrq	$6,%r14

	rorq	$19,%r15
	addq	%r13,%r12
	xorq	%r15,%r14

	addq	64(%rsp),%r12
	movq	%r8,%r13
	addq	%r14,%r12
	movq	%rax,%r14
	rorq	$23,%r13
	movq	%r9,%r15
	movq	%r12,64(%rsp)

	rorq	$5,%r14
	xorq	%r8,%r13
	xorq	%r10,%r15

	rorq	$4,%r13
	addq	%r11,%r12
	xorq	%rax,%r14

	addq	(%rbp,%rdi,8),%r12
	andq	%r8,%r15
	movq	%rbx,%r11

	rorq	$6,%r14
	xorq	%r8,%r13
	xorq	%r10,%r15

	xorq	%rcx,%r11
	xorq	%rax,%r14
	addq	%r15,%r12
	movq	%rbx,%r15

	rorq	$14,%r13
	andq	%rax,%r11
	andq	%rcx,%r15

	rorq	$28,%r14
	addq	%r13,%r12
	addq	%r15,%r11

	addq	%r12,%rdx
	addq	%r12,%r11
	leaq	1(%rdi),%rdi
	addq	%r14,%r11

	movq	80(%rsp),%r13
	movq	56(%rsp),%r14
	movq	%r13,%r12
	movq	%r14,%r15

	rorq	$7,%r12
	xorq	%r13,%r12
	shrq	$7,%r13

	rorq	$1,%r12
	xorq	%r12,%r13
	movq	16(%rsp),%r12

	rorq	$42,%r15
	xorq	%r14,%r15
	shrq	$6,%r14

	rorq	$19,%r15
	addq	%r13,%r12
	xorq	%r15,%r14

	addq	72(%rsp),%r12
	movq	%rdx,%r13
	addq	%r14,%r12
	movq	%r11,%r14
	rorq	$23,%r13
	movq	%r8,%r15
	movq	%r12,72(%rsp)

	rorq	$5,%r14
	xorq	%rdx,%r13
	xorq	%r9,%r15

	rorq	$4,%r13
	addq	%r10,%r12
	xorq	%r11,%r14

	addq	(%rbp,%rdi,8),%r12
	andq	%rdx,%r15
	movq	%rax,%r10

	rorq	$6,%r14
	xorq	%rdx,%r13
	xorq	%r9,%r15

	xorq	%rbx,%r10
	xorq	%r11,%r14
	addq	%r15,%r12
	movq	%rax,%r15

	rorq	$14,%r13
	andq	%r11,%r10
	andq	%rbx,%r15

	rorq	$28,%r14
	addq	%r13,%r12
	addq	%r15,%r10

	addq	%r12,%rcx
	addq	%r12,%r10
	leaq	1(%rdi),%rdi
	addq	%r14,%r10

	movq	88(%rsp),%r13
	movq	64(%rsp),%r14
	movq	%r13,%r12
	movq	%r14,%r15

	rorq	$7,%r12
	xorq	%r13,%r12
	shrq	$7,%r13

	rorq	$1,%r12
	xorq	%r12,%r13
	movq	24(%rsp),%r12

	rorq	$42,%r15
	xorq	%r14,%r15
	shrq	$6,%r14

	rorq	$19,%r15
	addq	%r13,%r12
	xorq	%r15,%r14

	addq	80(%rsp),%r12
	movq	%rcx,%r13
	addq	%r14,%r12
	movq	%r10,%r14
	rorq	$23,%r13
	movq	%rdx,%r15
	movq	%r12,80(%rsp)

	rorq	$5,%r14
	xorq	%rcx,%r13
	xorq	%r8,%r15

	rorq	$4,%r13
	addq	%r9,%r12
	xorq	%r10,%r14

	addq	(%rbp,%rdi,8),%r12
	andq	%rcx,%r15
	movq	%r11,%r9

	rorq	$6,%r14
	xorq	%rcx,%r13
	xorq	%r8,%r15

	xorq	%rax,%r9
	xorq	%r10,%r14
	addq	%r15,%r12
	movq	%r11,%r15

	rorq	$14,%r13
	andq	%r10,%r9
	andq	%rax,%r15

	rorq	$28,%r14
	addq	%r13,%r12
	addq	%r15,%r9

	addq	%r12,%rbx
	addq	%r12,%r9
	leaq	1(%rdi),%rdi
	addq	%r14,%r9

	movq	96(%rsp),%r13
	movq	72(%rsp),%r14
	movq	%r13,%r12
	movq	%r14,%r15

	rorq	$7,%r12
	xorq	%r13,%r12
	shrq	$7,%r13

	rorq	$1,%r12
	xorq	%r12,%r13
	movq	32(%rsp),%r12

	rorq	$42,%r15
	xorq	%r14,%r15
	shrq	$6,%r14

	rorq	$19,%r15
	addq	%r13,%r12
	xorq	%r15,%r14

	addq	88(%rsp),%r12
	movq	%rbx,%r13
	addq	%r14,%r12
	movq	%r9,%r14
	rorq	$23,%r13
	movq	%rcx,%r15
	movq	%r12,88(%rsp)

	rorq	$5,%r14
	xorq	%rbx,%r13
	xorq	%rdx,%r15

	rorq	$4,%r13
	addq	%r8,%r12
	xorq	%r9,%r14

	addq	(%rbp,%rdi,8),%r12
	andq	%rbx,%r15
	movq	%r10,%r8

	rorq	$6,%r14
	xorq	%rbx,%r13
	xorq	%rdx,%r15

	xorq	%r11,%r8
	xorq	%r9,%r14
	addq	%r15,%r12
	movq	%r10,%r15

	rorq	$14,%r13
	andq	%r9,%r8
	andq	%r11,%r15

	rorq	$28,%r14
	addq	%r13,%r12
	addq	%r15,%r8

	addq	%r12,%rax
	addq	%r12,%r8
	leaq	1(%rdi),%rdi
	addq	%r14,%r8

	movq	104(%rsp),%r13
	movq	80(%rsp),%r14
	movq	%r13,%r12
	movq	%r14,%r15

	rorq	$7,%r12
	xorq	%r13,%r12
	shrq	$7,%r13

	rorq	$1,%r12
	xorq	%r12,%r13
	movq	40(%rsp),%r12

	rorq	$42,%r15
	xorq	%r14,%r15
	shrq	$6,%r14

	rorq	$19,%r15
	addq	%r13,%r12
	xorq	%r15,%r14

	addq	96(%rsp),%r12
	movq	%rax,%r13
	addq	%r14,%r12
	movq	%r8,%r14
	rorq	$23,%r13
	movq	%rbx,%r15
	movq	%r12,96(%rsp)

	rorq	$5,%r14
	xorq	%rax,%r13
	xorq	%rcx,%r15

	rorq	$4,%r13
	addq	%rdx,%r12
	xorq	%r8,%r14

	addq	(%rbp,%rdi,8),%r12
	andq	%rax,%r15
	movq	%r9,%rdx

	rorq	$6,%r14
	xorq	%rax,%r13
	xorq	%rcx,%r15

	xorq	%r10,%rdx
	xorq	%r8,%r14
	addq	%r15,%r12
	movq	%r9,%r15

	rorq	$14,%r13
	andq	%r8,%rdx
	andq	%r10,%r15

	rorq	$28,%r14
	addq	%r13,%r12
	addq	%r15,%rdx

	addq	%r12,%r11
	addq	%r12,%rdx
	leaq	1(%rdi),%rdi
	addq	%r14,%rdx

	movq	112(%rsp),%r13
	movq	88(%rsp),%r14
	movq	%r13,%r12
	movq	%r14,%r15

	rorq	$7,%r12
	xorq	%r13,%r12
	shrq	$7,%r13

	rorq	$1,%r12
	xorq	%r12,%r13
	movq	48(%rsp),%r12

	rorq	$42,%r15
	xorq	%r14,%r15
	shrq	$6,%r14

	rorq	$19,%r15
	addq	%r13,%r12
	xorq	%r15,%r14

	addq	104(%rsp),%r12
	movq	%r11,%r13
	addq	%r14,%r12
	movq	%rdx,%r14
	rorq	$23,%r13
	movq	%rax,%r15
	movq	%r12,104(%rsp)

	rorq	$5,%r14
	xorq	%r11,%r13
	xorq	%rbx,%r15

	rorq	$4,%r13
	addq	%rcx,%r12
	xorq	%rdx,%r14

	addq	(%rbp,%rdi,8),%r12
	andq	%r11,%r15
	movq	%r8,%rcx

	rorq	$6,%r14
	xorq	%r11,%r13
	xorq	%rbx,%r15

	xorq	%r9,%rcx
	xorq	%rdx,%r14
	addq	%r15,%r12
	movq	%r8,%r15

	rorq	$14,%r13
	andq	%rdx,%rcx
	andq	%r9,%r15

	rorq	$28,%r14
	addq	%r13,%r12
	addq	%r15,%rcx

	addq	%r12,%r10
	addq	%r12,%rcx
	leaq	1(%rdi),%rdi
	addq	%r14,%rcx

	movq	120(%rsp),%r13
	movq	96(%rsp),%r14
	movq	%r13,%r12
	movq	%r14,%r15

	rorq	$7,%r12
	xorq	%r13,%r12
	shrq	$7,%r13

	rorq	$1,%r12
	xorq	%r12,%r13
	movq	56(%rsp),%r12

	rorq	$42,%r15
	xorq	%r14,%r15
	shrq	$6,%r14

	rorq	$19,%r15
	addq	%r13,%r12
	xorq	%r15,%r14

	addq	112(%rsp),%r12
	movq	%r10,%r13
	addq	%r14,%r12
	movq	%rcx,%r14
	rorq	$23,%r13
	movq	%r11,%r15
	movq	%r12,112(%rsp)

	rorq	$5,%r14
	xorq	%r10,%r13
	xorq	%rax,%r15

	rorq	$4,%r13
	addq	%rbx,%r12
	xorq	%rcx,%r14

	addq	(%rbp,%rdi,8),%r12
	andq	%r10,%r15
	movq	%rdx,%rbx

	rorq	$6,%r14
	xorq	%r10,%r13
	xorq	%rax,%r15

	xorq	%r8,%rbx
	xorq	%rcx,%r14
	addq	%r15,%r12
	movq	%rdx,%r15

	rorq	$14,%r13
	andq	%rcx,%rbx
	andq	%r8,%r15

	rorq	$28,%r14
	addq	%r13,%r12
	addq	%r15,%rbx

	addq	%r12,%r9
	addq	%r12,%rbx
	leaq	1(%rdi),%rdi
	addq	%r14,%rbx

	movq	0(%rsp),%r13
	movq	104(%rsp),%r14
	movq	%r13,%r12
	movq	%r14,%r15

	rorq	$7,%r12
	xorq	%r13,%r12
	shrq	$7,%r13

	rorq	$1,%r12
	xorq	%r12,%r13
	movq	64(%rsp),%r12

	rorq	$42,%r15
	xorq	%r14,%r15
	shrq	$6,%r14

	rorq	$19,%r15
	addq	%r13,%r12
	xorq	%r15,%r14

	addq	120(%rsp),%r12
	movq	%r9,%r13
	addq	%r14,%r12
	movq	%rbx,%r14
	rorq	$23,%r13
	movq	%r10,%r15
	movq	%r12,120(%rsp)

	rorq	$5,%r14
	xorq	%r9,%r13
	xorq	%r11,%r15

	rorq	$4,%r13
	addq	%rax,%r12
	xorq	%rbx,%r14

	addq	(%rbp,%rdi,8),%r12
	andq	%r9,%r15
	movq	%rcx,%rax

	rorq	$6,%r14
	xorq	%r9,%r13
	xorq	%r11,%r15

	xorq	%rdx,%rax
	xorq	%rbx,%r14
	addq	%r15,%r12
	movq	%rcx,%r15

	rorq	$14,%r13
	andq	%rbx,%rax
	andq	%rdx,%r15

	rorq	$28,%r14
	addq	%r13,%r12
	addq	%r15,%rax

	addq	%r12,%r8
	addq	%r12,%rax
	leaq	1(%rdi),%rdi
	addq	%r14,%rax

	cmpq	$80,%rdi
	jb	.Lrounds_16_xx

	movq	128+0(%rsp),%rdi
	leaq	128(%rsi),%rsi

	addq	0(%rdi),%rax
	addq	8(%rdi),%rbx
	addq	16(%rdi),%rcx
	addq	24(%rdi),%rdx
	addq	32(%rdi),%r8
	addq	40(%rdi),%r9
	addq	48(%rdi),%r10
	addq	56(%rdi),%r11

	cmpq	128+16(%rsp),%rsi

	movq	%rax,0(%rdi)
	movq	%rbx,8(%rdi)
	movq	%rcx,16(%rdi)
	movq	%rdx,24(%rdi)
	movq	%r8,32(%rdi)
	movq	%r9,40(%rdi)
	movq	%r10,48(%rdi)
	movq	%r11,56(%rdi)
	jb	.Lloop

	movq	128+24(%rsp),%rsi
	movq	(%rsi),%r15
	movq	8(%rsi),%r14
	movq	16(%rsi),%r13
	movq	24(%rsi),%r12
	movq	32(%rsi),%rbp
	movq	40(%rsi),%rbx
	leaq	48(%rsi),%rsp
.Lepilogue:
	movq	8(%rsp),%rdi
	movq	16(%rsp),%rsi
	.byte	0xf3,0xc3
.LSEH_end_sha512_block_data_order:
.p2align	6

K512:
.quad	0x428a2f98d728ae22,0x7137449123ef65cd
.quad	0xb5c0fbcfec4d3b2f,0xe9b5dba58189dbbc
.quad	0x3956c25bf348b538,0x59f111f1b605d019
.quad	0x923f82a4af194f9b,0xab1c5ed5da6d8118
.quad	0xd807aa98a3030242,0x12835b0145706fbe
.quad	0x243185be4ee4b28c,0x550c7dc3d5ffb4e2
.quad	0x72be5d74f27b896f,0x80deb1fe3b1696b1
.quad	0x9bdc06a725c71235,0xc19bf174cf692694
.quad	0xe49b69c19ef14ad2,0xefbe4786384f25e3
.quad	0x0fc19dc68b8cd5b5,0x240ca1cc77ac9c65
.quad	0x2de92c6f592b0275,0x4a7484aa6ea6e483
.quad	0x5cb0a9dcbd41fbd4,0x76f988da831153b5
.quad	0x983e5152ee66dfab,0xa831c66d2db43210
.quad	0xb00327c898fb213f,0xbf597fc7beef0ee4
.quad	0xc6e00bf33da88fc2,0xd5a79147930aa725
.quad	0x06ca6351e003826f,0x142929670a0e6e70
.quad	0x27b70a8546d22ffc,0x2e1b21385c26c926
.quad	0x4d2c6dfc5ac42aed,0x53380d139d95b3df
.quad	0x650a73548baf63de,0x766a0abb3c77b2a8
.quad	0x81c2c92e47edaee6,0x92722c851482353b
.quad	0xa2bfe8a14cf10364,0xa81a664bbc423001
.quad	0xc24b8b70d0f89791,0xc76c51a30654be30
.quad	0xd192e819d6ef5218,0xd69906245565a910
.quad	0xf40e35855771202a,0x106aa07032bbd1b8
.quad	0x19a4c116b8d2d0c8,0x1e376c085141ab53
.quad	0x2748774cdf8eeb99,0x34b0bcb5e19b48a8
.quad	0x391c0cb3c5c95a63,0x4ed8aa4ae3418acb
.quad	0x5b9cca4f7763e373,0x682e6ff3d6b2b8a3
.quad	0x748f82ee5defb2fc,0x78a5636f43172f60
.quad	0x84c87814a1f0ab72,0x8cc702081a6439ec
.quad	0x90befffa23631e28,0xa4506cebde82bde9
.quad	0xbef9a3f7b2c67915,0xc67178f2e372532b
.quad	0xca273eceea26619c,0xd186b8c721c0c207
.quad	0xeada7dd6cde0eb1e,0xf57d4f7fee6ed178
.quad	0x06f067aa72176fba,0x0a637dc5a2c898a6
.quad	0x113f9804bef90dae,0x1b710b35131c471b
.quad	0x28db77f523047d84,0x32caab7b40c72493
.quad	0x3c9ebe0a15c9bebc,0x431d67c49c100d4c
.quad	0x4cc5d4becb3e42b6,0x597f299cfc657e2a
.quad	0x5fcb6fab3ad6faec,0x6c44198c4a475817

.def	se_handler;	.scl 3;	.type 32;	.endef
.p2align	4
se_handler:
	pushq	%rsi
	pushq	%rdi
	pushq	%rbx
	pushq	%rbp
	pushq	%r12
	pushq	%r13
	pushq	%r14
	pushq	%r15
	pushfq
	subq	$64,%rsp

	movq	120(%r8),%rax
	movq	248(%r8),%rbx

	leaq	.Lprologue(%rip),%r10
	cmpq	%r10,%rbx
	jb	.Lin_prologue

	movq	152(%r8),%rax

	leaq	.Lepilogue(%rip),%r10
	cmpq	%r10,%rbx
	jae	.Lin_prologue

	movq	128+24(%rax),%rax
	leaq	48(%rax),%rax

	movq	-8(%rax),%rbx
	movq	-16(%rax),%rbp
	movq	-24(%rax),%r12
	movq	-32(%rax),%r13
	movq	-40(%rax),%r14
	movq	-48(%rax),%r15
	movq	%rbx,144(%r8)
	movq	%rbp,160(%r8)
	movq	%r12,216(%r8)
	movq	%r13,224(%r8)
	movq	%r14,232(%r8)
	movq	%r15,240(%r8)

.Lin_prologue:
	movq	8(%rax),%rdi
	movq	16(%rax),%rsi
	movq	%rax,152(%r8)
	movq	%rsi,168(%r8)
	movq	%rdi,176(%r8)

	movq	40(%r9),%rdi
	movq	%r8,%rsi
	movl	$154,%ecx
.long	0xa548f3fc		

	movq	%r9,%rsi
	xorq	%rcx,%rcx
	movq	8(%rsi),%rdx
	movq	0(%rsi),%r8
	movq	16(%rsi),%r9
	movq	40(%rsi),%r10
	leaq	56(%rsi),%r11
	leaq	24(%rsi),%r12
	movq	%r10,32(%rsp)
	movq	%r11,40(%rsp)
	movq	%r12,48(%rsp)
	movq	%rcx,56(%rsp)
	call	*__imp_RtlVirtualUnwind(%rip)

	movl	$1,%eax
	addq	$64,%rsp
	popfq
	popq	%r15
	popq	%r14
	popq	%r13
	popq	%r12
	popq	%rbp
	popq	%rbx
	popq	%rdi
	popq	%rsi
	.byte	0xf3,0xc3


.section	.pdata
.p2align	2
.rva	.LSEH_begin_sha512_block_data_order
.rva	.LSEH_end_sha512_block_data_order
.rva	.LSEH_info_sha512_block_data_order

.section	.xdata
.p2align	3
.LSEH_info_sha512_block_data_order:
.byte	9,0,0,0
.rva	se_handler
