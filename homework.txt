#MIPS with MARS 3.8
#Ho ten: Nguyen Tien Dat
#MSSV: 15021523
#Bai1: (4*x + 5)/y


.data					#Khai bao bien
	x: .asciiz "Nhap gia tri x: \n"
	y: .asciiz "Nhap gia tri y: \n"
	t: .asciiz "Ket qua cua (4*x + 5)/y = "
	r: .asciiz "\nPhan du:  "

.text

	#Nhap vao gia tri x, y, z

	#Nhap vao gia tri cua x
	li $v0, 4
	la $a0, x		#Khoi tao thanh ghi dia chi cua x
	syscall
	li $v0, 5		#Khoi tao thanh ghi $v0
	syscall	
	move $t0, $v0	#Gan gia tri x vao $t0
	
	#Nhap vao gia tri cua y 
	li $v0, 4
	la $a0, y		#Khoi tao thanh ghi dia chi cua y
	syscall
	li $v0, 5		#Khoi tao thanh ghi $v0 
	syscall
	move $t1, $v0	#Gan gia tri y vao $t1

	#Thuc hien phep toan

	#Tinh 4x
	addi $t3,$zero,4 	#Gan 4 vào thanh ghi $t3
	mult $t0,$t3		 #Nhan $t3 voi $t0
	mflo $s0			 #Gan lai gia tri vao $s0
	
	
	#Tinh tong 4x + 5
	add $s0, $s0, 5
	
	#Tinh (4x + 5) / y
	div $s0, $t1		 # $s0 / $t1 = (4x + 5) / y
	mflo $s1			 # $s1 phan nguyen
	mfhi $s2			 # $s2 phan du
	
	
	#In ket qua
	li $v0, 4
	la $a0, t	
	syscall
	add $a0, $zero, $s1
	li $v0, 1			
	syscall
	
	la $a0, r		
	li $v0, 4
	syscall
	add $a0, $zero, $s2
	li $v0, 1			
	syscall
	
