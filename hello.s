/* 
    SPDX-License-Identifier: GPL-v2-Only
    Copyright (C) 2026 Connor A. Hopley

    This program is free software; you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation; version 2.

    This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.

    You should have received a copy of the GNU General Public License along with this program; if not, write to the Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301, USA. 
*/
.global _start

.text
_start:
    movq $1, %rax # Syscall Write
    movq $1, %rdi # FD for stdout 1st arg
    movq $msg, %rsi # Address of message 2nd arg
    movq $len, %rdx # Length of message 3rd arg
    syscall # Call Kernel

    movq $60, %rax # Syscall Exit
    movq $0, %rsi # Exit Code 0
    syscall # See Above

.data
msg: 
    .ascii "Hello, World!\n" # Ascii message
    len = . - msg # Set len to current address - msg start
