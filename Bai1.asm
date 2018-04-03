#MIPS with MARS 3.8
#Ho ten: Nguyen Tien Dat
#MSSV: 15021523
#Bai1: 5x + 3y + z


.data					#Khai bao bien
	x: .asciiz "Nhap gia tri x: \n"
	y: .asciiz "Nhap gia tri y: \n"
	z: .asciiz "Nhap gia tri z: \n"
	t: .asciiz "Ket qua cua 5x + 3y + z = "

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

	#Nhap vao gia tri cua z
	li $v0, 4
	la $a0, z		#Khoi tao thanh ghi dia chi cua y
	syscall
	li $v0, 5		#Khoi tao thanh ghi $v0 kieu float
	syscall
	move $t2, $v0	#Gan gia tri z vao $t2

	#Thuc hien phep toan

	#Tinh 5x
	addi $t3,$zero,5 	#Gan 5 vào thanh ghi $t3
	mult $t0,$t3		 #Nhan $t3 voi $t0
	mflo $s0			 #Gan lai gia tri vao $s0
	
	#Tinh 3y
	addi $t4,$zero,3 	#Gan 3 vao thanh ghi $t4
	mult $t1,$t4 		#Nhan $t1 voi $t4
	mflo $s1			 #Gan ket qua vao $s1
	
	#Tinh tong 5x + 3y
	add $s0, $s0, $s1
	
	#Tinh 5x + 3y + z
	add $s0, $s0, $t2
	
	#In ket qua
	li $v0, 4
	la $a0, t
	syscall
	li $v0, 1
	add $a0, $zero, $s0
	syscall
