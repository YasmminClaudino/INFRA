######## ATT 1 ####### 

#carregamento imediato (load) li
li x8, 0x10010000
addi x1, x0, 1
sw x1, 0(x8)
addi x2, x0, 3
sw x2, 4(x8)
addi x3, x0,2
sw x3, 8(x8)
addi x4, x0,1
sw x4, 12(x8)
addi x5, x0,4
sw x5, 16(x8)
addi x6, x0,5
sw x6, 20(x8)

######## ATT 2 #######

li x9, 0x10010020
lw x1, 0(x8)
slli x1, x1,1
sw x1,0(x9)
lw x1, 4(x8)
slli x1, x1,1
sw x1,4(x9)
lw x1, 8(x8)
slli x1, x1,1
sw x1,8(x9)
lw x1, 12(x8)
slli x1, x1,1
sw x1,12(x9)
lw x1, 16(x8)
slli x1, x1,1
sw x1,16(x9)
lw x1, 20(x8)
slli x1, x1,1
sw x1,20(x9)

######## ATT 3 #######

li x10, 0x10010040
li x11, 0x10010060


lw x1, 0(x8)
lw x2, 4(x8)

add x3, x1, x2
sw x3, 0(x10)

lw x1, 8(x8)
lw x2, 12(x8)

add x3, x3, x1
sw x3, 0(x10)
add x3, x3,x2
sw x3, 0(x10)

lw x1, 16(x8)
lw x2, 20(x8)

add x3, x3,x1
sw x3, 0(x10)
add x3,x3,x2
sw x3,0(x10)

#### 2 array #####


lw x1, 0(x9)
lw x2, 4(x9)

add x3, x1, x2
sw x3, 0(x11)

lw x1, 8(x9)
lw x2, 12(x9)

add x3, x3, x1
sw x3, 0(x11)
add x3, x3,x2
sw x3, 0(x11)

lw x1, 16(x9)
lw x2, 20(x9)

add x3, x3,x1
sw x3, 0(x11)
add x3,x3,x2
sw x3,0(x11)

##### ATT 4 #####

lw x1, 0(x10)

sw x1, 0(x8)
sw x1, 4(x8)
sw x1, 12(x8)
sw x1, 20(x8)

#### ATT 5 #####

li x12, 0x10010080
addi x5, x0, 5 #a
addi x6, x0, 2 #b
addi x7, x0, 3 #c

addi x8, x0, 1
addi x9, x0, 2

beq x8, x5, Case1
beq x9, x5, Case2
beq x0, x0, Default

Case1: addi x6,x7,1
beq x0, x0, break 
Case2: addi x6,x7,2
beq x0, x0, break
Default: add x6,x7,x0
beq x0, x0, break

break: 
sw x6, 0(x12)



