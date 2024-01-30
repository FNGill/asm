lab6_1:
; GOAL:
;   Implement entire function:
;	 int getStrLen(const char *sz);
;
;   Return the length of the NULL-terminated ASCII string.
;   Do NOT use RBP or previously unintroducted instructions, and don't overwrite RDI.
;   PRESERVE: standard registers
;
;;;;;;;;;;;;; YOUR CODE BELOW
	xor rcx, rcx 
.slloop:
	mov al, [rdi] ;take first byte and move to al
	test al, al ; check for nul
	jz .exit
	inc rcx
	inc rdi 
	jmp .slloop

	.exit:
		mov rax, rcx
		ret 

;;;;;;;;;;;;; YOUR CODE ABOVE
lab6_1_size dq $-lab6_1


lab6_2:
; GOAL:
;   Implement entire function:
;	 int  addSeven(int a, int b, int c, int d, int e, int f, int g);
;
;   Add the seven arguments together and return the result.
;   PRESERVE: standard registers
;
;;;;;;;;;;;;; YOUR CODE BELOW
	mov rax, rdi
	add rax, rsi 
	add rax, rdx
	add rax, rcx
	add rax, r8
	add rax, r9

	mov r10, [rsp +8]
	add rax, r10
	ret