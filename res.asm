bits 32
global main

main:
l0x1dbf71a:	push	ebx
l0x1dbf71b:	push	edx
l0x1dbf728:	pop	edx
; -> initial_edx
;put_contents[XCORE_OP_REG] <- initial_edx
l0x1dbf729:	pushad
;junk jump
;junk jump
l0x1dbf748:	popad
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
; esp diff: 2c
; initial_eax
; initial_ebp
; initial_ebp
; initial_ebx
; initial_ebx
; initial_edx
; initial_ecx
; initial_eax
; initial_flags
; 37d
; 19b7157
; EAX = initial_ecx
; EBP = initial_ebp
; EBX = initial_ebx
; ECX = f5b36d82
; EDI = initial_edi
; EDX = initial_edx
; flags = initial_flags
; ESI = initial_esi
; ESP = fffd4
; []
