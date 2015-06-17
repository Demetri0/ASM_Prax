BITS32
section .text ; Начало секции кода

global _start ;
_start:

mov eax,4 ; системный вызов «write»
mov ebx,1 ; стандартный вывод
mov ecx,msg ; адрес сообщения
mov edx,[msg_size] ; длина
int 0x80 ; вызов прерывания

mov eax,1 ; системный вызов «exit»
xor ebx,ebx ; код выхода
int 0x80 ; вызов прерывания

section .data ; Начало секции данных

; Объявление переменной с сообщением
msg db 'Hello, Asm',0xA
; Объявление переменной с длинной сообщения
msg_size dd $-msg
