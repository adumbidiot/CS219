.LC1:
        .ascii  "%d\000"
.LC0:
        .byte   10
        .byte   0
        .byte   2
        .byte   1
main:
        push    {fp, lr}
        add     fp, sp, #4
        sub     sp, sp, #16
        ldr     r3, .L6
        ldr     r3, [r3]
        str     r3, [fp, #-16]
        mov     r3, #0
        strb    r3, [fp, #-5]
        mov     r3, #1
        str     r3, [fp, #-12]
        b       .L2
.L4:
        sub     r2, fp, #16
        ldr     r3, [fp, #-12]
        add     r3, r2, r3
        ldrb    r3, [r3]        @ zero_extendqisi2
        ldrb    r2, [fp, #-5]   @ zero_extendqisi2
        cmp     r2, r3
        bcs     .L3
        sub     r2, fp, #16
        ldr     r3, [fp, #-12]
        add     r3, r2, r3
        ldrb    r3, [r3]
        strb    r3, [fp, #-5]
.L3:
        ldr     r3, [fp, #-12]
        add     r3, r3, #1
        str     r3, [fp, #-12]
.L2:
        ldr     r3, [fp, #-12]
        cmp     r3, #3
        ble     .L4
        ldrb    r3, [fp, #-5]   @ zero_extendqisi2
        mov     r1, r3
        ldr     r0, .L6+4
        bl      printf
        mov     r3, #0
        mov     r0, r3
        sub     sp, fp, #4
        pop     {fp, lr}
        bx      lr
.L6:
        .word   .LC0
        .word   .LC1