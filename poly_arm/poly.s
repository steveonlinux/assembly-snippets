#
# AUTHOR: STEPHEN MARKS
# DATE: MAY 5 2021 10:00 AM
# LINK AND COMPILE WITH poly.c ON ARM32/64
#
	.text
#Retruns the output of the defined polynomial given
#4 command line arguments
	.globl polySolve
#3y + 18yz + 16wyz + 6
polySolve:
 mul r3, r2, r3 // yz --> r3
 mul r1, r0, r3 // wyz --> r1
 eor r0, r0 //Next 3 lines could be an immediate mov and mul instead
 lsl r0, r2, #1
 add r0, r2 // 3y --> r0
 lsl r2, r3, #4
 add r2, r3, lsl #1
 add r2, r2, r1, lsl #4 // 18yz + 16wyz --> r2
 add r0, r2  // 3y + 18yz + 16wyz + 6 --> r0
 add r0, 0x06  // 3y + 18yz + 16wyz + 6 --> r0
 mov pc, lr
