.data
	arr1  db '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ',0

.code 
align 16

extern p1  : qword
extern p2  : qword

asm_func_wapper proc
	push    rax
	push    rbx
	push    rcx
	push    rdx
	push    rsi
	push    rdi
	push    r8
	push    r9
	push    r10
	push    r11
	push    r12
	push    r13
	push    r14
	push    r15
	call    asm_func
	pop     r15
	pop     r14
	pop     r13
	pop     r12
	pop     r11
	pop     r10
	pop     r9
	pop     r8
	pop     rdi
	pop     rsi
	pop     rdx
	pop     rcx
	pop     rbx
	pop     rax
	ret
asm_func_wapper endp

asm_func proc
    push    rbp
    mov     rbp, rsp
    sub     rsp, 100h
	
	mov     rbx, [p1]
	movsx   r11, byte ptr [rbx]
	movsx   r9d, byte ptr [rbx+7]
	lea     r10d, [r11+r11]
	xor     eax, eax
	mov     ecx, r10d
	mov     [rbp-70h], eax
	mov     eax, 82082083h
	imul    r10d
	lea     r8d, [r9+r9*4]
	add     r9d, r9d
	add     edx, r10d
	mov     [rbp+48h], r9d
	sar     edx, 5
	mov     eax, edx
	shr     eax, 1Fh
	add     edx, eax
	imul    eax, edx, 3Fh
	sub     ecx, eax
	mov     eax, 82082083h
	imul    r8d
	mov     [rsp+10h], ecx
	mov     ecx, r8d
	add     edx, r8d
	sar     edx, 5
	mov     eax, edx
	shr     eax, 1Fh
	add     edx, eax
	imul    eax, edx, 3Fh
	sub     ecx, eax
	mov     eax, 82082083h
	mov     [rsp+14h], ecx
	lea     ecx, [r10+r8]
	movsx   r10d, byte ptr [rbx+6]
	imul    ecx
	lea     r8d, [r10+r10*4]
	add     edx, ecx
	sar     edx, 5
	mov     eax, edx
	shr     eax, 1Fh
	add     edx, eax
	imul    eax, edx, 3Fh
	sub     ecx, eax
	lea     eax, [r11+r11*4]
	movsx   r11d, byte ptr [rbx+1]
	mov     [rsp+0], eax
	mov     [rsp+8], ecx
	mov     [rsp+18h], ecx
	lea     ecx, [rax+r9]
	lea     r9d, [r11+r11]
	mov     eax, 82082083h
	imul    ecx
	add     edx, ecx
	sar     edx, 5
	mov     eax, edx
	shr     eax, 1Fh
	add     edx, eax
	imul    eax, edx, 3Fh
	sub     ecx, eax
	mov     eax, 82082083h
	imul    r9d
	mov     [rsp+4], ecx
	add     edx, r9d
	mov     [rsp+1Ch], ecx
	sar     edx, 5
	mov     ecx, r9d
	mov     eax, edx
	shr     eax, 1Fh
	add     edx, eax
	imul    eax, edx, 3Fh
	sub     ecx, eax
	mov     eax, 82082083h
	imul    r8d
	mov     [rsp+20h], ecx
	mov     ecx, r8d
	add     edx, r8d
	sar     edx, 5
	mov     eax, edx
	shr     eax, 1Fh
	add     edx, eax
	imul    eax, edx, 3Fh
	sub     ecx, eax
	mov     [rsp+24h], ecx
	lea     ecx, [r8+r9]
	mov     eax, 82082083h
	imul    ecx
	lea     r12d, [r10+r10]
	movsx   r10d, byte ptr [rbx+5]
	add     edx, ecx
	sar     edx, 5
	mov     eax, edx
	shr     eax, 1Fh
	lea     r8d, [r10+r10*4]
	add     edx, eax
	lea     edi, [r10+r10]
	imul    eax, edx, 3Fh
	sub     ecx, eax
	lea     eax, [r11+r11*4]
	movsx   r11d, byte ptr [rbx+2]
	lea     r13d, [rax+r12]
	mov     [rbp+30h], eax
	mov     eax, 82082083h
	imul    r13d
	lea     r9d, [r11+r11]
	mov     [rbp+40h], ecx
	add     edx, r13d
	mov     [rsp+28h], ecx
	sar     edx, 5
	lea     r15d, [r8+r9]
	mov     eax, edx
	lea     r14d, [r11+r11*4]
	movsx   r11d, byte ptr [rbx+3]
	lea     esi, [r14+rdi]
	shr     eax, 1Fh
	mov     ecx, r9d
	add     edx, eax
	imul    eax, edx, 3Fh
	sub     r13d, eax
	mov     eax, 82082083h
	imul    r9d
	mov     [rsp+2Ch], r13d
	add     edx, r9d
	lea     r9d, [r11+r11]
	sar     edx, 5
	mov     eax, edx
	shr     eax, 1Fh
	add     edx, eax
	imul    eax, edx, 3Fh
	sub     ecx, eax
	mov     eax, 82082083h
	imul    r8d
	mov     [rsp+30h], ecx
	mov     ecx, r8d
	add     edx, r8d
	sar     edx, 5
	mov     eax, edx
	shr     eax, 1Fh
	add     edx, eax
	imul    eax, edx, 3Fh
	sub     ecx, eax
	mov     eax, 82082083h
	imul    r15d
	mov     [rsp+34h], ecx
	add     edx, r15d
	sar     edx, 5
	mov     eax, edx
	shr     eax, 1Fh
	add     edx, eax
	imul    eax, edx, 3Fh
	sub     r15d, eax
	mov     eax, 82082083h
	imul    esi
	mov     [rsp+38h], r15d
	add     edx, esi
	sar     edx, 5
	mov     eax, edx
	shr     eax, 1Fh
	add     edx, eax
	imul    eax, edx, 3Fh
	sub     esi, eax
	mov     eax, 82082083h
	imul    r9d
	mov     [rsp+3Ch], esi
	add     edx, r9d
	movsx   r10d, byte ptr [rbx+4]
	mov     ecx, r9d
	sar     edx, 5
	mov     eax, edx
	shr     eax, 1Fh
	add     edx, eax
	lea     r8d, [r10+r10*4]
	imul    eax, edx, 3Fh
	lea     ebx, [r8+r9]
	lea     r9d, [r11+r11*4]
	sub     ecx, eax
	mov     eax, 82082083h
	imul    r8d
	mov     [rsp+40h], ecx
	mov     ecx, r8d
	add     edx, r8d
	sar     edx, 5
	mov     eax, edx
	shr     eax, 1Fh
	add     edx, eax
	imul    eax, edx, 3Fh
	sub     ecx, eax
	mov     eax, 82082083h
	imul    ebx
	mov     [rsp+44h], ecx
	lea     ecx, [r10+r10]
	add     edx, ebx
	lea     r8d, [r9+rcx]
	sar     edx, 5
	mov     eax, edx
	shr     eax, 1Fh
	add     edx, eax
	imul    eax, edx, 3Fh
	sub     ebx, eax
	mov     eax, 82082083h
	imul    r8d
	mov     [rsp+48h], ebx
	add     edx, r8d
	mov     [rsp+5Ch], ebx
	sar     edx, 5
	mov     eax, edx
	shr     eax, 1Fh
	add     edx, eax
	imul    eax, edx, 3Fh
	sub     r8d, eax
	mov     eax, 82082083h
	imul    ecx
	mov     [rsp+4Ch], r8d
	add     edx, ecx
	mov     [rsp+58h], r8d
	sar     edx, 5
	mov     eax, edx
	shr     eax, 1Fh
	add     edx, eax
	imul    eax, edx, 3Fh
	sub     ecx, eax
	mov     eax, 82082083h
	imul    r9d
	mov     [rsp+50h], ecx
	add     edx, r9d
	sar     edx, 5
	mov     eax, edx
	shr     eax, 1Fh
	add     edx, eax
	imul    eax, edx, 3Fh
	sub     r9d, eax
	mov     eax, 82082083h
	imul    edi
	mov     [rsp+54h], r9d
	add     edx, edi
	sar     edx, 5
	mov     eax, edx
	shr     eax, 1Fh
	add     edx, eax
	imul    eax, edx, 3Fh
	sub     edi, eax
	mov     eax, 82082083h
	imul    r14d
	mov     [rsp+60h], edi
	add     edx, r14d
	sar     edx, 5
	mov     r8d, [rbp+48h]
	mov     eax, edx
	mov     ecx, [rbp+30h]
	mov     r9, [rbp+38h]
	mov     rdi, [rsp+108h]
	shr     eax, 1Fh
	add     edx, eax
	mov     [rsp+68h], esi
	mov     rsi, [rsp+110h]
	imul    eax, edx, 3Fh
	mov     [rsp+6Ch], r15d
	mov     r15, [rsp+0E8h]
	mov     [rsp+78h], r13d
	mov     r13, [rsp+0F8h]
	sub     r14d, eax
	mov     eax, 82082083h
	imul    r12d
	mov     [rsp+64h], r14d
	mov     r14, [rsp+0F0h]
	add     edx, r12d
	sar     edx, 5
	mov     eax, edx
	shr     eax, 1Fh
	add     edx, eax
	imul    eax, edx, 3Fh
	sub     r12d, eax
	mov     eax, 82082083h
	imul    ecx
	mov     [rsp+70h], r12d
	mov     r12, [rsp+100h]
	add     edx, ecx
	sar     edx, 5
	mov     eax, edx
	shr     eax, 1Fh
	add     edx, eax
	imul    eax, edx, 3Fh
	sub     ecx, eax
	mov     eax, [rbp+40h]
	mov     [rsp+7Ch], eax
	mov     eax, 82082083h
	imul    r8d
	mov     [rsp+74h], ecx
	mov     eax, 82082083h
	add     edx, r8d
	sar     edx, 5
	mov     ecx, edx
	shr     ecx, 1Fh
	add     edx, ecx
	imul    ecx, edx, 3Fh
	sub     r8d, ecx
	mov     ecx, [rsp+0]
	imul    ecx
	mov     [rbp-80h], r8d
	lea     r8, [rsp+10h]
	add     edx, ecx
	sar     edx, 5
	mov     eax, edx
	shr     eax, 1Fh
	add     edx, eax
	imul    eax, edx, 3Fh
	mov     rdx, r9
	sub     ecx, eax
	mov     eax, [rsp+4]
	mov     [rbp-78h], eax
	mov     eax, [rsp+8]
	mov     [rbp-74h], eax
	mov     [rbp-7Ch], ecx

	mov     rax, [p2]
loc_48404F0:
	movsxd  rcx, dword ptr [r8]
	movzx   rbx, byte ptr [arr1+rcx]
	mov     [rax], bl
	inc     rax
	add     r8, 4
	mov     rcx, rax
	sub     rcx, p2
	cmp     rcx, 20h
	jl      short loc_48404F0

	add		rsp, 100h
	mov     rsp, rbp
	pop     rbp
	ret
asm_func endp

end
