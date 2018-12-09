bits 32
global main

main:
l0x1dbf71a:	push	ebx
l0x1dbf71b:	push	edx
; l0x1dbf71c:	jmp	0x1dbf728
l0x1dbf728:	pop	edx
; -> initial_edx
;put_contents[XCORE_OP_REG] <- initial_edx
; l0x1dbf729:	pushal
; l0x1dbf72a:	jmp	0x1dbf73c
; l0x1dbf73c:	jae	0x1dbf742
;junk jump
; l0x1dbf742:	jbe	0x1dbf748
;junk jump
; l0x1dbf748:	popal
l0x1dbf749:	pop	ebx
; -> initial_ebx
;put_contents[XCORE_OP_REG] <- initial_ebx
l0x1dbf74a:	pushfd
; <- initial_flags
l0x1dbf74b:	push	0x63bdb6ce
l0x1dbf750:	mov	dword[esp], edi
;put_contents[XCORE_OP_MEM] <- initial_edi
;stack[1048568, 0] <-
l0x1dbf753:	mov	dword[esp], 0x7bef90d0
;put_contents[XCORE_OP_MEM] <- 2079297744
;stack[1048568, 0] <-
l0x1dbf75a:	or	dword[esp], 0x7fc6aaa8
;stack[1048568, 0] ->
;stack[1048568, 0] ->
;put_contents[XCORE_OP_MEM] <- 2146417400
;stack[1048568, 0] <-
l0x1dbf761:	push	edx
l0x1dbf762:	mov	edx, 0x7dffdf92
;put_contents[XCORE_OP_REG] <- 2113920914
l0x1dbf767:	and	dword[esp + 4], edx
;stack[1048564, 4] ->
;stack[1048564, 4] ->
;put_contents[XCORE_OP_MEM] <- 2112854672
;stack[1048564, 4] <-
l0x1dbf76b:	pop	edx
; -> initial_edx
;put_contents[XCORE_OP_REG] <- initial_edx
l0x1dbf76c:	sub	dword[esp], 0x5f375495
;stack[1048568, 0] ->
;stack[1048568, 0] ->
;put_contents[XCORE_OP_MEM] <- 515393019
;stack[1048568, 0] <-
l0x1dbf773:	inc	dword[esp]
;stack[1048568, 0] ->
;stack[1048568, 0] ->
;put_contents[XCORE_OP_MEM] <- 515393020
;stack[1048568, 0] <-
l0x1dbf776:	push	ecx
l0x1dbf777:	mov	ecx, 0xe147bd81
;put_contents[XCORE_OP_REG] <- 3779575169
l0x1dbf77c:	add	dword[esp + 4], ecx
;stack[1048564, 4] ->
;stack[1048564, 4] ->
;put_contents[XCORE_OP_MEM] <- 893
;stack[1048564, 4] <-
l0x1dbf780:	pop	ecx
; -> initial_ecx
;put_contents[XCORE_OP_REG] <- initial_ecx
l0x1dbf781:	push	edx
l0x1dbf782:	mov	dword[esp], edi
;put_contents[XCORE_OP_MEM] <- initial_edi
;stack[1048564, 0] <-
l0x1dbf785:	mov	dword[esp], 0x5cd7d0fb
;put_contents[XCORE_OP_MEM] <- 1557647611
;stack[1048564, 0] <-
l0x1dbf78c:	push	eax
l0x1dbf78d:	mov	eax, 0x72e7ae7
;put_contents[XCORE_OP_REG] <- 120486631
l0x1dbf792:	xor	dword[esp + 4], eax
;stack[1048560, 4] ->
;stack[1048560, 4] ->
;put_contents[XCORE_OP_MEM] <- 1543088668
;stack[1048560, 4] <-
l0x1dbf796:	pop	eax
; -> initial_eax
;put_contents[XCORE_OP_REG] <- initial_eax
l0x1dbf797:	shr	dword[esp], 5
;stack[1048564, 0] ->
;stack[1048564, 0] ->
;put_contents[XCORE_OP_MEM] <- 48221520
;stack[1048564, 0] <-
l0x1dbf79b:	neg	dword[esp]
;stack[1048564, 0] ->
;stack[1048564, 0] ->
;put_contents[XCORE_OP_MEM] <- 4246745776
;stack[1048564, 0] <-
l0x1dbf79e:	shl	dword[esp], 6
;stack[1048564, 0] ->
;stack[1048564, 0] ->
;put_contents[XCORE_OP_MEM] <- 1208790016
;stack[1048564, 0] <-
l0x1dbf7a2:	xor	dword[esp], 0x4997dd57
;stack[1048564, 0] ->
;stack[1048564, 0] ->
;put_contents[XCORE_OP_MEM] <- 26964311
;stack[1048564, 0] <-
l0x1dbf7a9:	sub	esp, 4
;put_contents[XCORE_OP_REG] <- 1048560
l0x1dbf7ac:	mov	dword[esp], ecx
;put_contents[XCORE_OP_MEM] <- initial_ecx
;stack[1048560, 0] <-
l0x1dbf7af:	mov	ecx, esp
;put_contents[XCORE_OP_REG] <- 1048560
l0x1dbf7b1:	add	ecx, 4
;put_contents[XCORE_OP_REG] <- 1048564
l0x1dbf7b7:	sub	ecx, 4
;put_contents[XCORE_OP_REG] <- 1048560
l0x1dbf7ba:	xchg	dword[esp], ecx
;stack[1048560, 0] ->
;put_contents[XCORE_OP_MEM] <- 1048560
;stack[1048560, 0] <-
;put_contents[XCORE_OP_REG] <- initial_ecx
l0x1dbf7bd:	mov	esp, dword[esp]
;stack[1048560, 0] ->
;put_contents[XCORE_OP_REG] <- 1048560
l0x1dbf7c0:	mov	dword[esp], eax
;put_contents[XCORE_OP_MEM] <- initial_eax
;stack[1048560, 0] <-
l0x1dbf7c3:	push	eax
l0x1dbf7c4:	mov	dword[esp], 0x10066af
;put_contents[XCORE_OP_MEM] <- 16803503
;stack[1048556, 0] <-
l0x1dbf7cb:	mov	dword[esp], ebp
;put_contents[XCORE_OP_MEM] <- initial_ebp
;stack[1048556, 0] <-
l0x1dbf7ce:	mov	dword[esp], ebx
;put_contents[XCORE_OP_MEM] <- initial_ebx
;stack[1048556, 0] <-
l0x1dbf7d1:	mov	dword[esp], 0x43bd6c03
;put_contents[XCORE_OP_MEM] <- 1136487427
;stack[1048556, 0] <-
l0x1dbf7d8:	mov	dword[esp], ebx
;put_contents[XCORE_OP_MEM] <- initial_ebx
;stack[1048556, 0] <-
l0x1dbf7db:	push	dword[esp + 0x10]
;stack[1048556, 16] ->
l0x1dbf7df:	push	dword[esp]
;stack[1048552, 0] ->
l0x1dbf7e2:	pop	eax
; -> initial_flags
;put_contents[XCORE_OP_REG] <- initial_flags
l0x1dbf7e3:	push	ebp
l0x1dbf7e4:	mov	ebp, esp
;put_contents[XCORE_OP_REG] <- 1048548
l0x1dbf7e6:	push	eax
l0x1dbf7e7:	mov	eax, 4
;put_contents[XCORE_OP_REG] <- 4
l0x1dbf7ec:	add	ebp, eax
;put_contents[XCORE_OP_REG] <- 1048552
l0x1dbf7ee:	pop	eax
; -> initial_flags
;put_contents[XCORE_OP_REG] <- initial_flags
l0x1dbf7ef:	add	ebp, 4
;put_contents[XCORE_OP_REG] <- 1048556
l0x1dbf7f2:	xchg	dword[esp], ebp
;stack[1048548, 0] ->
;put_contents[XCORE_OP_MEM] <- 1048556
;stack[1048548, 0] <-
;put_contents[XCORE_OP_REG] <- initial_ebp
l0x1dbf7f5:	pop	esp
; -> 1048556
;put_contents[XCORE_OP_REG] <- 1048556
l0x1dbf7f6:	push	dword[esp + 8]
;stack[1048556, 8] ->
l0x1dbf7fa:	mov	ebx, dword[esp]
;stack[1048552, 0] ->
;put_contents[XCORE_OP_REG] <- 26964311
l0x1dbf7fd:	push	ebx
l0x1dbf7fe:	mov	ebx, esp
;put_contents[XCORE_OP_REG] <- 1048548
l0x1dbf800:	add	ebx, 4
;put_contents[XCORE_OP_REG] <- 1048552
l0x1dbf806:	add	ebx, 4
;put_contents[XCORE_OP_REG] <- 1048556
l0x1dbf80c:	xchg	dword[esp], ebx
;stack[1048548, 0] ->
;put_contents[XCORE_OP_MEM] <- 1048556
;stack[1048548, 0] <-
;put_contents[XCORE_OP_REG] <- 26964311
l0x1dbf80f:	pop	esp
; -> 1048556
;put_contents[XCORE_OP_REG] <- 1048556
l0x1dbf810:	mov	dword[esp + 8], eax
;put_contents[XCORE_OP_MEM] <- initial_flags
;stack[1048556, 8] <-
l0x1dbf814:	mov	dword[esp + 0x10], ebx
;put_contents[XCORE_OP_MEM] <- 26964311
;stack[1048556, 16] <-
l0x1dbf818:	push	dword[esp]
;stack[1048556, 0] ->
l0x1dbf81b:	pop	ebx
; -> initial_ebx
;put_contents[XCORE_OP_REG] <- initial_ebx
l0x1dbf81c:	push	edx
l0x1dbf81d:	mov	dword[esp], ecx
;put_contents[XCORE_OP_MEM] <- initial_ecx
;stack[1048552, 0] <-
l0x1dbf820:	mov	ecx, esp
;put_contents[XCORE_OP_REG] <- 1048552
l0x1dbf822:	add	ecx, 4
;put_contents[XCORE_OP_REG] <- 1048556
l0x1dbf828:	add	ecx, 4
;put_contents[XCORE_OP_REG] <- 1048560
l0x1dbf82b:	xchg	dword[esp], ecx
;stack[1048552, 0] ->
;put_contents[XCORE_OP_MEM] <- 1048560
;stack[1048552, 0] <-
;put_contents[XCORE_OP_REG] <- initial_ecx
l0x1dbf82e:	mov	esp, dword[esp]
;stack[1048552, 0] ->
;put_contents[XCORE_OP_REG] <- 1048560
l0x1dbf831:	push	dword[esp]
;stack[1048560, 0] ->
l0x1dbf834:	mov	eax, dword[esp]
;stack[1048556, 0] ->
;put_contents[XCORE_OP_REG] <- initial_eax
l0x1dbf837:	add	esp, 4
;put_contents[XCORE_OP_REG] <- 1048560
l0x1dbf83a:	push	ecx
l0x1dbf83b:	push	esp
l0x1dbf83c:	pop	ecx
; -> 1048556
;put_contents[XCORE_OP_REG] <- 1048556
l0x1dbf83d:	add	ecx, 4
;put_contents[XCORE_OP_REG] <- 1048560
l0x1dbf843:	add	ecx, 4
;put_contents[XCORE_OP_REG] <- 1048564
l0x1dbf846:	xchg	dword[esp], ecx
;stack[1048556, 0] ->
;put_contents[XCORE_OP_MEM] <- 1048564
;stack[1048556, 0] <-
;put_contents[XCORE_OP_REG] <- initial_ecx
l0x1dbf849:	pop	esp
; -> 1048564
;put_contents[XCORE_OP_REG] <- 1048564
;l0x1dbf84a:	jmp	0x98b68f
;junk jump
; l0x98b695:	jmp	0x98b6a8
; l0x98b6a8:	jmp	0x98b6b4
l0x98b6b4:	sub	esp, 4
;put_contents[XCORE_OP_REG] <- 1048560
l0x98b6ba:	mov	dword[esp], ebp
;put_contents[XCORE_OP_MEM] <- initial_ebp
;stack[1048560, 0] <-
l0x98b6bd:	mov	dword[esp], 0x67c9e959
;put_contents[XCORE_OP_MEM] <- 1741285721
;stack[1048560, 0] <-
l0x98b6c4:	shr	dword[esp], 3
;stack[1048560, 0] ->
;stack[1048560, 0] ->
;put_contents[XCORE_OP_MEM] <- 217660715
;stack[1048560, 0] <-
l0x98b6c8:	inc	dword[esp]
;stack[1048560, 0] ->
;stack[1048560, 0] ->
;put_contents[XCORE_OP_MEM] <- 217660716
;stack[1048560, 0] <-
l0x98b6cb:	xor	dword[esp], 0x57e31c23
;stack[1048560, 0] ->
;stack[1048560, 0] ->
;put_contents[XCORE_OP_MEM] <- 1528439055
;stack[1048560, 0] <-
l0x98b6d2:	sub	dword[esp], 0x2e9fdf91
;stack[1048560, 0] ->
;stack[1048560, 0] ->
;put_contents[XCORE_OP_MEM] <- 746209662
;stack[1048560, 0] <-
l0x98b6d9:	xor	dword[esp], 0x6b254ea9
;stack[1048560, 0] ->
;stack[1048560, 0] ->
;put_contents[XCORE_OP_MEM] <- 1197412311
;stack[1048560, 0] <-
l0x98b6e0:	push	ebx
l0x98b6e1:	mov	ebx, 0x79f7984c
;put_contents[XCORE_OP_REG] <- 2046269516
l0x98b6e6:	add	dword[esp + 4], ebx
;stack[1048556, 4] ->
;stack[1048556, 4] ->
;put_contents[XCORE_OP_MEM] <- 3243681827
;stack[1048556, 4] <-
l0x98b6ea:	pop	ebx
; -> initial_ebx
;put_contents[XCORE_OP_REG] <- initial_ebx
l0x98b6eb:	sub	dword[esp], 0x1ffb8a61
;stack[1048560, 0] ->
;stack[1048560, 0] ->
;put_contents[XCORE_OP_MEM] <- 2707103170
;stack[1048560, 0] <-
l0x98b6f2:	xor	dword[esp], 0x8eb5e721
;stack[1048560, 0] ->
;stack[1048560, 0] ->
;put_contents[XCORE_OP_MEM] <- 804190947
;stack[1048560, 0] <-
l0x98b6f9:	xor	dword[esp], 0x7f6fe500
;stack[1048560, 0] ->
;stack[1048560, 0] ->
;put_contents[XCORE_OP_MEM] <- 1350639587
;stack[1048560, 0] <-
l0x98b700:	push	ebx
l0x98b701:	push	ecx
l0x98b702:	mov	ecx, 0x6622a72f
;put_contents[XCORE_OP_REG] <- 1713547055
l0x98b707:	shr	ecx, 8
;put_contents[XCORE_OP_REG] <- 6693543
l0x98b70a:	or	ecx, 0x3def4e64
;put_contents[XCORE_OP_REG] <- 1039101671
l0x98b710:	shr	ecx, 1
;put_contents[XCORE_OP_REG] <- 519550835
l0x98b713:	sub	ecx, 0xa76c855d
;put_contents[XCORE_OP_REG] <- 2005611030
l0x98b719:	and	ecx, 0x7edbf5ce
;put_contents[XCORE_OP_REG] <- 1988833286
l0x98b71f:	add	ecx, 0x7cef5cd4
;put_contents[XCORE_OP_REG] <- 4084894938
l0x98b725:	push	edx
l0x98b726:	mov	edx, 0x7b7f327f
;put_contents[XCORE_OP_REG] <- 2071933567
l0x98b72b:	add	ecx, edx
;put_contents[XCORE_OP_REG] <- 1861861209
l0x98b72d:	pop	edx
; -> initial_edx
;put_contents[XCORE_OP_REG] <- initial_edx
l0x98b72e:	add	ecx, 0x738961b1
;put_contents[XCORE_OP_REG] <- 3800244490
l0x98b734:	push	esi
l0x98b735:	push	ecx
l0x98b736:	mov	esi, dword[esp]
;stack[1048544, 0] ->
;put_contents[XCORE_OP_REG] <- 3800244490
l0x98b739:	add	esp, 4
;put_contents[XCORE_OP_REG] <- 1048548
l0x98b73c:	mov	ebx, esi
;put_contents[XCORE_OP_REG] <- 3800244490
l0x98b73e:	pop	esi
; -> initial_esi
;put_contents[XCORE_OP_REG] <- initial_esi
l0x98b73f:	pop	ecx
; -> initial_ecx
;put_contents[XCORE_OP_REG] <- initial_ecx
l0x98b740:	sub	dword[esp + 4], ebx
;stack[1048556, 4] ->
;stack[1048556, 4] ->
;put_contents[XCORE_OP_MEM] <- 1845362393
;stack[1048556, 4] <-
l0x98b744:	mov	ebx, dword[esp]
;stack[1048556, 0] ->
;put_contents[XCORE_OP_REG] <- initial_ebx
l0x98b747:	add	esp, 4
;put_contents[XCORE_OP_REG] <- 1048560
l0x98b74d:	and	dword[esp], 0x3abf5404
;stack[1048560, 0] ->
;stack[1048560, 0] ->
;put_contents[XCORE_OP_MEM] <- 683496448
;stack[1048560, 0] <-
l0x98b754:	sub	dword[esp], 1
;stack[1048560, 0] ->
;stack[1048560, 0] ->
;put_contents[XCORE_OP_MEM] <- 683496447
;stack[1048560, 0] <-
l0x98b75b:	push	edx
l0x98b75c:	mov	edx, esp
;put_contents[XCORE_OP_REG] <- 1048556
l0x98b75e:	add	edx, 4
;put_contents[XCORE_OP_REG] <- 1048560
l0x98b764:	sub	edx, 4
;put_contents[XCORE_OP_REG] <- 1048556
l0x98b76a:	xchg	dword[esp], edx
;stack[1048556, 0] ->
;put_contents[XCORE_OP_MEM] <- 1048556
;stack[1048556, 0] <-
;put_contents[XCORE_OP_REG] <- initial_edx
l0x98b76d:	pop	esp
; -> 1048556
;put_contents[XCORE_OP_REG] <- 1048556
l0x98b76e:	mov	dword[esp], ecx
;put_contents[XCORE_OP_MEM] <- initial_ecx
;stack[1048556, 0] <-
l0x98b771:	mov	ecx, 0x5c55e48b
;put_contents[XCORE_OP_REG] <- 1549132939
l0x98b776:	xor	dword[esp + 4], ecx
;stack[1048556, 4] ->
;stack[1048556, 4] ->
;put_contents[XCORE_OP_MEM] <- 1961408372
;stack[1048556, 4] <-
l0x98b77a:	pop	ecx
; -> initial_ecx
;put_contents[XCORE_OP_REG] <- initial_ecx
l0x98b77b:	mov	dword[esp], eax
;put_contents[XCORE_OP_MEM] <- initial_eax
;stack[1048560, 0] <-
l0x98b77e:	push	edi
l0x98b77f:	mov	dword[esp], ebp
;put_contents[XCORE_OP_MEM] <- initial_ebp
;stack[1048556, 0] <-
l0x98b782:	mov	dword[esp], 0xf873af3
;put_contents[XCORE_OP_MEM] <- 260520691
;stack[1048556, 0] <-
l0x98b789:	push	ebp
l0x98b78a:	mov	ebp, 0x28cd3a96
;put_contents[XCORE_OP_REG] <- 684538518
l0x98b78f:	or	dword[esp + 4], ebp
;stack[1048552, 4] ->
;stack[1048552, 4] ->
;put_contents[XCORE_OP_MEM] <- 802110199
;stack[1048552, 4] <-
l0x98b793:	pop	ebp
; -> initial_ebp
;put_contents[XCORE_OP_REG] <- initial_ebp
l0x98b794:	push	edi
l0x98b795:	mov	edi, 0x719af227
;put_contents[XCORE_OP_REG] <- 1905979943
l0x98b79a:	xor	dword[esp + 4], edi
;stack[1048552, 4] ->
;stack[1048552, 4] ->
;put_contents[XCORE_OP_MEM] <- 1582680272
;stack[1048552, 4] <-
l0x98b79e:	mov	edi, dword[esp]
;stack[1048552, 0] ->
;put_contents[XCORE_OP_REG] <- initial_edi
l0x98b7a1:	add	esp, 4
;put_contents[XCORE_OP_REG] <- 1048556
l0x98b7a4:	shl	dword[esp], 8
;stack[1048556, 0] ->
;stack[1048556, 0] ->
;put_contents[XCORE_OP_MEM] <- 1439223808
;stack[1048556, 0] <-
l0x98b7a8:	push	ecx
l0x98b7a9:	push	edi
l0x98b7aa:	mov	edi, 0x7bf7bfc2
;put_contents[XCORE_OP_REG] <- 2079834050
l0x98b7af:	mov	ecx, 0xb9ef4617
;put_contents[XCORE_OP_REG] <- 3119466007
l0x98b7b4:	sub	ecx, 0x7ff6eae5
;put_contents[XCORE_OP_REG] <- 972577586
l0x98b7ba:	add	ecx, 0x7ba1bc48
;put_contents[XCORE_OP_REG] <- 3046774650
l0x98b7c0:	sub	ecx, edi
;put_contents[XCORE_OP_REG] <- 966940600
l0x98b7c2:	sub	ecx, 0x7ba1bc48
;put_contents[XCORE_OP_REG] <- 3187710832
l0x98b7c8:	add	ecx, 0x7ff6eae5
;put_contents[XCORE_OP_REG] <- 1039631957
l0x98b7ce:	pop	edi
; -> initial_edi
;put_contents[XCORE_OP_REG] <- initial_edi
l0x98b7cf:	xor	dword[esp + 4], ecx
;stack[1048552, 4] ->
;stack[1048552, 4] ->
;put_contents[XCORE_OP_MEM] <- 1748981333
;stack[1048552, 4] <-
l0x98b7d3:	mov	ecx, dword[esp]
;stack[1048552, 0] ->
;put_contents[XCORE_OP_REG] <- initial_ecx
l0x98b7d6:	add	esp, 4
;put_contents[XCORE_OP_REG] <- 1048556
l0x98b7d9:	add	dword[esp], 0xd6c01371
;stack[1048556, 0] ->
;stack[1048556, 0] ->
;put_contents[XCORE_OP_MEM] <- 1056926150
;stack[1048556, 0] <-
l0x98b7e0:	push	esi
l0x98b7e1:	push	edi
l0x98b7e2:	mov	edi, 0x3df9bf0c
;put_contents[XCORE_OP_REG] <- 1039777548
l0x98b7e7:	push	esi
l0x98b7e8:	mov	esi, 0x3ddba9f3
;put_contents[XCORE_OP_REG] <- 1037806067
l0x98b7ed:	xor	edi, esi
;put_contents[XCORE_OP_REG] <- 2234111
l0x98b7ef:	pop	esi
; -> initial_esi
;put_contents[XCORE_OP_REG] <- initial_esi
l0x98b7f0:	dec	edi
;put_contents[XCORE_OP_REG] <- 2234110
l0x98b7f1:	xor	edi, 0x7fffe035
;put_contents[XCORE_OP_REG] <- 2145253067
l0x98b7f7:	sub	edi, 0x37bf0407
;put_contents[XCORE_OP_REG] <- 1209987780
l0x98b7fd:	shl	edi, 3
;put_contents[XCORE_OP_REG] <- 1089967648
l0x98b800:	xor	edi, 0x2f821cad
;put_contents[XCORE_OP_REG] <- 1869974157
l0x98b806:	mov	esi, edi
;put_contents[XCORE_OP_REG] <- 1869974157
l0x98b808:	pop	edi
; -> initial_edi
;put_contents[XCORE_OP_REG] <- initial_edi
l0x98b809:	or	dword[esp + 4], esi
;stack[1048552, 4] ->
;stack[1048552, 4] ->
;put_contents[XCORE_OP_MEM] <- 2147478479
;stack[1048552, 4] <-
l0x98b80d:	pop	esi
; -> initial_esi
;put_contents[XCORE_OP_REG] <- initial_esi
l0x98b80e:	push	ebp
l0x98b80f:	mov	dword[esp], ebx
;put_contents[XCORE_OP_MEM] <- initial_ebx
;stack[1048552, 0] <-
l0x98b812:	mov	ebx, 0x1adbfddd
;put_contents[XCORE_OP_REG] <- 450624989
l0x98b817:	sub	dword[esp + 4], 0x7ff66ada
;stack[1048552, 4] ->
;stack[1048552, 4] ->
;put_contents[XCORE_OP_MEM] <- 622837
;stack[1048552, 4] <-
l0x98b81f:	sub	dword[esp + 4], ebx
;stack[1048552, 4] ->
;stack[1048552, 4] ->
;put_contents[XCORE_OP_MEM] <- 3844965144
;stack[1048552, 4] <-
l0x98b823:	add	dword[esp + 4], 0x7ff66ada
;stack[1048552, 4] ->
;stack[1048552, 4] ->
;put_contents[XCORE_OP_MEM] <- 1696853490
;stack[1048552, 4] <-
l0x98b82b:	pop	ebx
; -> initial_ebx
;put_contents[XCORE_OP_REG] <- initial_ebx
l0x98b82c:	mov	dword[esp], ecx
;put_contents[XCORE_OP_MEM] <- initial_ecx
;stack[1048556, 0] <-
l0x98b82f:	push	ebp
l0x98b830:	mov	ebp, esp
;put_contents[XCORE_OP_REG] <- 1048552
l0x98b832:	add	ebp, 4
;put_contents[XCORE_OP_REG] <- 1048556
l0x98b838:	sub	ebp, 4
;put_contents[XCORE_OP_REG] <- 1048552
l0x98b83b:	xchg	dword[esp], ebp
;stack[1048552, 0] ->
;put_contents[XCORE_OP_MEM] <- 1048552
;stack[1048552, 0] <-
;put_contents[XCORE_OP_REG] <- initial_ebp
l0x98b83e:	mov	esp, dword[esp]
;stack[1048552, 0] ->
;put_contents[XCORE_OP_REG] <- 1048552
l0x98b841:	mov	dword[esp], ebp
;put_contents[XCORE_OP_MEM] <- initial_ebp
;stack[1048552, 0] <-
l0x98b844:	push	ebp
l0x98b845:	mov	dword[esp], edi
;put_contents[XCORE_OP_MEM] <- initial_edi
;stack[1048548, 0] <-
l0x98b848:	mov	edi, 0x9fe4134
;put_contents[XCORE_OP_REG] <- 167657780
l0x98b84d:	mov	dword[esp + 4], edi
;put_contents[XCORE_OP_MEM] <- 167657780
;stack[1048548, 4] <-
l0x98b851:	pop	edi
; -> initial_edi
;put_contents[XCORE_OP_REG] <- initial_edi
l0x98b852:	inc	dword[esp]
;stack[1048552, 0] ->
;stack[1048552, 0] ->
;put_contents[XCORE_OP_MEM] <- 167657781
;stack[1048552, 0] <-
l0x98b855:	dec	dword[esp]
;stack[1048552, 0] ->
;stack[1048552, 0] ->
;put_contents[XCORE_OP_MEM] <- 167657780
;stack[1048552, 0] <-
l0x98b858:	sub	dword[esp], 0x6248d0d5
;stack[1048552, 0] ->
;stack[1048552, 0] ->
;put_contents[XCORE_OP_MEM] <- 2813685855
;stack[1048552, 0] <-
l0x98b85f:	shr	dword[esp], 6
;stack[1048552, 0] ->
;stack[1048552, 0] ->
;put_contents[XCORE_OP_MEM] <- 43963841
;stack[1048552, 0] <-
l0x98b863:	inc	dword[esp]
;stack[1048552, 0] ->
;stack[1048552, 0] ->
;put_contents[XCORE_OP_MEM] <- 43963842
;stack[1048552, 0] <-
l0x98b866:	push	esi
l0x98b867:	mov	esi, 0x7561cbc4
;put_contents[XCORE_OP_REG] <- 1969343428
l0x98b86c:	xor	dword[esp + 4], esi
;stack[1048548, 4] ->
;stack[1048548, 4] ->
;put_contents[XCORE_OP_MEM] <- 2013208070
;stack[1048548, 4] <-
l0x98b870:	pop	esi
; -> initial_esi
;put_contents[XCORE_OP_REG] <- initial_esi
l0x98b871:	not	dword[esp]
;stack[1048552, 0] ->
;stack[1048552, 0] ->
;put_contents[XCORE_OP_MEM] <- 2281759225
;stack[1048552, 0] <-
l0x98b874:	shl	dword[esp], 3
;stack[1048552, 0] ->
;stack[1048552, 0] ->
;put_contents[XCORE_OP_MEM] <- 1074204616
;stack[1048552, 0] <-
l0x98b878:	sub	dword[esp], 1
;stack[1048552, 0] ->
;stack[1048552, 0] ->
;put_contents[XCORE_OP_MEM] <- 1074204615
;stack[1048552, 0] <-
l0x98b87f:	xor	dword[esp], 0x7da38000
;stack[1048552, 0] ->
;stack[1048552, 0] ->
;put_contents[XCORE_OP_MEM] <- 1034194887
;stack[1048552, 0] <-
l0x98b886:	add	dword[esp], 0x346133f3
;stack[1048552, 0] ->
;stack[1048552, 0] ->
;put_contents[XCORE_OP_MEM] <- 1912980410
;stack[1048552, 0] <-
l0x98b88d:	mov	dword[esp], eax
;put_contents[XCORE_OP_MEM] <- initial_eax
;stack[1048552, 0] <-
l0x98b890:	push	ebx
l0x98b891:	mov	ebx, 0x7f92e210
;put_contents[XCORE_OP_REG] <- 2140332560
l0x98b896:	xor	ebx, 0x33866fb9
;put_contents[XCORE_OP_REG] <- 1276415401
l0x98b89c:	mov	dword[esp + 4], ebx
;put_contents[XCORE_OP_MEM] <- 1276415401
;stack[1048548, 4] <-
l0x98b8a0:	push	dword[esp]
;stack[1048548, 0] ->
l0x98b8a3:	mov	ebx, dword[esp]
;stack[1048544, 0] ->
;put_contents[XCORE_OP_REG] <- initial_ebx
l0x98b8a6:	add	esp, 4
;put_contents[XCORE_OP_REG] <- 1048548
l0x98b8ac:	push	edi
l0x98b8ad:	mov	edi, esp
;put_contents[XCORE_OP_REG] <- 1048544
l0x98b8af:	add	edi, 4
;put_contents[XCORE_OP_REG] <- 1048548
l0x98b8b5:	add	edi, 4
;put_contents[XCORE_OP_REG] <- 1048552
l0x98b8b8:	xchg	dword[esp], edi
;stack[1048544, 0] ->
;put_contents[XCORE_OP_MEM] <- 1048552
;stack[1048544, 0] <-
;put_contents[XCORE_OP_REG] <- initial_edi
l0x98b8bb:	mov	esp, dword[esp]
;stack[1048544, 0] ->
;put_contents[XCORE_OP_REG] <- 1048552
l0x98b8be:	mov	dword[esp], edx
;put_contents[XCORE_OP_MEM] <- initial_edx
;stack[1048552, 0] <-
l0x98b8c1:	sub	esp, 4
;put_contents[XCORE_OP_REG] <- 1048548
l0x98b8c7:	mov	dword[esp], edx
;put_contents[XCORE_OP_MEM] <- initial_edx
;stack[1048548, 0] <-
l0x98b8ca:	mov	dword[esp], 0x7f3ab53c
;put_contents[XCORE_OP_MEM] <- 2134553916
;stack[1048548, 0] <-
l0x98b8d1:	add	dword[esp], 0xffffffff
;stack[1048548, 0] ->
;stack[1048548, 0] ->
;put_contents[XCORE_OP_MEM] <- 2134553915
;stack[1048548, 0] <-
l0x98b8d8:	dec	dword[esp]
;stack[1048548, 0] ->
;stack[1048548, 0] ->
;put_contents[XCORE_OP_MEM] <- 2134553914
;stack[1048548, 0] <-
l0x98b8db:	shl	dword[esp], 1
;stack[1048548, 0] ->
;stack[1048548, 0] ->
;put_contents[XCORE_OP_MEM] <- 4269107828
;stack[1048548, 0] <-
l0x98b8df:	not	dword[esp]
;stack[1048548, 0] ->
;stack[1048548, 0] ->
;put_contents[XCORE_OP_MEM] <- 25859467
;stack[1048548, 0] <-
l0x98b8e2:	and	dword[esp], 0x7d9fe726
;stack[1048548, 0] ->
;stack[1048548, 0] ->
;put_contents[XCORE_OP_MEM] <- 25855234
;stack[1048548, 0] <-
l0x98b8e9:	add	dword[esp], 0x7e2d2936
;stack[1048548, 0] ->
;stack[1048548, 0] ->
;put_contents[XCORE_OP_MEM] <- 2142744120
;stack[1048548, 0] <-
l0x98b8f0:	sub	dword[esp], -1
;stack[1048548, 0] ->
;stack[1048548, 0] ->
;put_contents[XCORE_OP_MEM] <- 2142744121
;stack[1048548, 0] <-
l0x98b8f4:	shr	dword[esp], 1
;stack[1048548, 0] ->
;stack[1048548, 0] ->
;put_contents[XCORE_OP_MEM] <- 1071372060
;stack[1048548, 0] <-
l0x98b8f8:	and	dword[esp], 0x7f761e4d
;stack[1048548, 0] ->
;stack[1048548, 0] ->
;put_contents[XCORE_OP_MEM] <- 1062344204
;stack[1048548, 0] <-
l0x98b8ff:	push	edi
l0x98b900:	push	edx
l0x98b901:	push	ebx
l0x98b902:	push	eax
l0x98b903:	mov	dword[esp], 0x6fee4c0c
;put_contents[XCORE_OP_MEM] <- 1877888012
;stack[1048532, 0] <-
l0x98b90a:	pop	ebx
; -> 1877888012
;put_contents[XCORE_OP_REG] <- 1877888012
l0x98b90b:	xchg	ebx, esi
;put_contents[XCORE_OP_REG] <- initial_esi
;put_contents[XCORE_OP_REG] <- 1877888012
l0x98b90d:	neg	esi
;put_contents[XCORE_OP_REG] <- 2417079284
l0x98b90f:	xchg	ebx, esi
;put_contents[XCORE_OP_REG] <- 2417079284
;put_contents[XCORE_OP_REG] <- initial_esi
l0x98b911:	shl	ebx, 3
;put_contents[XCORE_OP_REG] <- 2156765088
l0x98b914:	add	ebx, 0xdadb77a3
;put_contents[XCORE_OP_REG] <- 1533613891
l0x98b91a:	mov	edx, ebx
;put_contents[XCORE_OP_REG] <- 1533613891
l0x98b91c:	pop	ebx
; -> initial_ebx
;put_contents[XCORE_OP_REG] <- initial_ebx
l0x98b91d:	neg	edx
;put_contents[XCORE_OP_REG] <- 2761353405
l0x98b91f:	push	ecx
l0x98b920:	mov	ecx, 0x7bff4511
;put_contents[XCORE_OP_REG] <- 2080326929
l0x98b925:	or	edx, ecx
;put_contents[XCORE_OP_REG] <- 4294962621
l0x98b927:	pop	ecx
; -> initial_ecx
;put_contents[XCORE_OP_REG] <- initial_ecx
l0x98b928:	push	edi
l0x98b929:	mov	edi, 0xe60e0901
;put_contents[XCORE_OP_REG] <- 3859679489
l0x98b92e:	xor	edx, edi
;put_contents[XCORE_OP_REG] <- 435283132
l0x98b930:	pop	edi
; -> initial_edi
;put_contents[XCORE_OP_REG] <- initial_edi
l0x98b931:	mov	edi, edx
;put_contents[XCORE_OP_REG] <- 435283132
l0x98b933:	mov	edx, dword[esp]
;stack[1048540, 0] ->
;put_contents[XCORE_OP_REG] <- initial_edx
l0x98b936:	add	esp, 4
;put_contents[XCORE_OP_REG] <- 1048544
l0x98b939:	sub	dword[esp + 4], edi
;stack[1048544, 4] ->
;stack[1048544, 4] ->
;put_contents[XCORE_OP_MEM] <- 627061072
;stack[1048544, 4] <-
l0x98b93d:	pop	edi
; -> initial_edi
;put_contents[XCORE_OP_REG] <- initial_edi
l0x98b93e:	not	dword[esp]
;stack[1048548, 0] ->
;stack[1048548, 0] ->
;put_contents[XCORE_OP_MEM] <- 3667906223
;stack[1048548, 0] <-
l0x98b941:	add	dword[esp], 0x545e4797
;stack[1048548, 0] ->
;stack[1048548, 0] ->
;put_contents[XCORE_OP_MEM] <- 788403782
;stack[1048548, 0] <-
l0x98b948:	add	dword[esp], 0x75fbdf41
;stack[1048548, 0] ->
;stack[1048548, 0] ->
;put_contents[XCORE_OP_MEM] <- 2767844743
;stack[1048548, 0] <-
l0x98b94f:	shr	dword[esp], 3
;stack[1048548, 0] ->
;stack[1048548, 0] ->
;put_contents[XCORE_OP_MEM] <- 345980592
;stack[1048548, 0] <-
l0x98b953:	sub	dword[esp], 0x7fbf42f7
;stack[1048548, 0] ->
;stack[1048548, 0] ->
;put_contents[XCORE_OP_MEM] <- 2497706937
;stack[1048548, 0] <-
l0x98b95a:	sub	dword[esp], 0x375db61e
;stack[1048548, 0] ->
;stack[1048548, 0] ->
;put_contents[XCORE_OP_MEM] <- 1568818587
;stack[1048548, 0] <-
l0x98b961:	shl	dword[esp], 3
;stack[1048548, 0] ->
;stack[1048548, 0] ->
;put_contents[XCORE_OP_MEM] <- 3960614104
;stack[1048548, 0] <-
l0x98b965:	push	edx
l0x98b966:	push	0x1811cbe4
l0x98b96b:	mov	dword[esp], edi
;put_contents[XCORE_OP_MEM] <- initial_edi
;stack[1048540, 0] <-
l0x98b96e:	mov	edi, 0x3bf68f0d
;put_contents[XCORE_OP_REG] <- 1006014221
l0x98b973:	mov	edx, 0x2d7a461e
;put_contents[XCORE_OP_REG] <- 762988062
l0x98b978:	xor	edx, edi
;put_contents[XCORE_OP_REG] <- 378325267
l0x98b97a:	pop	edi
; -> initial_edi
;put_contents[XCORE_OP_REG] <- initial_edi
l0x98b97b:	add	dword[esp + 4], edx
;stack[1048544, 4] ->
;stack[1048544, 4] ->
;put_contents[XCORE_OP_MEM] <- 43972075
;stack[1048544, 4] <-
l0x98b97f:	mov	edx, dword[esp]
;stack[1048544, 0] ->
;put_contents[XCORE_OP_REG] <- initial_edx
l0x98b982:	add	esp, 4
;put_contents[XCORE_OP_REG] <- 1048548
l0x98b988:	mov	dword[esp], ebx
;put_contents[XCORE_OP_MEM] <- initial_ebx
;stack[1048548, 0] <-
l0x98b98b:	push	ebx
l0x98b98c:	push	0x471913b
l0x98b991:	mov	dword[esp], ebp
;put_contents[XCORE_OP_MEM] <- initial_ebp
;stack[1048540, 0] <-
l0x98b994:	mov	dword[esp], eax
;put_contents[XCORE_OP_MEM] <- initial_eax
;stack[1048540, 0] <-
l0x98b997:	sub	esp, 4
;put_contents[XCORE_OP_REG] <- 1048536
l0x98b99a:	mov	dword[esp], ecx
;put_contents[XCORE_OP_MEM] <- initial_ecx
;stack[1048536, 0] <-
l0x98b99d:	push	edx
l0x98b99e:	push	eax
l0x98b99f:	mov	dword[esp], 0x77fb5352
;put_contents[XCORE_OP_MEM] <- 2012959570
;stack[1048528, 0] <-
l0x98b9a6:	mov	edx, dword[esp]
;stack[1048528, 0] ->
;put_contents[XCORE_OP_REG] <- 2012959570
l0x98b9a9:	add	esp, 4
;put_contents[XCORE_OP_REG] <- 1048532
l0x98b9af:	push	edi
l0x98b9b0:	mov	edi, 0x51be3a2f
;put_contents[XCORE_OP_REG] <- 1371421231
l0x98b9b5:	sub	edx, 0x7f6d1b00
;put_contents[XCORE_OP_REG] <- 4170070098
l0x98b9bb:	push	ebx
l0x98b9bc:	mov	ebx, 0x33b7a638
;put_contents[XCORE_OP_REG] <- 867673656
l0x98b9c1:	sub	ebx, 0x7b756f54
;put_contents[XCORE_OP_REG] <- 3091347172
l0x98b9c7:	inc	ebx
;put_contents[XCORE_OP_REG] <- 3091347173
l0x98b9c8:	shr	ebx, 5
;put_contents[XCORE_OP_REG] <- 96604599
l0x98b9cb:	not	ebx
;put_contents[XCORE_OP_REG] <- 4198362696
l0x98b9cd:	neg	ebx
;put_contents[XCORE_OP_REG] <- 96604600
l0x98b9cf:	add	ebx, 0x242ce43d
;put_contents[XCORE_OP_REG] <- 703526389
l0x98b9d5:	add	edx, ebx
;put_contents[XCORE_OP_REG] <- 578629191
l0x98b9d7:	pop	ebx
; -> initial_ebx
;put_contents[XCORE_OP_REG] <- initial_ebx
l0x98b9d8:	sub	edx, edi
;put_contents[XCORE_OP_REG] <- 3502175256
l0x98b9da:	sub	edx, 0x29eef5f5
;put_contents[XCORE_OP_REG] <- 2798648867
l0x98b9e0:	add	edx, 0x7f6d1b00
;put_contents[XCORE_OP_REG] <- 641538339
l0x98b9e6:	mov	edi, dword[esp]
;stack[1048528, 0] ->
;put_contents[XCORE_OP_REG] <- initial_edi
l0x98b9e9:	add	esp, 4
;put_contents[XCORE_OP_REG] <- 1048532
l0x98b9ef:	mov	ecx, edx
;put_contents[XCORE_OP_REG] <- 641538339
l0x98b9f1:	push	dword[esp]
;stack[1048532, 0] ->
l0x98b9f4:	pop	edx
; -> initial_edx
;put_contents[XCORE_OP_REG] <- initial_edx
l0x98b9f5:	add	esp, 4
;put_contents[XCORE_OP_REG] <- 1048536
l0x98b9f8:	push	ecx
l0x98b9f9:	pop	eax
; -> 641538339
;put_contents[XCORE_OP_REG] <- 641538339
l0x98b9fa:	pop	ecx
; -> initial_ecx
;put_contents[XCORE_OP_REG] <- initial_ecx
l0x98b9fb:	mov	dword[esp + 4], eax
;put_contents[XCORE_OP_MEM] <- 641538339
;stack[1048540, 4] <-
l0x98b9ff:	mov	eax, dword[esp]
;stack[1048540, 0] ->
;put_contents[XCORE_OP_REG] <- initial_eax
l0x98ba02:	push	edx
l0x98ba03:	mov	edx, esp
;put_contents[XCORE_OP_REG] <- 1048536
l0x98ba05:	add	edx, 4
;put_contents[XCORE_OP_REG] <- 1048540
l0x98ba0b:	add	edx, 4
;put_contents[XCORE_OP_REG] <- 1048544
l0x98ba0e:	xchg	dword[esp], edx
;stack[1048536, 0] ->
;put_contents[XCORE_OP_MEM] <- 1048544
;stack[1048536, 0] <-
;put_contents[XCORE_OP_REG] <- initial_edx
l0x98ba11:	pop	esp
; -> 1048544
;put_contents[XCORE_OP_REG] <- 1048544
l0x98ba12:	mov	dword[esp], ebx
;put_contents[XCORE_OP_MEM] <- initial_ebx
;stack[1048544, 0] <-
l0x98ba15:	push	ebp
l0x98ba16:	mov	dword[esp], 0x4e6f4e94
;put_contents[XCORE_OP_MEM] <- 1315917460
;stack[1048540, 0] <-
l0x98ba1d:	push	eax
l0x98ba1e:	mov	eax, 0x7bdd72f6
;put_contents[XCORE_OP_REG] <- 2078110454
l0x98ba23:	xor	dword[esp + 4], eax
;stack[1048536, 4] ->
;stack[1048536, 4] ->
;put_contents[XCORE_OP_MEM] <- 900873314
;stack[1048536, 4] <-
l0x98ba27:	pop	eax
; -> initial_eax
;put_contents[XCORE_OP_REG] <- initial_eax
l0x98ba28:	push	ecx
l0x98ba29:	mov	ecx, 0x27da8faf
;put_contents[XCORE_OP_REG] <- 668635055
l0x98ba2e:	xor	dword[esp + 4], ecx
;stack[1048536, 4] ->
;stack[1048536, 4] ->
;put_contents[XCORE_OP_MEM] <- 308851661
;stack[1048536, 4] <-
l0x98ba32:	pop	ecx
; -> initial_ecx
;put_contents[XCORE_OP_REG] <- initial_ecx
l0x98ba33:	xor	dword[esp], 0x6cb6d1b3
;stack[1048540, 0] ->
;stack[1048540, 0] ->
;put_contents[XCORE_OP_MEM] <- 2128503422
;stack[1048540, 0] <-
l0x98ba3a:	push	ebx
l0x98ba3b:	push	dword[esp + 4]
;stack[1048536, 4] ->
l0x98ba3f:	pop	ebx
; -> 2128503422
;put_contents[XCORE_OP_REG] <- 2128503422
l0x98ba40:	pop	dword[esp]
; -> initial_ebx
;put_contents[XCORE_OP_MEM] <- initial_ebx
;stack[1048540, 0] <-
l0x98ba43:	not	ebx
;put_contents[XCORE_OP_REG] <- 2166463873
l0x98ba45:	xchg	dword[esp], ebx
;stack[1048540, 0] ->
;put_contents[XCORE_OP_MEM] <- 2166463873
;stack[1048540, 0] <-
;put_contents[XCORE_OP_REG] <- initial_ebx
l0x98ba48:	inc	dword[esp]
;stack[1048540, 0] ->
;stack[1048540, 0] ->
;put_contents[XCORE_OP_MEM] <- 2166463874
;stack[1048540, 0] <-
l0x98ba4b:	xchg	dword[esp], ebp
;stack[1048540, 0] ->
;put_contents[XCORE_OP_MEM] <- initial_ebp
;stack[1048540, 0] <-
;put_contents[XCORE_OP_REG] <- 2166463874
l0x98ba4e:	inc	ebp
;put_contents[XCORE_OP_REG] <- 2166463875
l0x98ba4f:	xchg	dword[esp], ebp
;stack[1048540, 0] ->
;put_contents[XCORE_OP_MEM] <- 2166463875
;stack[1048540, 0] <-
;put_contents[XCORE_OP_REG] <- initial_ebp
l0x98ba52:	sub	dword[esp], 1
;stack[1048540, 0] ->
;stack[1048540, 0] ->
;put_contents[XCORE_OP_MEM] <- 2166463874
;stack[1048540, 0] <-
l0x98ba56:	push	ebp
l0x98ba57:	mov	ebp, 0x3b7fca73
;put_contents[XCORE_OP_REG] <- 998230643
l0x98ba5c:	xor	dword[esp + 4], ebp
;stack[1048536, 4] ->
;stack[1048536, 4] ->
;put_contents[XCORE_OP_MEM] <- 3126745073
;stack[1048536, 4] <-
l0x98ba60:	push	dword[esp]
;stack[1048536, 0] ->
l0x98ba63:	pop	ebp
; -> initial_ebp
;put_contents[XCORE_OP_REG] <- initial_ebp
l0x98ba64:	push	ebx
l0x98ba65:	mov	dword[esp], ecx
;put_contents[XCORE_OP_MEM] <- initial_ecx
;stack[1048532, 0] <-
l0x98ba68:	mov	ecx, esp
;put_contents[XCORE_OP_REG] <- 1048532
l0x98ba6a:	push	eax
l0x98ba6b:	mov	eax, 0x5bbf9b71
;put_contents[XCORE_OP_REG] <- 1539283825
l0x98ba70:	add	eax, 0xa4406493
;put_contents[XCORE_OP_REG] <- 4
l0x98ba75:	add	ecx, eax
;put_contents[XCORE_OP_REG] <- 1048536
l0x98ba77:	pop	eax
; -> initial_eax
;put_contents[XCORE_OP_REG] <- initial_eax
l0x98ba78:	push	ebp
l0x98ba79:	mov	ebp, 4
;put_contents[XCORE_OP_REG] <- 4
l0x98ba7e:	sub	ecx, 0x6fe89cdf
;put_contents[XCORE_OP_REG] <- 2418500345
l0x98ba84:	add	ecx, ebp
;put_contents[XCORE_OP_REG] <- 2418500349
l0x98ba86:	add	ecx, 0x6fe89cdf
;put_contents[XCORE_OP_REG] <- 1048540
l0x98ba8c:	pop	ebp
; -> initial_ebp
;put_contents[XCORE_OP_REG] <- initial_ebp
l0x98ba8d:	xchg	dword[esp], ecx
;stack[1048532, 0] ->
;put_contents[XCORE_OP_MEM] <- 1048540
;stack[1048532, 0] <-
;put_contents[XCORE_OP_REG] <- initial_ecx
l0x98ba90:	pop	esp
; -> 1048540
;put_contents[XCORE_OP_REG] <- 1048540
l0x98ba91:	xchg	dword[esp], eax
;stack[1048540, 0] ->
;put_contents[XCORE_OP_MEM] <- initial_eax
;stack[1048540, 0] <-
;put_contents[XCORE_OP_REG] <- 3126745073
l0x98ba94:	not	eax
;put_contents[XCORE_OP_REG] <- 1168222222
l0x98ba96:	xchg	dword[esp], eax
;stack[1048540, 0] ->
;put_contents[XCORE_OP_MEM] <- 1168222222
;stack[1048540, 0] <-
;put_contents[XCORE_OP_REG] <- initial_eax
l0x98ba99:	add	dword[esp], 0x2ebebe28
;stack[1048540, 0] ->
;stack[1048540, 0] ->
;put_contents[XCORE_OP_MEM] <- 1952474678
;stack[1048540, 0] <-
l0x98baa0:	mov	dword[esp], ebp
;put_contents[XCORE_OP_MEM] <- initial_ebp
;stack[1048540, 0] <-
l0x98baa3:	push	ebp
l0x98baa4:	mov	dword[esp], 0x6fd16d37
;put_contents[XCORE_OP_MEM] <- 1875995959
;stack[1048536, 0] <-
l0x98baab:	mov	dword[esp], ebp
;put_contents[XCORE_OP_MEM] <- initial_ebp
;stack[1048536, 0] <-
l0x98baae:	push	edx
l0x98baaf:	mov	dword[esp], 0x5cadffc0
;put_contents[XCORE_OP_MEM] <- 1554907072
;stack[1048532, 0] <-
l0x98bab6:	and	dword[esp], 0x7f1b9924
;stack[1048532, 0] ->
;stack[1048532, 0] ->
;put_contents[XCORE_OP_MEM] <- 1544132864
;stack[1048532, 0] <-
l0x98babd:	xor	dword[esp], 0x765f8fb2
;stack[1048532, 0] ->
;stack[1048532, 0] ->
;put_contents[XCORE_OP_MEM] <- 710284978
;stack[1048532, 0] <-
l0x98bac4:	add	dword[esp], 0xe433a94
;stack[1048532, 0] ->
;stack[1048532, 0] ->
;put_contents[XCORE_OP_MEM] <- 949571910
;stack[1048532, 0] <-
l0x98bacb:	mov	dword[esp], eax
;put_contents[XCORE_OP_MEM] <- initial_eax
;stack[1048532, 0] <-
l0x98bace:	mov	eax, 0x4d459207
;put_contents[XCORE_OP_REG] <- 1296404999
l0x98bad3:	sub	eax, 0x42f8ff8c
;put_contents[XCORE_OP_REG] <- 172790395
l0x98bad8:	inc	eax
;put_contents[XCORE_OP_REG] <- 172790396
l0x98bad9:	push	esi
l0x98bada:	mov	esi, 0x59fbf413
;put_contents[XCORE_OP_REG] <- 1509684243
l0x98badf:	push	eax
l0x98bae0:	mov	eax, 0x38b7a400
;put_contents[XCORE_OP_REG] <- 951559168
l0x98bae5:	not	eax
;put_contents[XCORE_OP_REG] <- 3343408127
l0x98bae7:	sub	eax, 0x6c107bf9
;put_contents[XCORE_OP_REG] <- 1530388486
l0x98baec:	or	esi, eax
;put_contents[XCORE_OP_REG] <- 1543500823
l0x98baee:	pop	eax
; -> 172790396
;put_contents[XCORE_OP_REG] <- 172790396
l0x98baef:	xor	esi, 0x5bfff416
;put_contents[XCORE_OP_REG] <- 1
l0x98baf5:	add	eax, esi
;put_contents[XCORE_OP_REG] <- 172790397
l0x98baf7:	mov	esi, dword[esp]
;stack[1048528, 0] ->
;put_contents[XCORE_OP_REG] <- initial_esi
l0x98bafa:	add	esp, 4
;put_contents[XCORE_OP_REG] <- 1048532
l0x98bb00:	xchg	eax, ecx
;put_contents[XCORE_OP_REG] <- initial_ecx
;put_contents[XCORE_OP_REG] <- 172790397
l0x98bb01:	not	ecx
;put_contents[XCORE_OP_REG] <- 4122176898
l0x98bb03:	xor	eax, ecx
;do_aritm[]] operator 1: XCORE_OP_REG
;put_contents[XCORE_OP_REG] <- <tools.AbstractOp object at 0x7f4a9a1f4908>
;abstract operation op1 <- AbstractOp()
l0x98bb05:	xor	ecx, eax
;do_aritm[]] operator 2: XCORE_OP_REG
;put_contents[XCORE_OP_REG] <- initial_ecx
;abstract operation op1 <- initial_ecx
l0x98bb07:	xor	eax, ecx
;do_aritm[]] operator 1: XCORE_OP_REG
;do_aritm[]] operator 2: XCORE_OP_REG
;put_contents[XCORE_OP_REG] <- 4122176898
;abstract operation op1 <- f5b36d82
l0x98bb09:	xchg	eax, ecx
;put_contents[XCORE_OP_REG] <- initial_ecx
;put_contents[XCORE_OP_REG] <- 4122176898
l0x98bb0a:	not	ecx
;put_contents[XCORE_OP_REG] <- 172790397
l0x98bb0c:	xchg	eax, ecx
;put_contents[XCORE_OP_REG] <- 172790397
;put_contents[XCORE_OP_REG] <- initial_ecx
l0x98bb0d:	sub	eax, 0x916b2ef3
;put_contents[XCORE_OP_REG] <- 2028037002
l0x98bb12:	mov	dword[esp + 4], eax
;put_contents[XCORE_OP_MEM] <- 2028037002
;stack[1048532, 4] <-
l0x98bb16:	mov	eax, dword[esp]
;stack[1048532, 0] ->
;put_contents[XCORE_OP_REG] <- initial_eax
l0x98bb19:	push	edx
l0x98bb1a:	mov	edx, esp
;put_contents[XCORE_OP_REG] <- 1048528
l0x98bb1c:	add	edx, 4
;put_contents[XCORE_OP_REG] <- 1048532
l0x98bb22:	add	edx, 4
;put_contents[XCORE_OP_REG] <- 1048536
l0x98bb28:	xchg	dword[esp], edx
;stack[1048528, 0] ->
;put_contents[XCORE_OP_MEM] <- 1048536
;stack[1048528, 0] <-
;put_contents[XCORE_OP_REG] <- initial_edx
l0x98bb2b:	mov	esp, dword[esp]
;stack[1048528, 0] ->
;put_contents[XCORE_OP_REG] <- 1048536
l0x98bb2e:	mov	dword[esp], edi
;put_contents[XCORE_OP_MEM] <- initial_edi
;stack[1048536, 0] <-
l0x98bb31:	mov	dword[esp], esi
;put_contents[XCORE_OP_MEM] <- initial_esi
;stack[1048536, 0] <-
l0x98bb34:	push	edx
l0x98bb35:	mov	edx, esp
;put_contents[XCORE_OP_REG] <- 1048532
l0x98bb37:	push	eax
l0x98bb38:	mov	eax, 0x7bfe46ca
;put_contents[XCORE_OP_REG] <- 2080261834
l0x98bb3d:	inc	eax
;put_contents[XCORE_OP_REG] <- 2080261835
l0x98bb3e:	and	eax, 0x17b250c2
;put_contents[XCORE_OP_REG] <- 330449090
l0x98bb43:	xor	eax, 0x7ffbd8bc
;put_contents[XCORE_OP_REG] <- 1816762494
l0x98bb48:	neg	eax
;put_contents[XCORE_OP_REG] <- 2478204802
l0x98bb4a:	xor	eax, 0x93b66786
;put_contents[XCORE_OP_REG] <- 4
l0x98bb4f:	add	edx, eax
;put_contents[XCORE_OP_REG] <- 1048536
l0x98bb51:	pop	eax
; -> initial_eax
;put_contents[XCORE_OP_REG] <- initial_eax
l0x98bb52:	push	0x58aeadf1
l0x98bb57:	mov	dword[esp], eax
;put_contents[XCORE_OP_MEM] <- initial_eax
;stack[1048528, 0] <-
l0x98bb5a:	mov	eax, 4
;put_contents[XCORE_OP_REG] <- 4
l0x98bb5f:	push	edx
l0x98bb60:	mov	dword[esp], esi
;put_contents[XCORE_OP_MEM] <- initial_esi
;stack[1048524, 0] <-
l0x98bb63:	push	0x7fbf57d7
l0x98bb68:	mov	esi, dword[esp]
;stack[1048520, 0] ->
;put_contents[XCORE_OP_REG] <- 2143246295
l0x98bb6b:	add	esp, 4
;put_contents[XCORE_OP_REG] <- 1048524
l0x98bb6e:	not	esi
;put_contents[XCORE_OP_REG] <- 2151721000
l0x98bb70:	push	eax
l0x98bb71:	mov	eax, 0
;put_contents[XCORE_OP_REG] <- 0
l0x98bb76:	sub	eax, 0x73efe0d7
;put_contents[XCORE_OP_REG] <- 2349866793
l0x98bb7b:	sub	eax, esi
;put_contents[XCORE_OP_REG] <- 198145793
l0x98bb7d:	add	eax, 0x73efe0d7
;put_contents[XCORE_OP_REG] <- 2143246296
l0x98bb82:	mov	esi, eax
;put_contents[XCORE_OP_REG] <- 2143246296
l0x98bb84:	pop	eax
; -> 4
;put_contents[XCORE_OP_REG] <- 4
l0x98bb85:	sub	esi, 0x55c371b4
;put_contents[XCORE_OP_REG] <- 704374308
l0x98bb8b:	add	edx, 0x7d4f7b5d
;put_contents[XCORE_OP_REG] <- 2103409461
l0x98bb91:	add	edx, esi
;put_contents[XCORE_OP_REG] <- 2807783769
l0x98bb93:	sub	edx, 0x7d4f7b5d
;put_contents[XCORE_OP_REG] <- 705422844
l0x98bb99:	pop	esi
; -> initial_esi
;put_contents[XCORE_OP_REG] <- initial_esi
l0x98bb9a:	sub	edx, eax
;put_contents[XCORE_OP_REG] <- 705422840
l0x98bb9c:	push	ebx
l0x98bb9d:	mov	ebx, 0x2f89ce34
;put_contents[XCORE_OP_REG] <- 797560372
l0x98bba2:	sub	ebx, 0x58de810
;put_contents[XCORE_OP_REG] <- 704374308
l0x98bba8:	sub	edx, ebx
;put_contents[XCORE_OP_REG] <- 1048532
l0x98bbaa:	pop	ebx
; -> initial_ebx
;put_contents[XCORE_OP_REG] <- initial_ebx
l0x98bbab:	mov	eax, dword[esp]
;stack[1048528, 0] ->
;put_contents[XCORE_OP_REG] <- initial_eax
l0x98bbae:	push	ecx
l0x98bbaf:	push	esp
l0x98bbb0:	pop	ecx
; -> 1048524
;put_contents[XCORE_OP_REG] <- 1048524
l0x98bbb1:	add	ecx, 4
;put_contents[XCORE_OP_REG] <- 1048528
l0x98bbb7:	add	ecx, 4
;put_contents[XCORE_OP_REG] <- 1048532
l0x98bbba:	xor	ecx, dword[esp]
;stack[1048524, 0] ->
;do_aritm[]] operator 2: XCORE_OP_MEM
;put_contents[XCORE_OP_REG] <- <tools.AbstractOp object at 0x7f4a9a1baa90>
;abstract operation op1 <- AbstractOp()
l0x98bbbd:	xor	dword[esp], ecx
;stack[1048524, 0] ->
;do_aritm[]] operator 1: XCORE_OP_MEM
;do_aritm[]] operator 2: XCORE_OP_REG
;put_contents[XCORE_OP_MEM] <- 1048532
;stack[1048524, 0] <-
;abstract operation op1 <- fffd4
l0x98bbc0:	xor	ecx, dword[esp]
;stack[1048524, 0] ->
;do_aritm[]] operator 1: XCORE_OP_REG
;put_contents[XCORE_OP_REG] <- initial_ecx
;abstract operation op1 <- initial_ecx
l0x98bbc3:	pop	esp
; -> 1048532
;put_contents[XCORE_OP_REG] <- 1048532
l0x98bbc4:	xor	edx, dword[esp]
;stack[1048532, 0] ->
;do_aritm[]] operator 2: XCORE_OP_MEM
;put_contents[XCORE_OP_REG] <- <tools.AbstractOp object at 0x7f4a9a1bac88>
;abstract operation op1 <- AbstractOp()
l0x98bbc7:	xor	dword[esp], edx
;stack[1048532, 0] ->
;do_aritm[]] operator 1: XCORE_OP_MEM
;do_aritm[]] operator 2: XCORE_OP_REG
;put_contents[XCORE_OP_MEM] <- 1048532
;stack[1048532, 0] <-
;abstract operation op1 <- fffd4
l0x98bbca:	xor	edx, dword[esp]
;stack[1048532, 0] ->
;do_aritm[]] operator 1: XCORE_OP_REG
;put_contents[XCORE_OP_REG] <- initial_edx
;abstract operation op1 <- initial_edx
l0x98bbcd:	mov	esp, dword[esp]
;stack[1048532, 0] ->
;put_contents[XCORE_OP_REG] <- 1048532
l0x98bbd0:	mov	dword[esp], edi
;put_contents[XCORE_OP_MEM] <- initial_edi
;stack[1048532, 0] <-
l0x98bbd3:	push	0x98bbd8
;junk call
;junk call
l0x98bbd8:	push	dword[esp]
;stack[1048528, 0] ->
l0x98bbdb:	push	dword[esp]
;stack[1048524, 0] ->
l0x98bbde:	pop	ecx
; -> 10009560
;put_contents[XCORE_OP_REG] <- 10009560
l0x98bbdf:	push	ecx
l0x98bbe0:	mov	dword[esp], eax
;put_contents[XCORE_OP_MEM] <- initial_eax
;stack[1048520, 0] <-
l0x98bbe3:	push	esp
l0x98bbe4:	pop	eax
; -> 1048520
;put_contents[XCORE_OP_REG] <- 1048520
l0x98bbe5:	add	eax, 4
;put_contents[XCORE_OP_REG] <- 1048524
l0x98bbea:	push	0x1074faee
l0x98bbef:	mov	dword[esp], ebp
;put_contents[XCORE_OP_MEM] <- initial_ebp
;stack[1048516, 0] <-
l0x98bbf2:	mov	ebp, 4
;put_contents[XCORE_OP_REG] <- 4
l0x98bbf7:	add	eax, ebp
;put_contents[XCORE_OP_REG] <- 1048528
l0x98bbf9:	pop	ebp
; -> initial_ebp
;put_contents[XCORE_OP_REG] <- initial_ebp
l0x98bbfa:	push	eax
l0x98bbfb:	push	dword[esp + 4]
;stack[1048516, 4] ->
l0x98bbff:	pop	eax
; -> initial_eax
;put_contents[XCORE_OP_REG] <- initial_eax
l0x98bc00:	pop	dword[esp]
; -> 1048528
;put_contents[XCORE_OP_MEM] <- 1048528
;stack[1048520, 0] <-
l0x98bc03:	pop	esp
; -> 1048528
;put_contents[XCORE_OP_REG] <- 1048528
l0x98bc04:	push	edi
l0x98bc05:	push	esp
l0x98bc06:	push	dword[esp]
;stack[1048520, 0] ->
l0x98bc09:	pop	edi
; -> 1048524
;put_contents[XCORE_OP_REG] <- 1048524
l0x98bc0a:	add	esp, 4
;put_contents[XCORE_OP_REG] <- 1048524
l0x98bc0d:	push	edx
l0x98bc0e:	mov	edx, 4
;put_contents[XCORE_OP_REG] <- 4
l0x98bc13:	add	edi, edx
;put_contents[XCORE_OP_REG] <- 1048528
l0x98bc15:	pop	edx
; -> initial_edx
;put_contents[XCORE_OP_REG] <- initial_edx
l0x98bc16:	sub	esp, 4
;put_contents[XCORE_OP_REG] <- 1048520
l0x98bc1c:	mov	dword[esp], ecx
;put_contents[XCORE_OP_MEM] <- 10009560
;stack[1048520, 0] <-
l0x98bc1f:	mov	ecx, 4
;put_contents[XCORE_OP_REG] <- 4
l0x98bc24:	add	edi, 0x573fdeda
;put_contents[XCORE_OP_REG] <- 1464852138
l0x98bc2a:	add	edi, ecx
;put_contents[XCORE_OP_REG] <- 1464852142
l0x98bc2c:	sub	edi, 0x573fdeda
;put_contents[XCORE_OP_REG] <- 1048532
l0x98bc32:	mov	ecx, dword[esp]
;stack[1048520, 0] ->
;put_contents[XCORE_OP_REG] <- 10009560
l0x98bc35:	add	esp, 4
;put_contents[XCORE_OP_REG] <- 1048524
l0x98bc38:	xchg	dword[esp], edi
;stack[1048524, 0] ->
;put_contents[XCORE_OP_MEM] <- 1048532
;stack[1048524, 0] <-
;put_contents[XCORE_OP_REG] <- initial_edi
l0x98bc3b:	mov	esp, dword[esp]
;stack[1048524, 0] ->
;put_contents[XCORE_OP_REG] <- 1048532
l0x98bc3e:	push	0x56833c7f
l0x98bc43:	mov	dword[esp], ebp
;put_contents[XCORE_OP_MEM] <- initial_ebp
;stack[1048528, 0] <-
l0x98bc46:	mov	dword[esp], eax
;put_contents[XCORE_OP_MEM] <- initial_eax
;stack[1048528, 0] <-
l0x98bc49:	push	esp
l0x98bc4a:	pop	eax
; -> 1048528
;put_contents[XCORE_OP_REG] <- 1048528
l0x98bc4b:	push	esi
l0x98bc4c:	mov	esi, 0x57d331f5
;put_contents[XCORE_OP_REG] <- 1473458677
l0x98bc51:	shl	esi, 6
;put_contents[XCORE_OP_REG] <- 4107042112
l0x98bc54:	add	esi, 0xb3382c4
;put_contents[XCORE_OP_REG] <- 4
l0x98bc5a:	add	eax, esi
;put_contents[XCORE_OP_REG] <- 1048532
l0x98bc5c:	mov	esi, dword[esp]
;stack[1048524, 0] ->
;put_contents[XCORE_OP_REG] <- initial_esi
l0x98bc5f:	add	esp, 4
;put_contents[XCORE_OP_REG] <- 1048528
l0x98bc62:	sub	eax, 4
;put_contents[XCORE_OP_REG] <- 1048528
l0x98bc67:	xchg	dword[esp], eax
;stack[1048528, 0] ->
;put_contents[XCORE_OP_MEM] <- 1048528
;stack[1048528, 0] <-
;put_contents[XCORE_OP_REG] <- initial_eax
l0x98bc6a:	mov	esp, dword[esp]
;stack[1048528, 0] ->
;put_contents[XCORE_OP_REG] <- 1048528
l0x98bc6d:	mov	dword[esp], eax
;put_contents[XCORE_OP_MEM] <- initial_eax
;stack[1048528, 0] <-
l0x98bc70:	mov	dword[esp], ebp
;put_contents[XCORE_OP_MEM] <- initial_ebp
;stack[1048528, 0] <-
l0x98bc73:	push	eax
l0x98bc74:	push	0x7d3c7975
l0x98bc79:	pop	eax
; -> 2101115253
;put_contents[XCORE_OP_REG] <- 2101115253
l0x98bc7a:	add	eax, 0x3f577e28
;put_contents[XCORE_OP_REG] <- 3163813789
l0x98bc7f:	sub	eax, 0xbc93f254
;put_contents[XCORE_OP_REG] <- 1353
l0x98bc84:	mov	ebp, eax
;put_contents[XCORE_OP_REG] <- 1353
l0x98bc86:	pop	eax
; -> initial_eax
;put_contents[XCORE_OP_REG] <- initial_eax
l0x98bc87:	sub	ecx, ebp
;put_contents[XCORE_OP_REG] <- 10008207
l0x98bc89:	mov	ebp, dword[esp]
;stack[1048528, 0] ->
;put_contents[XCORE_OP_REG] <- initial_ebp
l0x98bc8c:	push	edx
l0x98bc8d:	push	esp
l0x98bc8e:	pop	edx
; -> 1048524
;put_contents[XCORE_OP_REG] <- 1048524
l0x98bc8f:	add	edx, 4
;put_contents[XCORE_OP_REG] <- 1048528
l0x98bc95:	push	ecx
l0x98bc96:	mov	ecx, 4
;put_contents[XCORE_OP_REG] <- 4
l0x98bc9b:	sub	edx, 0x7fd7fc5a
;put_contents[XCORE_OP_REG] <- 2151154550
l0x98bca1:	add	edx, ecx
;put_contents[XCORE_OP_REG] <- 2151154554
l0x98bca3:	push	ecx
l0x98bca4:	mov	ecx, 0x7fd7fc5a
;put_contents[XCORE_OP_REG] <- 2144861274
l0x98bca9:	add	edx, ecx
;put_contents[XCORE_OP_REG] <- 1048532
l0x98bcab:	pop	ecx
; -> 4
;put_contents[XCORE_OP_REG] <- 4
l0x98bcac:	mov	ecx, dword[esp]
;stack[1048520, 0] ->
;put_contents[XCORE_OP_REG] <- 10008207
l0x98bcaf:	add	esp, 4
;put_contents[XCORE_OP_REG] <- 1048524
l0x98bcb2:	push	edx
l0x98bcb3:	push	dword[esp + 4]
;stack[1048520, 4] ->
l0x98bcb7:	pop	edx
; -> initial_edx
;put_contents[XCORE_OP_REG] <- initial_edx
l0x98bcb8:	pop	dword[esp]
; -> 1048532
;put_contents[XCORE_OP_MEM] <- 1048532
;stack[1048524, 0] <-
l0x98bcbb:	mov	esp, dword[esp]
;stack[1048524, 0] ->
;put_contents[XCORE_OP_REG] <- 1048532
l0x98bcbe:	push	0xda41ddf
l0x98bcc3:	mov	dword[esp], esi
;put_contents[XCORE_OP_MEM] <- initial_esi
;stack[1048528, 0] <-
l0x98bcc6:	sub	esp, 4
;put_contents[XCORE_OP_REG] <- 1048524
l0x98bcc9:	mov	dword[esp], edx
;put_contents[XCORE_OP_MEM] <- initial_edx
;stack[1048524, 0] <-
l0x98bccc:	push	edi
l0x98bccd:	mov	edi, 0x67e3d6f1
;put_contents[XCORE_OP_REG] <- 1742984945
l0x98bcd2:	mov	edx, 0xe320feec
;put_contents[XCORE_OP_REG] <- 3810590444
l0x98bcd7:	sub	edx, edi
;put_contents[XCORE_OP_REG] <- 2067605499
l0x98bcd9:	pop	edi
; -> initial_edi
;put_contents[XCORE_OP_REG] <- initial_edi
l0x98bcda:	sub	edx, 0x7f7b15a5
;put_contents[XCORE_OP_REG] <- 4223799894
l0x98bce0:	push	ebx
l0x98bce1:	mov	dword[esp], esi
;put_contents[XCORE_OP_MEM] <- initial_esi
;stack[1048520, 0] <-
l0x98bce4:	mov	dword[esp], ecx
;put_contents[XCORE_OP_MEM] <- 10008207
;stack[1048520, 0] <-
l0x98bce7:	push	ebx
l0x98bce8:	mov	ebx, 0x4f7f3421
;put_contents[XCORE_OP_REG] <- 1333736481
l0x98bced:	sub	ebx, 0x53e48f48
;put_contents[XCORE_OP_REG] <- 4221215961
l0x98bcf3:	mov	ecx, ebx
;put_contents[XCORE_OP_REG] <- 4221215961
l0x98bcf5:	pop	ebx
; -> initial_ebx
;put_contents[XCORE_OP_REG] <- initial_ebx
l0x98bcf6:	xor	edx, ecx
;put_contents[XCORE_OP_REG] <- 5813903
l0x98bcf8:	mov	ecx, dword[esp]
;stack[1048520, 0] ->
;put_contents[XCORE_OP_REG] <- 10008207
l0x98bcfb:	add	esp, 4
;put_contents[XCORE_OP_REG] <- 1048524
l0x98bcfe:	mov	esi, edx
;put_contents[XCORE_OP_REG] <- 5813903
l0x98bd00:	pop	edx
; -> initial_edx
;put_contents[XCORE_OP_REG] <- initial_edx
l0x98bd01:	sub	esp, 4
;put_contents[XCORE_OP_REG] <- 1048524
l0x98bd04:	mov	dword[esp], edx
;put_contents[XCORE_OP_MEM] <- initial_edx
;stack[1048524, 0] <-
l0x98bd07:	mov	edx, 0x3fffc4a7
;put_contents[XCORE_OP_REG] <- 1073726631
l0x98bd0c:	shr	edx, 2
;put_contents[XCORE_OP_REG] <- 268431657
l0x98bd0f:	sub	edx, 0x5d7d74a2
;put_contents[XCORE_OP_REG] <- 2994896007
l0x98bd15:	add	edx, 0x3c9bf4b4
;put_contents[XCORE_OP_REG] <- 4011749691
l0x98bd1b:	dec	edx
;put_contents[XCORE_OP_REG] <- 4011749690
l0x98bd1c:	sub	edx, 0x6f42dead
;put_contents[XCORE_OP_REG] <- 2145096333
l0x98bd22:	add	ecx, edx
;put_contents[XCORE_OP_REG] <- 2155104540
l0x98bd24:	mov	edx, dword[esp]
;stack[1048524, 0] ->
;put_contents[XCORE_OP_REG] <- initial_edx
l0x98bd27:	add	esp, 4
;put_contents[XCORE_OP_REG] <- 1048528
l0x98bd2a:	push	ebx
l0x98bd2b:	mov	ebx, 0x7f7d3bb7
;put_contents[XCORE_OP_REG] <- 2138913719
l0x98bd30:	sub	ecx, ebx
;put_contents[XCORE_OP_REG] <- 16190821
l0x98bd32:	pop	ebx
; -> initial_ebx
;put_contents[XCORE_OP_REG] <- initial_ebx
l0x98bd33:	sub	ecx, 0x3cf8b725
;put_contents[XCORE_OP_REG] <- 3288225344
l0x98bd39:	sub	ecx, esi
;put_contents[XCORE_OP_REG] <- 3282411441
l0x98bd3b:	add	ecx, 0x3cf8b725
;put_contents[XCORE_OP_REG] <- 10376918
l0x98bd41:	push	ebp
l0x98bd42:	mov	ebp, 0x7f7d3bb7
;put_contents[XCORE_OP_REG] <- 2138913719
l0x98bd47:	add	ecx, ebp
;put_contents[XCORE_OP_REG] <- 2149290637
l0x98bd49:	pop	ebp
; -> initial_ebp
;put_contents[XCORE_OP_REG] <- initial_ebp
l0x98bd4a:	push	ebx
l0x98bd4b:	mov	ebx, 0x7fdb928d
;put_contents[XCORE_OP_REG] <- 2145096333
l0x98bd50:	sub	ecx, ebx
;put_contents[XCORE_OP_REG] <- 4194304
l0x98bd52:	pop	ebx
; -> initial_ebx
;put_contents[XCORE_OP_REG] <- initial_ebx
l0x98bd53:	mov	esi, dword[esp]
;stack[1048528, 0] ->
;put_contents[XCORE_OP_REG] <- initial_esi
l0x98bd56:	add	esp, 4
;put_contents[XCORE_OP_REG] <- 1048532
l0x98bd5c:	push	edx
l0x98bd5d:	mov	edx, esp
;put_contents[XCORE_OP_REG] <- 1048528
l0x98bd5f:	push	esi
l0x98bd60:	mov	esi, 4
;put_contents[XCORE_OP_REG] <- 4
l0x98bd65:	sub	edx, 0x76f6d711
;put_contents[XCORE_OP_REG] <- 2300127423
l0x98bd6b:	sub	edx, 0x5fefa834
;put_contents[XCORE_OP_REG] <- 690585739
l0x98bd71:	add	edx, esi
;put_contents[XCORE_OP_REG] <- 690585743
l0x98bd73:	add	edx, 0x5fefa834
;put_contents[XCORE_OP_REG] <- 2300127427
l0x98bd79:	push	edi
l0x98bd7a:	mov	edi, 0x76f6d711
;put_contents[XCORE_OP_REG] <- 1995888401
l0x98bd7f:	add	edx, edi
;put_contents[XCORE_OP_REG] <- 1048532
l0x98bd81:	pop	edi
; -> initial_edi
;put_contents[XCORE_OP_REG] <- initial_edi
l0x98bd82:	pop	esi
; -> initial_esi
;put_contents[XCORE_OP_REG] <- initial_esi
l0x98bd83:	sub	edx, 4
;put_contents[XCORE_OP_REG] <- 1048528
l0x98bd86:	push	edi
l0x98bd87:	mov	edi, esp
;put_contents[XCORE_OP_REG] <- 1048524
l0x98bd89:	push	ebp
l0x98bd8a:	mov	ebp, 4
;put_contents[XCORE_OP_REG] <- 4
l0x98bd8f:	add	edi, ebp
;put_contents[XCORE_OP_REG] <- 1048528
l0x98bd91:	pop	ebp
; -> initial_ebp
;put_contents[XCORE_OP_REG] <- initial_ebp
l0x98bd92:	sub	edi, 4
;put_contents[XCORE_OP_REG] <- 1048524
l0x98bd98:	xchg	dword[esp], edi
;stack[1048524, 0] ->
;put_contents[XCORE_OP_MEM] <- 1048524
;stack[1048524, 0] <-
;put_contents[XCORE_OP_REG] <- initial_edi
l0x98bd9b:	pop	esp
; -> 1048524
;put_contents[XCORE_OP_REG] <- 1048524
l0x98bd9c:	mov	dword[esp], edx
;put_contents[XCORE_OP_MEM] <- 1048528
;stack[1048524, 0] <-
l0x98bd9f:	push	dword[esp + 4]
;stack[1048524, 4] ->
l0x98bda3:	pop	edx
; -> initial_edx
;put_contents[XCORE_OP_REG] <- initial_edx
l0x98bda4:	pop	dword[esp]
; -> 1048528
;put_contents[XCORE_OP_MEM] <- 1048528
;stack[1048528, 0] <-
l0x98bda7:	pop	esp
; -> 1048528
;put_contents[XCORE_OP_REG] <- 1048528
l0x98bda8:	mov	dword[esp], edx
;put_contents[XCORE_OP_MEM] <- initial_edx
;stack[1048528, 0] <-
l0x98bdab:	push	0x777fb361
l0x98bdb0:	pop	edx
; -> 2004857697
;put_contents[XCORE_OP_REG] <- 2004857697
l0x98bdb1:	xor	edx, 0x77445544
;put_contents[XCORE_OP_REG] <- 3925541
l0x98bdb7:	mov	ebp, edx
;put_contents[XCORE_OP_REG] <- 3925541
l0x98bdb9:	push	dword[esp]
;stack[1048528, 0] ->
l0x98bdbc:	pop	edx
; -> initial_edx
;put_contents[XCORE_OP_REG] <- initial_edx
l0x98bdbd:	sub	esp, 4
;put_contents[XCORE_OP_REG] <- 1048524
l0x98bdc3:	mov	dword[esp], eax
;put_contents[XCORE_OP_MEM] <- initial_eax
;stack[1048524, 0] <-
l0x98bdc6:	push	esp
l0x98bdc7:	pop	eax
; -> 1048524
;put_contents[XCORE_OP_REG] <- 1048524
l0x98bdc8:	add	eax, 4
;put_contents[XCORE_OP_REG] <- 1048528
l0x98bdcd:	push	0x13cf3cd0
l0x98bdd2:	mov	dword[esp], ebx
;put_contents[XCORE_OP_MEM] <- initial_ebx
;stack[1048520, 0] <-
l0x98bdd5:	mov	ebx, 4
;put_contents[XCORE_OP_REG] <- 4
l0x98bdda:	add	eax, ebx
;put_contents[XCORE_OP_REG] <- 1048532
l0x98bddc:	mov	ebx, dword[esp]
;stack[1048520, 0] ->
;put_contents[XCORE_OP_REG] <- initial_ebx
l0x98bddf:	add	esp, 4
;put_contents[XCORE_OP_REG] <- 1048524
l0x98bde2:	xchg	dword[esp], eax
;stack[1048524, 0] ->
;put_contents[XCORE_OP_MEM] <- 1048532
;stack[1048524, 0] <-
;put_contents[XCORE_OP_REG] <- initial_eax
l0x98bde5:	mov	esp, dword[esp]
;stack[1048524, 0] ->
;put_contents[XCORE_OP_REG] <- 1048532
l0x98bde8:	push	edx
l0x98bde9:	mov	dword[esp], 0x4e4be292
;put_contents[XCORE_OP_MEM] <- 1313596050
;stack[1048528, 0] <-
l0x98bdf0:	mov	dword[esp], eax
;put_contents[XCORE_OP_MEM] <- initial_eax
;stack[1048528, 0] <-
l0x98bdf3:	mov	eax, 0x5bed5217
;put_contents[XCORE_OP_REG] <- 1542279703
l0x98bdf8:	add	ebp, eax
;put_contents[XCORE_OP_REG] <- 1546205244
l0x98bdfa:	pop	eax
; -> initial_eax
;put_contents[XCORE_OP_REG] <- initial_eax
l0x98bdfb:	add	ebp, 0x7dffaa62
;put_contents[XCORE_OP_REG] <- 3660112542
l0x98be01:	add	ebp, 0x6bf74ee5
;put_contents[XCORE_OP_REG] <- 1176514947
l0x98be07:	add	ebp, ecx
;put_contents[XCORE_OP_REG] <- 1180709251
l0x98be09:	sub	ebp, 0x6bf74ee5
;put_contents[XCORE_OP_REG] <- 3664306846
l0x98be0f:	push	edx
l0x98be10:	push	0x3fff9123
l0x98be15:	mov	edx, dword[esp]
;stack[1048524, 0] ->
;put_contents[XCORE_OP_REG] <- 1073713443
l0x98be18:	add	esp, 4
;put_contents[XCORE_OP_REG] <- 1048528
l0x98be1b:	inc	edx
;put_contents[XCORE_OP_REG] <- 1073713444
l0x98be1c:	shl	edx, 6
;put_contents[XCORE_OP_REG] <- 4293150976
l0x98be1f:	xor	edx, 0x821be362
;put_contents[XCORE_OP_REG] <- 2113907298
l0x98be25:	sub	ebp, edx
;put_contents[XCORE_OP_REG] <- 1550399548
l0x98be27:	mov	edx, dword[esp]
;stack[1048528, 0] ->
;put_contents[XCORE_OP_REG] <- initial_edx
l0x98be2a:	add	esp, 4
;put_contents[XCORE_OP_REG] <- 1048532
l0x98be2d:	push	edi
l0x98be2e:	mov	edi, 0x7f3e3400
;put_contents[XCORE_OP_REG] <- 2134782976
l0x98be33:	shl	edi, 3
;put_contents[XCORE_OP_REG] <- 4193361920
l0x98be36:	push	eax
l0x98be37:	mov	eax, 0xb9f959c
;put_contents[XCORE_OP_REG] <- 195007900
l0x98be3c:	shl	eax, 3
;put_contents[XCORE_OP_REG] <- 1560063200
l0x98be3f:	sub	eax, 0x1ffdaeed
;put_contents[XCORE_OP_REG] <- 1023344115
l0x98be44:	shl	eax, 8
;put_contents[XCORE_OP_REG] <- 4278055680
l0x98be47:	or	eax, 0x1ffff329
;put_contents[XCORE_OP_REG] <- 4294964009
l0x98be4c:	push	edi
l0x98be4d:	mov	edi, 0x7d777ffa
;put_contents[XCORE_OP_REG] <- 2104983546
l0x98be52:	shr	edi, 3
;put_contents[XCORE_OP_REG] <- 263122943
l0x98be55:	push	esi
l0x98be56:	mov	esi, 0x766edd3d
;put_contents[XCORE_OP_REG] <- 1986977085
l0x98be5b:	add	esi, 0xfb7c74be
;put_contents[XCORE_OP_REG] <- 1911247355
l0x98be61:	xor	edi, esi
;put_contents[XCORE_OP_REG] <- 2118499844
l0x98be63:	pop	esi
; -> initial_esi
;put_contents[XCORE_OP_REG] <- initial_esi
l0x98be64:	shr	edi, 4
;put_contents[XCORE_OP_REG] <- 132406240
l0x98be67:	push	esi
l0x98be68:	mov	esi, 0x87443fde
;put_contents[XCORE_OP_REG] <- 2269396958
l0x98be6d:	sub	edi, esi
;put_contents[XCORE_OP_REG] <- 2157976578
l0x98be6f:	pop	esi
; -> initial_esi
;put_contents[XCORE_OP_REG] <- initial_esi
l0x98be70:	sub	eax, edi
;put_contents[XCORE_OP_REG] <- 2136987431
l0x98be72:	pop	edi
; -> 4193361920
;put_contents[XCORE_OP_REG] <- 4193361920
l0x98be73:	xor	edi, eax
;put_contents[XCORE_OP_REG] <- 2259580711
l0x98be75:	mov	eax, dword[esp]
;stack[1048524, 0] ->
;put_contents[XCORE_OP_REG] <- initial_eax
l0x98be78:	add	esp, 4
;put_contents[XCORE_OP_REG] <- 1048528
l0x98be7b:	sub	edi, 0x3b59c499
;put_contents[XCORE_OP_REG] <- 1263841934
l0x98be81:	add	edi, 0x10989f89
;put_contents[XCORE_OP_REG] <- 1542279703
l0x98be87:	sub	ebp, edi
;put_contents[XCORE_OP_REG] <- 8119845
l0x98be89:	mov	edi, dword[esp]
;stack[1048528, 0] ->
;put_contents[XCORE_OP_REG] <- initial_edi
l0x98be8c:	push	edx
l0x98be8d:	push	esp
l0x98be8e:	pop	edx
; -> 1048524
;put_contents[XCORE_OP_REG] <- 1048524
l0x98be8f:	add	edx, 4
;put_contents[XCORE_OP_REG] <- 1048528
l0x98be95:	push	ebx
l0x98be96:	mov	ebx, 4
;put_contents[XCORE_OP_REG] <- 4
l0x98be9b:	add	edx, ebx
;put_contents[XCORE_OP_REG] <- 1048532
l0x98be9d:	pop	ebx
; -> initial_ebx
;put_contents[XCORE_OP_REG] <- initial_ebx
l0x98be9e:	xchg	dword[esp], edx
;stack[1048524, 0] ->
;put_contents[XCORE_OP_MEM] <- 1048532
;stack[1048524, 0] <-
;put_contents[XCORE_OP_REG] <- initial_edx
l0x98bea1:	pop	esp
; -> 1048532
;put_contents[XCORE_OP_REG] <- 1048532
l0x98bea2:	push	edi
l0x98bea3:	push	esp
l0x98bea4:	mov	edi, dword[esp]
;stack[1048524, 0] ->
;put_contents[XCORE_OP_REG] <- 1048528
l0x98bea7:	add	esp, 4
;put_contents[XCORE_OP_REG] <- 1048528
l0x98bead:	push	eax
l0x98beae:	push	edx
l0x98beaf:	mov	edx, 0x7f7b0bc9
;put_contents[XCORE_OP_REG] <- 2138770377
l0x98beb4:	mov	eax, 0xb55ec9ca
;put_contents[XCORE_OP_REG] <- 3042888138
l0x98beb9:	sub	eax, edx
;put_contents[XCORE_OP_REG] <- 904117761
l0x98bebb:	pop	edx
; -> initial_edx
;put_contents[XCORE_OP_REG] <- initial_edx
l0x98bebc:	push	0xadb46ab
l0x98bec1:	mov	dword[esp], esi
;put_contents[XCORE_OP_MEM] <- initial_esi
;stack[1048520, 0] <-
l0x98bec4:	mov	esi, 0xffffffff
;put_contents[XCORE_OP_REG] <- 4294967295
l0x98bec9:	sub	eax, 0x130d18e8
;put_contents[XCORE_OP_REG] <- 584492313
l0x98bece:	sub	eax, esi
;put_contents[XCORE_OP_REG] <- 584492314
l0x98bed0:	add	eax, 0x130d18e8
;put_contents[XCORE_OP_REG] <- 904117762
l0x98bed5:	pop	esi
; -> initial_esi
;put_contents[XCORE_OP_REG] <- initial_esi
l0x98bed6:	shr	eax, 1
;put_contents[XCORE_OP_REG] <- 452058881
l0x98bed9:	sub	eax, 0x1ab7450b
;put_contents[XCORE_OP_REG] <- 3840502
l0x98bede:	add	eax, 0x7ef04af7
;put_contents[XCORE_OP_REG] <- 2133517549
l0x98bee3:	add	eax, 0x80d51b17
;put_contents[XCORE_OP_REG] <- 4
l0x98bee8:	add	edi, eax
;put_contents[XCORE_OP_REG] <- 1048532
l0x98beea:	push	dword[esp]
;stack[1048524, 0] ->
l0x98beed:	pop	eax
; -> initial_eax
;put_contents[XCORE_OP_REG] <- initial_eax
l0x98beee:	push	eax
l0x98beef:	mov	dword[esp], ebp
;put_contents[XCORE_OP_MEM] <- 8119845
;stack[1048520, 0] <-
l0x98bef2:	mov	ebp, esp
;put_contents[XCORE_OP_REG] <- 1048520
l0x98bef4:	add	ebp, 4
;put_contents[XCORE_OP_REG] <- 1048524
l0x98befa:	add	ebp, 4
;put_contents[XCORE_OP_REG] <- 1048528
l0x98bf00:	xchg	dword[esp], ebp
;stack[1048520, 0] ->
;put_contents[XCORE_OP_MEM] <- 1048528
;stack[1048520, 0] <-
;put_contents[XCORE_OP_REG] <- 8119845
l0x98bf03:	mov	esp, dword[esp]
;stack[1048520, 0] ->
;put_contents[XCORE_OP_REG] <- 1048528
l0x98bf06:	sub	edi, 4
;put_contents[XCORE_OP_REG] <- 1048528
l0x98bf0c:	push	edi
l0x98bf0d:	push	dword[esp + 4]
;stack[1048524, 4] ->
l0x98bf11:	mov	edi, dword[esp]
;stack[1048520, 0] ->
;put_contents[XCORE_OP_REG] <- initial_edi
l0x98bf14:	add	esp, 4
;put_contents[XCORE_OP_REG] <- 1048524
l0x98bf17:	pop	dword[esp]
; -> 1048528
;put_contents[XCORE_OP_MEM] <- 1048528
;stack[1048528, 0] <-
l0x98bf1a:	mov	esp, dword[esp]
;stack[1048528, 0] ->
;put_contents[XCORE_OP_REG] <- 1048528
l0x98bf1d:	mov	dword[esp], edx
;put_contents[XCORE_OP_MEM] <- initial_edx
;stack[1048528, 0] <-
l0x98bf20:	mov	dword[esp], eax
;put_contents[XCORE_OP_MEM] <- initial_eax
;stack[1048528, 0] <-
l0x98bf23:	mov	dword[esp], ecx
;put_contents[XCORE_OP_MEM] <- 4194304
;stack[1048528, 0] <-
l0x98bf26:	push	esi
l0x98bf27:	push	0x75d31900
l0x98bf2c:	push	dword[esp]
;stack[1048520, 0] ->
l0x98bf2f:	pop	esi
; -> 1976768768
;put_contents[XCORE_OP_REG] <- 1976768768
l0x98bf30:	add	esp, 4
;put_contents[XCORE_OP_REG] <- 1048524
l0x98bf36:	xor	esi, edx
;do_aritm[]] operator 2: XCORE_OP_REG
;put_contents[XCORE_OP_REG] <- <tools.AbstractOp object at 0x7f4a9a108da0>
;abstract operation op1 <- AbstractOp()
l0x98bf38:	xor	edx, esi
;do_aritm[]] operator 1: XCORE_OP_REG
;do_aritm[]] operator 2: XCORE_OP_REG
;put_contents[XCORE_OP_REG] <- 1976768768
;abstract operation op1 <- 75d31900
l0x98bf3a:	xor	esi, edx
;do_aritm[]] operator 1: XCORE_OP_REG
;put_contents[XCORE_OP_REG] <- initial_edx
;abstract operation op1 <- initial_edx
l0x98bf3c:	xchg	edx, edi
;put_contents[XCORE_OP_REG] <- initial_edi
;put_contents[XCORE_OP_REG] <- 1976768768
l0x98bf3e:	not	edi
;put_contents[XCORE_OP_REG] <- 2318198527
l0x98bf40:	push	edx
l0x98bf41:	push	0x6bdf4692
l0x98bf46:	mov	dword[esp], edi
;put_contents[XCORE_OP_MEM] <- 2318198527
;stack[1048516, 0] <-
l0x98bf49:	pop	edx
; -> 2318198527
;put_contents[XCORE_OP_REG] <- 2318198527
l0x98bf4a:	pop	edi
; -> initial_edi
;put_contents[XCORE_OP_REG] <- initial_edi
l0x98bf4b:	xor	esi, edx
;do_aritm[]] operator 1: XCORE_OP_REG
;put_contents[XCORE_OP_REG] <- <tools.AbstractOp object at 0x7f4a9a118668>
;abstract operation op1 <- AbstractOp()
l0x98bf4d:	xor	edx, esi
;do_aritm[]] operator 2: XCORE_OP_REG
;put_contents[XCORE_OP_REG] <- initial_edx
;abstract operation op1 <- initial_edx
l0x98bf4f:	xor	esi, edx
;do_aritm[]] operator 1: XCORE_OP_REG
;do_aritm[]] operator 2: XCORE_OP_REG
;put_contents[XCORE_OP_REG] <- 2318198527
;abstract operation op1 <- 8a2ce6ff
l0x98bf51:	xor	esi, 0x8a2ce6fe
;put_contents[XCORE_OP_REG] <- 1
l0x98bf57:	sub	esp, 4
;put_contents[XCORE_OP_REG] <- 1048520
l0x98bf5d:	mov	dword[esp], edx
;put_contents[XCORE_OP_MEM] <- initial_edx
;stack[1048520, 0] <-
l0x98bf60:	mov	edx, esi
;put_contents[XCORE_OP_REG] <- 1
l0x98bf62:	push	eax
l0x98bf63:	mov	eax, edx
;put_contents[XCORE_OP_REG] <- 1
l0x98bf65:	push	eax
l0x98bf66:	xor	dword[esp], 0x3aef109e
;stack[1048512, 0] ->
;stack[1048512, 0] ->
;put_contents[XCORE_OP_MEM] <- 988745887
;stack[1048512, 0] <-
l0x98bf6d:	pop	ecx
; -> 988745887
;put_contents[XCORE_OP_REG] <- 988745887
l0x98bf6e:	xor	ecx, 0x3aef109e
;put_contents[XCORE_OP_REG] <- 1
l0x98bf74:	mov	eax, dword[esp]
;stack[1048516, 0] ->
;put_contents[XCORE_OP_REG] <- initial_eax
l0x98bf77:	add	esp, 4
;put_contents[XCORE_OP_REG] <- 1048520
l0x98bf7d:	mov	edx, dword[esp]
;stack[1048520, 0] ->
;put_contents[XCORE_OP_REG] <- initial_edx
l0x98bf80:	add	esp, 4
;put_contents[XCORE_OP_REG] <- 1048524
l0x98bf86:	mov	esi, dword[esp]
;stack[1048524, 0] ->
;put_contents[XCORE_OP_REG] <- initial_esi
l0x98bf89:	push	eax
l0x98bf8a:	push	esp
l0x98bf8b:	pop	eax
; -> 1048520
;put_contents[XCORE_OP_REG] <- 1048520
l0x98bf8c:	add	eax, 4
;put_contents[XCORE_OP_REG] <- 1048524
l0x98bf91:	push	esi
l0x98bf92:	mov	esi, 4
;put_contents[XCORE_OP_REG] <- 4
l0x98bf97:	add	eax, esi
;put_contents[XCORE_OP_REG] <- 1048528
l0x98bf99:	pop	esi
; -> initial_esi
;put_contents[XCORE_OP_REG] <- initial_esi
l0x98bf9a:	xor	eax, dword[esp]
;stack[1048520, 0] ->
;do_aritm[]] operator 2: XCORE_OP_MEM
;put_contents[XCORE_OP_REG] <- <tools.AbstractOp object at 0x7f4a9a13b278>
;abstract operation op1 <- AbstractOp()
l0x98bf9d:	xor	dword[esp], eax
;stack[1048520, 0] ->
;do_aritm[]] operator 1: XCORE_OP_MEM
;do_aritm[]] operator 2: XCORE_OP_REG
;put_contents[XCORE_OP_MEM] <- 1048528
;stack[1048520, 0] <-
;abstract operation op1 <- fffd0
l0x98bfa0:	xor	eax, dword[esp]
;stack[1048520, 0] ->
;do_aritm[]] operator 1: XCORE_OP_REG
;put_contents[XCORE_OP_REG] <- initial_eax
;abstract operation op1 <- initial_eax
l0x98bfa3:	pop	esp
; -> 1048528
;put_contents[XCORE_OP_REG] <- 1048528
l0x98bfa4:	sub	esp, 4
;put_contents[XCORE_OP_REG] <- 1048524
l0x98bfa7:	mov	dword[esp], edx
;put_contents[XCORE_OP_MEM] <- initial_edx
;stack[1048524, 0] <-
l0x98bfaa:	sub	esp, 4
;put_contents[XCORE_OP_REG] <- 1048520
l0x98bfad:	mov	dword[esp], eax
;put_contents[XCORE_OP_MEM] <- initial_eax
;stack[1048520, 0] <-
l0x98bfb0:	mov	eax, 0x5fbf8301
;put_contents[XCORE_OP_REG] <- 1606386433
l0x98bfb5:	mov	dword[esp + 4], eax
;put_contents[XCORE_OP_MEM] <- 1606386433
;stack[1048520, 4] <-
l0x98bfb9:	pop	eax
; -> initial_eax
;put_contents[XCORE_OP_REG] <- initial_eax
l0x98bfba:	sub	dword[esp], 0x5dffd107
;stack[1048524, 0] ->
;stack[1048524, 0] ->
;put_contents[XCORE_OP_MEM] <- 29340154
;stack[1048524, 0] <-
l0x98bfc1:	xchg	dword[esp], ecx
;stack[1048524, 0] ->
;put_contents[XCORE_OP_MEM] <- 1
;stack[1048524, 0] <-
;put_contents[XCORE_OP_REG] <- 29340154
l0x98bfc4:	not	ecx
;put_contents[XCORE_OP_REG] <- 4265627141
l0x98bfc6:	xchg	dword[esp], ecx
;stack[1048524, 0] ->
;put_contents[XCORE_OP_MEM] <- 4265627141
;stack[1048524, 0] <-
;put_contents[XCORE_OP_REG] <- 1
l0x98bfc9:	push	esi
l0x98bfca:	push	edx
l0x98bfcb:	push	0x33afe920
l0x98bfd0:	pop	edx
; -> 867166496
;put_contents[XCORE_OP_REG] <- 867166496
l0x98bfd1:	xor	edx, 0x7cd99cdb
;put_contents[XCORE_OP_REG] <- 1333163515
l0x98bfd7:	mov	esi, edx
;put_contents[XCORE_OP_REG] <- 1333163515
l0x98bfd9:	pop	edx
; -> initial_edx
;put_contents[XCORE_OP_REG] <- initial_edx
l0x98bfda:	add	dword[esp + 4], esi
;stack[1048520, 4] ->
;stack[1048520, 4] ->
;put_contents[XCORE_OP_MEM] <- 1303823360
;stack[1048520, 4] <-
l0x98bfde:	mov	esi, dword[esp]
;stack[1048520, 0] ->
;put_contents[XCORE_OP_REG] <- initial_esi
l0x98bfe1:	add	esp, 4
;put_contents[XCORE_OP_REG] <- 1048524
l0x98bfe4:	xor	dword[esp], 0x1fe7e9b2
;stack[1048524, 0] ->
;stack[1048524, 0] ->
;put_contents[XCORE_OP_MEM] <- 1381051826
;stack[1048524, 0] <-
l0x98bfeb:	not	dword[esp]
;stack[1048524, 0] ->
;stack[1048524, 0] ->
;put_contents[XCORE_OP_MEM] <- 2913915469
;stack[1048524, 0] <-
l0x98bfee:	inc	dword[esp]
;stack[1048524, 0] ->
;stack[1048524, 0] ->
;put_contents[XCORE_OP_MEM] <- 2913915470
;stack[1048524, 0] <-
l0x98bff1:	sub	dword[esp], 0xffffffff
;stack[1048524, 0] ->
;stack[1048524, 0] ->
;put_contents[XCORE_OP_MEM] <- 2913915471
;stack[1048524, 0] <-
l0x98bff8:	shr	dword[esp], 4
;stack[1048524, 0] ->
;stack[1048524, 0] ->
;put_contents[XCORE_OP_MEM] <- 182119716
;stack[1048524, 0] <-
l0x98bffc:	xchg	dword[esp], ebp
;stack[1048524, 0] ->
;put_contents[XCORE_OP_MEM] <- 8119845
;stack[1048524, 0] <-
;put_contents[XCORE_OP_REG] <- 182119716
l0x98bfff:	add	ebp, 1
;put_contents[XCORE_OP_REG] <- 182119717
l0x98c002:	xchg	dword[esp], ebp
;stack[1048524, 0] ->
;put_contents[XCORE_OP_MEM] <- 182119717
;stack[1048524, 0] <-
;put_contents[XCORE_OP_REG] <- 8119845
l0x98c005:	push	edi
l0x98c006:	mov	edi, 0xf5251327
;put_contents[XCORE_OP_REG] <- 4112847655
l0x98c00b:	add	dword[esp + 4], edi
;stack[1048520, 4] ->
;stack[1048520, 4] ->
;put_contents[XCORE_OP_MEM] <- 76
;stack[1048520, 4] <-
l0x98c00f:	pop	edi
; -> initial_edi
;put_contents[XCORE_OP_REG] <- initial_edi
l0x98c010:	mov	ebx, dword[esp]
;stack[1048524, 0] ->
;put_contents[XCORE_OP_REG] <- 76
l0x98c013:	push	edi
l0x98c014:	push	esp
l0x98c015:	pop	edi
; -> 1048520
;put_contents[XCORE_OP_REG] <- 1048520
l0x98c016:	add	edi, 4
;put_contents[XCORE_OP_REG] <- 1048524
l0x98c01c:	push	edx
l0x98c01d:	mov	edx, 0x53df2ab3
;put_contents[XCORE_OP_REG] <- 1407134387
l0x98c022:	shr	edx, 2
;put_contents[XCORE_OP_REG] <- 351783596
l0x98c025:	inc	edx
;put_contents[XCORE_OP_REG] <- 351783597
l0x98c026:	xor	edx, 0x3bdb02d0
;put_contents[XCORE_OP_REG] <- 791464061
l0x98c02c:	and	edx, 0x7fa71958
;put_contents[XCORE_OP_REG] <- 790890584
l0x98c032:	shr	edx, 1
;put_contents[XCORE_OP_REG] <- 395445292
l0x98c035:	sub	edx, 0x17920428
;put_contents[XCORE_OP_REG] <- 4
l0x98c03b:	add	edi, edx
;put_contents[XCORE_OP_REG] <- 1048528
l0x98c03d:	pop	edx
; -> initial_edx
;put_contents[XCORE_OP_REG] <- initial_edx
l0x98c03e:	xchg	dword[esp], edi
;stack[1048520, 0] ->
;put_contents[XCORE_OP_MEM] <- 1048528
;stack[1048520, 0] <-
;put_contents[XCORE_OP_REG] <- initial_edi
l0x98c041:	pop	esp
; -> 1048528
;put_contents[XCORE_OP_REG] <- 1048528
l0x98c042:	xor	eax, eax
;do_aritm[]] operator 1: XCORE_OP_REG
;do_aritm[]] operator 2: XCORE_OP_REG
;put_contents[XCORE_OP_REG] <- 0
; abstract operation op1 <- 0
; l0x98c044:	lock cmpxchg	dword[ebp + ebx], ecx
; ebp: 7be625
; ebx: 4c
; ecx: 1
