#
# A funtion that returns the output of a polynomial
# given 4 integers as parameters
# @author: Stephen Marks
# Course: COMPB13
# Created: May 4, 2021
# Source File: polynomial4.s
# Link with poly.c
#
	.text
	.globl polynomial4

# This function returns the output of the defined
# polynomial given 4 integers
# @param1 an integer
# @param2 an integer
# @param3 an integer
# @param4 an integer
#
polynomial4:
	imull %edx, %ecx #yz
	imull %ecx, %edi #wyz
	imull $3, %edx, %eax #3y --> eax
	imull $18, %ecx #18yz
	imull $16, %edi #16wyz
	addl %ecx, %eax #3y + 18yz
	addl %edi, %eax #3y + 18yz + 16wyz
	addl $6, %eax #3y + 18yz + 16wyz + 6
	ret
