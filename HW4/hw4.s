* THIS CODE IS MY OWN WORK, IT WAS WRITTEN WITHOUT CONSULTING A TUTOR   
* OR CODE WRITTEN BY OTHER STUDENTS - Yibo Wang
* 
* 
*
	xdef Start, Stop, End
	xdef Q1, Q2, Q3, Q4, Q5, Q6, Q7, Q8, Q9, Q10
	xdef A, B, C
	xdef i, j, k
	xdef head
	xdef ans_b, ans_w, ans_l

Start:
*******************************************************************
* Put your assembler instructions here
* Write the answer to each question after the corresponding label.
* DO NOT REMOVE ANY LABEL IN THIS ASSIGNMENT (all labels are now NECESSARY)
* *** Failure to do so will result in point dedections !!! ***
*******************************************************************

Q1:
*         ans_l = i
	move.b i,d0
	ext.w d0
	ext.l  d0
	move.l d0,ans_l




Q2:
*         ans_l = B[8];
	movea.w #B, a0
	move.w 16(a0), d0
	ext.l d0
	move.l d0,ans_l






Q3:
*         ans_l = C[k];
	movea.l #C, a0
	move.l k,d0
	muls #4,d0
	adda.l d0,a0
	move.l 0(a0),d0
	move.l d0,ans_l




Q4:
*         ans_w = A[i + j];
	movea.l #A, a0
	move.b i, d0
	ext.w d0	
	add.w j, d0

	move.b 0(a0,d0), d0
	ext.w d0	
	move.w d0, ans_w



Q5:
*         ans_w = C[j + k];    
	movea.l #C,a1
	move.w j, d1
	ext.l d1
	add.l k, d1
	muls #4, d1
	
	move.l 0(a1,d1), d1
	move.w d1, ans_w


Q6:
*         ans_l = A[i] + B[k];  
	move.b i, d3
	movea.l #A,a0	
	move.b 0(a0,d3), d3

	move.l k, d2
	move.w d2,d1
	muls #2, d1
	movea.l #B, a1	
	move.w 0(a1,d1), d1
	
	ext.w d3
	ext.l d3
	ext.l d1
	add.l d3, d1
	move.l d1, ans_l
	
	


Q7:
*         ans_l = A[A[k] - 50]; 
	move.l k, d1
	move.b d1, d1
	
	movea.l #A, a0
	move.b 0(a0, d1), d1
	sub.b #50, d1

	move.b 0(a0,d1), d1
	
	ext.w d1
	ext.l d1
	move.l d1, ans_l
		
	



	
Q8:
*         ans_w = B[ 15 ]
	
	movea.l #B, a0
	move.w #15,d0
	muls #2, d0
	move.w 0(a0,d0), d0
	move.w d0, ans_w
	



Q9:
*	  ans_l = head.value2;
		movea.l head,a0
		move.w 4(a0),d0
		ext.l d0
		move.l d0, ans_l


Q10:
*	  ans_w = head.next.next.value1;
		movea.l head,a4
		movea.l 6(a4),a4
		movea.l 6(a4),a4
		move.l  0(a4),d0
		move.w d0, ans_w		
	


*************************************************
* Don't write any code below this line
*************************************************

Stop:	nop
	nop

*************************************************
* Don't touch these variables
* You do NOT need to define more variables !!!
*************************************************

ans_b: ds.b 1
	even
ans_w: ds.w 1
ans_l: ds.l 1

i:     dc.b  2
************************************************************************
* We need to add a 1 byte dummy variable to make the next variable j
* locate on an EVEN address.
* Due to some architectural constraints, short and int variables MUST
* start on an even address (or you will get an "odd address" error
************************************************************************
	even

j:   dc.w  3
k:   dc.l  4

A:  dc.b   11, -22, 33, -44, 55, -66, 77, -88, 99, -123

B:  dc.w   111, -222, 333, -444, 555, -666, 777, -888, 999, -5432

C:  dc.l   1111, -2222, 3333, -4444, 5555, -6666, 7777, -8888, 9999, -9876


head:   dc.l  list1

list3:  dc.l 3456
        dc.w 67
	dc.l list4
list2:  dc.l 2345
        dc.w 78
	dc.l list3
list4:  dc.l 4567
        dc.w 56
	dc.l list5
list1:  dc.l 1234
        dc.w 89
	dc.l list2
list5:  dc.l 5678
        dc.w 45
	dc.l 0


End:
	end

