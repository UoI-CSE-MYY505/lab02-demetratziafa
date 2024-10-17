.data

array: .word 1, 0, 1, 12, 1, 0, 4

.text

    la a0, array
    li a1, 7    # unsigned
    li a2, 12
    lw t0,0(a0)
    li t1,0
prog:
#-----------------------------
# Write your code here!
# Do not remove the prog label or write code above it!
#-----------------------------
    beq a1,t1, done
    bne t0,a2, else
    #lw s0,0(a0) #stores the element of the array which is equal to s2 
    addi s0,a0,0 #stores the address of the element of the array which is equal to s2 
    j done
else:
    lw t0,4(a0)
    addi a0,a0,4
    addi a1,a1,-1
    j prog
    
done:
    addi a7, zero, 10 
    ecall

#it stores the address of the first element of the array that matches a2
