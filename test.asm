bits 32
global main

main:
label_1dbf71a:  push	ebx
label_1dbf71b:	push	edx
label_1dbf728:	pop	edx
; -> initial_edx
;put_contents[XCORE_OP_REG] <- initial_edx
label_1dbf729:	pushad
label_1dbf748:	popad
label_1dbf749:	pop	ebx
; -> initial_ebx
;put_contents[XCORE_OP_REG] <- initial_ebx
label_1dbf74a:	pushfd
; <- initial_flags
label_1dbf74b:	push	0x63bdb6ce
label_1dbf750:	mov	dword [esp], edi
;put_contents[XCORE_OP_MEM] <- initial_edi
;stack[1048568, 0] <-
label_1dbf753:	mov	dword [esp], 0x7bef90d0
;put_contents[XCORE_OP_MEM] <- 2079297744
;stack[1048568, 0] <-
label_1dbf75a:	or	dword [esp], 0x7fc6aaa8
;stack[1048568, 0] ->
;stack[1048568, 0] ->
;put_contents[XCORE_OP_MEM] <- 2146417400
;stack[1048568, 0] <-
label_1dbf761:	push	edx
label_1dbf762:	mov	edx, 0x7dffdf92
;put_contents[XCORE_OP_REG] <- 2113920914
label_1dbf767:	and	dword [esp + 4], edx
;stack[1048564, 4] ->
;stack[1048564, 4] ->
;put_contents[XCORE_OP_MEM] <- 2112854672
;stack[1048564, 4] <-
label_1dbf76b:	pop	edx
; -> initial_edx
;put_contents[XCORE_OP_REG] <- initial_edx
label_1dbf76c:	sub	dword [esp], 0x5f375495
;stack[1048568, 0] ->
;stack[1048568, 0] ->
;put_contents[XCORE_OP_MEM] <- 515393019
;stack[1048568, 0] <-
label_1dbf773:	inc	dword [esp]
;stack[1048568, 0] ->
;stack[1048568, 0] ->
;put_contents[XCORE_OP_MEM] <- 515393020
;stack[1048568, 0] <-
label_1dbf776:	push	ecx
label_1dbf777:	mov	ecx, 0xe147bd81
;put_contents[XCORE_OP_REG] <- 3779575169
label_1dbf77c:	add	dword [esp + 4], ecx
;stack[1048564, 4] ->
;stack[1048564, 4] ->
;put_contents[XCORE_OP_MEM] <- 4294968189
;stack[1048564, 4] <-
label_1dbf780:	pop	ecx
; -> initial_ecx
;put_contents[XCORE_OP_REG] <- initial_ecx
label_1dbf781:	push	edx
label_1dbf782:	mov	dword [esp], edi
;put_contents[XCORE_OP_MEM] <- initial_edi
;stack[1048564, 0] <-
label_1dbf785:	mov	dword [esp], 0x5cd7d0fb
;put_contents[XCORE_OP_MEM] <- 1557647611
;stack[1048564, 0] <-
label_1dbf78c:	push	eax
label_1dbf78d:	mov	eax, 0x72e7ae7
;put_contents[XCORE_OP_REG] <- 120486631
label_1dbf792:	xor	dword [esp + 4], eax
;stack[1048560, 4] ->
;stack[1048560, 4] ->
;put_contents[XCORE_OP_MEM] <- 1543088668
;stack[1048560, 4] <-
label_1dbf796:	pop	eax
; -> initial_eax
;put_contents[XCORE_OP_REG] <- initial_eax
label_1dbf797:	shr	dword [esp], 5
;stack[1048564, 0] ->
;stack[1048564, 0] ->
;put_contents[XCORE_OP_MEM] <- 48221520
;stack[1048564, 0] <-
label_1dbf79b:	neg	dword [esp]
;stack[1048564, 0] ->
;stack[1048564, 0] ->
;put_contents[XCORE_OP_MEM] <- -48221520
;stack[1048564, 0] <-
label_1dbf79e:	shl	dword [esp], 6
;stack[1048564, 0] ->
;stack[1048564, 0] ->
;put_contents[XCORE_OP_MEM] <- -3086177280
;stack[1048564, 0] <-
label_1dbf7a2:	xor	dword [esp], 0x4997dd57
;stack[1048564, 0] ->
;stack[1048564, 0] ->
;put_contents[XCORE_OP_MEM] <- -4268002985
;stack[1048564, 0] <-
label_1dbf7a9:	sub	esp, 4
;put_contents[XCORE_OP_REG] <- 1048560
label_1dbf7ac:	mov	dword [esp], ecx
;put_contents[XCORE_OP_MEM] <- initial_ecx
;stack[1048560, 0] <-
label_1dbf7af:	mov	ecx, esp
;put_contents[XCORE_OP_REG] <- 1048560
label_1dbf7b1:	add	ecx, 4
;put_contents[XCORE_OP_REG] <- 1048564
label_1dbf7b7:	sub	ecx, 4
;put_contents[XCORE_OP_REG] <- 1048560
label_1dbf7ba:	xchg	dword [esp], ecx
;stack[1048560, 0] ->
;put_contents[XCORE_OP_MEM] <- 1048560
;stack[1048560, 0] <-
;put_contents[XCORE_OP_REG] <- initial_ecx
label_1dbf7bd:	mov	esp, dword [esp]
;stack[1048560, 0] ->
;put_contents[XCORE_OP_REG] <- 1048560
label_1dbf7c0:	mov	dword [esp], eax
;put_contents[XCORE_OP_MEM] <- initial_eax
;stack[1048560, 0] <-
label_1dbf7c3:	push	eax
label_1dbf7c4:	mov	dword [esp], 0x10066af
;put_contents[XCORE_OP_MEM] <- 16803503
;stack[1048556, 0] <-
label_1dbf7cb:	mov	dword [esp], ebp
;put_contents[XCORE_OP_MEM] <- initial_ebp
;stack[1048556, 0] <-
label_1dbf7ce:	mov	dword [esp], ebx
;put_contents[XCORE_OP_MEM] <- initial_ebx
;stack[1048556, 0] <-
label_1dbf7d1:	mov	dword [esp], 0x43bd6c03
;put_contents[XCORE_OP_MEM] <- 1136487427
;stack[1048556, 0] <-
label_1dbf7d8:	mov	dword [esp], ebx
;put_contents[XCORE_OP_MEM] <- initial_ebx
;stack[1048556, 0] <-
label_1dbf7db:	push	dword [esp + 0x10]
;stack[1048556, 16] ->
label_1dbf7df:	push	dword [esp]
;stack[1048552, 0] ->
label_1dbf7e2:	pop	eax
; -> initial_flags
;put_contents[XCORE_OP_REG] <- initial_flags
label_1dbf7e3:	push	ebp
label_1dbf7e4:	mov	ebp, esp
;put_contents[XCORE_OP_REG] <- 1048548
label_1dbf7e6:	push	eax
label_1dbf7e7:	mov	eax, 4
;put_contents[XCORE_OP_REG] <- 4
label_1dbf7ec:	add	ebp, eax
;put_contents[XCORE_OP_REG] <- 1048552
label_1dbf7ee:	pop	eax
; -> initial_flags
;put_contents[XCORE_OP_REG] <- initial_flags
label_1dbf7ef:	add	ebp, 4
;put_contents[XCORE_OP_REG] <- 1048556
label_1dbf7f2:	xchg	dword [esp], ebp
;stack[1048548, 0] ->
;put_contents[XCORE_OP_MEM] <- 1048556
;stack[1048548, 0] <-
;put_contents[XCORE_OP_REG] <- initial_ebp
label_1dbf7f5:	pop	esp
; -> 1048556
;put_contents[XCORE_OP_REG] <- 1048556
label_1dbf7f6:	push	dword [esp + 8]
;stack[1048556, 8] ->
label_1dbf7fa:	mov	ebx, dword [esp]
;stack[1048552, 0] ->
;put_contents[XCORE_OP_REG] <- -4268002985
label_1dbf7fd:	push	ebx
label_1dbf7fe:	mov	ebx, esp
;put_contents[XCORE_OP_REG] <- 1048548
label_1dbf800:	add	ebx, 4
;put_contents[XCORE_OP_REG] <- 1048552
label_1dbf806:	add	ebx, 4
;put_contents[XCORE_OP_REG] <- 1048556
label_1dbf80c:	xchg	dword [esp], ebx
;stack[1048548, 0] ->
;put_contents[XCORE_OP_MEM] <- 1048556
;stack[1048548, 0] <-
;put_contents[XCORE_OP_REG] <- -4268002985
label_1dbf80f:	pop	esp
; -> 1048556
;put_contents[XCORE_OP_REG] <- 1048556
label_1dbf810:	mov	dword [esp + 8], eax
;put_contents[XCORE_OP_MEM] <- initial_flags
;stack[1048556, 8] <-
label_1dbf814:	mov	dword [esp + 0x10], ebx
;put_contents[XCORE_OP_MEM] <- -4268002985
;stack[1048556, 16] <-
label_1dbf818:	push	dword [esp]
;stack[1048556, 0] ->
label_1dbf81b:	pop	ebx
; -> initial_ebx
;put_contents[XCORE_OP_REG] <- initial_ebx
label_1dbf81c:	push	edx
label_1dbf81d:	mov	dword [esp], ecx
;put_contents[XCORE_OP_MEM] <- initial_ecx
;stack[1048552, 0] <-
label_1dbf820:	mov	ecx, esp
;put_contents[XCORE_OP_REG] <- 1048552
label_1dbf822:	add	ecx, 4
;put_contents[XCORE_OP_REG] <- 1048556
label_1dbf828:	add	ecx, 4
;put_contents[XCORE_OP_REG] <- 1048560
label_1dbf82b:	xchg	dword [esp], ecx
;stack[1048552, 0] ->
;put_contents[XCORE_OP_MEM] <- 1048560
;stack[1048552, 0] <-
;put_contents[XCORE_OP_REG] <- initial_ecx
label_1dbf82e:	mov	esp, dword [esp]
;stack[1048552, 0] ->
;put_contents[XCORE_OP_REG] <- 1048560
label_1dbf831:	push	dword [esp]
;stack[1048560, 0] ->
label_1dbf834:	mov	eax, dword [esp]
;stack[1048556, 0] ->
;put_contents[XCORE_OP_REG] <- initial_eax
label_1dbf837:	add	esp, 4
;put_contents[XCORE_OP_REG] <- 1048560
label_1dbf83a:	push	ecx
label_1dbf83b:	push	esp
label_1dbf83c:	pop	ecx
; -> 1048556
;put_contents[XCORE_OP_REG] <- 1048556
label_1dbf83d:	add	ecx, 4
;put_contents[XCORE_OP_REG] <- 1048560
label_1dbf843:	add	ecx, 4
;put_contents[XCORE_OP_REG] <- 1048564
label_1dbf846:	xchg	dword [esp], ecx
;stack[1048556, 0] ->
;put_contents[XCORE_OP_MEM] <- 1048564
;stack[1048556, 0] <-
;put_contents[XCORE_OP_REG] <- initial_ecx
label_1dbf849:	pop	esp
; -> 1048564
;put_contents[XCORE_OP_REG] <- 1048564
