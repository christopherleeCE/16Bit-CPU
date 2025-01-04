INIT:

    JAL LOAD_SPRITES: LR
    JMP START:

#sprites are stored in continuouse 16 byte block, G0 being color, if transperent 
LOAD_SPRITES:

    #transperent color
    MOV G1 FFFF

    #I_PIECE
    MOV G0 0006
    SW ZERO G0 0000
    SW ZERO G0 0001
    SW ZERO G0 0002
    SW ZERO G0 0003
    SW ZERO G1 0004
    SW ZERO G1 0005
    SW ZERO G1 0006
    SW ZERO G1 0007
    SW ZERO G1 0008
    SW ZERO G1 0009
    SW ZERO G1 000A
    SW ZERO G1 000B
    SW ZERO G1 000C
    SW ZERO G1 000D
    SW ZERO G1 000E
    SW ZERO G1 000F

    #SQR_PIECE
    MOV G0 0005
    SW ZERO G0 0010
    SW ZERO G0 0011
    SW ZERO G1 0012
    SW ZERO G1 0013
    SW ZERO G0 0014
    SW ZERO G0 0015
    SW ZERO G1 0016
    SW ZERO G1 0017
    SW ZERO G1 0018
    SW ZERO G1 0019
    SW ZERO G1 001A
    SW ZERO G1 001B
    SW ZERO G1 001C
    SW ZERO G1 001D
    SW ZERO G1 001E
    SW ZERO G1 001F

    #S_LEFT_PIECE
    MOV G0 0003
    SW ZERO G0 0020
    SW ZERO G0 0021
    SW ZERO G1 0022
    SW ZERO G1 0023
    SW ZERO G1 0024
    SW ZERO G0 0025
    SW ZERO G0 0026
    SW ZERO G1 0027
    SW ZERO G1 0028
    SW ZERO G1 0029
    SW ZERO G1 002A
    SW ZERO G1 002B
    SW ZERO G1 002C
    SW ZERO G1 002D
    SW ZERO G1 002E
    SW ZERO G1 002F

    #S_RIGHT_PIECE
    MOV G0 0002
    SW ZERO G1 0030
    SW ZERO G0 0031
    SW ZERO G0 0032
    SW ZERO G1 0033
    SW ZERO G0 0034
    SW ZERO G0 0035
    SW ZERO G1 0036
    SW ZERO G1 0037
    SW ZERO G1 0038
    SW ZERO G1 0039
    SW ZERO G1 003A
    SW ZERO G1 003B
    SW ZERO G1 003C
    SW ZERO G1 003D
    SW ZERO G1 003E
    SW ZERO G1 003F

    #L_LEFT_PIECE
    MOV G0 0008
    SW ZERO G0 0040
    SW ZERO G0 0041
    SW ZERO G0 0042
    SW ZERO G1 0043
    SW ZERO G1 0044
    SW ZERO G1 0045
    SW ZERO G0 0046
    SW ZERO G1 0047
    SW ZERO G1 0048
    SW ZERO G1 0049
    SW ZERO G1 004A
    SW ZERO G1 004B
    SW ZERO G1 004C
    SW ZERO G1 004D
    SW ZERO G1 004E
    SW ZERO G1 004F

    #L_RIGHT_PIECE
    MOV G0 0004
    SW ZERO G0 0050
    SW ZERO G0 0051
    SW ZERO G0 0052
    SW ZERO G1 0053
    SW ZERO G0 0054
    SW ZERO G1 0055
    SW ZERO G1 0056
    SW ZERO G1 0057
    SW ZERO G1 0058
    SW ZERO G1 0059
    SW ZERO G1 005A
    SW ZERO G1 005B
    SW ZERO G1 005C
    SW ZERO G1 005D
    SW ZERO G1 005E
    SW ZERO G1 005F

    #T_PIECE
    MOV G0 0007
    SW ZERO G0 0060
    SW ZERO G0 0061
    SW ZERO G0 0062
    SW ZERO G1 0063
    SW ZERO G1 0064
    SW ZERO G0 0065
    SW ZERO G1 0066
    SW ZERO G1 0067
    SW ZERO G1 0068
    SW ZERO G1 0069
    SW ZERO G1 006A
    SW ZERO G1 006B
    SW ZERO G1 006C
    SW ZERO G1 006D
    SW ZERO G1 006E
    SW ZERO G1 006F

    #ret
    JR LR

DRAW_PIXEL: #G0(x) G1(y) G2(color)

    MULI G1 G1 0010
    ADD G0 G0 G1
    SW G0 G2 8000
    JR LR

CLEAR_PIXEL: #G0(x) G1(y)

    MOV G2 0001
    MULI G1 G1 0010
    ADD G0 G0 G1
    SW G0 G2 8000
    JR LR

DRAW_SPRITE: #G0(x) G1(y) G2(sprite_ptr)

    MOV G3 8000         #vram_ptr init to (0,0)
    MULI G1 G1 0010     #shifting y pos left by 1 4bits
    ADD G3 G3 G0        #adding x and y(shifted) pos to vram addr
    ADD G3 G3 G1
    MOV G0 0000         #reg for storing pixel color
    MOV G1 0000         #int ii
    MOV G5 0000         #int jj
    MOV G4 0004         #const int
    MOV G6 FFFF         #const int

    FOR_DRAW_SPRITE: #for(int ii = 0; ii < 4; ii++)
                        #for(int jj = 0; jj < 4; jj++)

    LW G0 G2 0000       #loading sprite pixel color from ram

    BEQ G0 G6 CONT_DRAW_SPRITE: #if(pixel color != -1) {store pixel color at vram ptr}
    SW G3 G0 0000

    CONT_DRAW_SPRITE:   #end_if
    ADDI G1 G1 0001     #ii++
    ADDI G2 G2 0001     #sprite_ptr++
    ADDI G3 G3 0001     #vram_prt++

    BLT G1 G4 FOR_DRAW_SPRITE: #end_for(ii)
    SUBI G3 G3 0014     #move vram_ptr up one pixel and reseting x pos
    MOV G1 0000         #reseting ii
    ADDI G5 G5 0001     #jj++

    BLT G5 G4 FOR_DRAW_SPRITE: #end_for(jj)
    JR LR               #ret

CLEAR_SPRITE:    #G0(x) G1(y) G2(sprite_ptr)

    MOV G3 8000         #vram_ptr init to (0,0)
    MULI G1 G1 0010     #shifting y pos left by 1 4bits
    ADD G3 G3 G0        #adding x and y(shifted) pos to vram addr
    ADD G3 G3 G1
    MOV G0 0001         #const int = 0 (black)
    MOV G1 0000         #int ii
    MOV G5 0000         #int jj
    MOV G4 0004         #const int
    MOV G6 FFFF         #const int

    FOR_CLEAR_SPRITE: #for(int ii = 0; ii < 4; ii++)
                        #for(int jj = 0; jj < 4; jj++)

    BEQ G0 G6 CONT_CLEAR_SPRITE: #if(pixel color != -1) {store pixel color at vram ptr}
    SW G3 G0 0000

    CONT_CLEAR_SPRITE: #end_if
    ADDI G1 G1 0001     #ii++
    ADDI G2 G2 0001     #sprite_ptr++
    ADDI G3 G3 0001     #vram_prt++

    BLT G1 G4 FOR_CLEAR_SPRITE: #end_for(ii)
    SUBI G3 G3 0014     #move vram_ptr up one pixel and reseting x pos
    MOV G1 0000         #reseting ii
    ADDI G5 G5 0001     #jj++

    BLT G5 G4 FOR_CLEAR_SPRITE: #end_for(jj)
    JR LR               #ret

CHECK_LINE: G0(Y) (0X80X3)  X = 0:15 #USE AND???

    MOV G2 FFFF
    MOV G3 0009
    MOV G4 0004
    SUBI G0 G0 0001
    FOR_CHECK_LINE:
    
    ADDI G2 G2 0001
    ADDI G0 G0 0001
    LW G1 G0 0000
    SW G0 G4 0000

    BEQ G1 ZERO RET:
    BLT G2 G3 FOR_CHECK_LINE:

    CLEAR:
    SW G0 ZERO 0000
    SW G0 ZERO FFFF
    SW G0 ZERO FFFE
    SW G0 ZERO FFFD
    SW G0 ZERO FFFC
    SW G0 ZERO FFFB
    SW G0 ZERO FFFA
    SW G0 ZERO FFF9
    SW G0 ZERO FFF8
    SW G0 ZERO FFF7

    RET:
    JR LR

COLLISION_CHECK:


START:

    #FILLING BACKROUND AS BLACK
    MOV G0 7FFF
    MOV G1 80FF
    MOV G2 0001

    FILL_START:
    ADDI G0 G0 0001
    SW G0 G2 0000
    BLT G0 G1 FILL_START:

    #DRAW
    MOV G0 0006
    MOV G1 000E
    MOV G2 0004
    JAL DRAW_PIXEL: LR

    MOV G0 0001
    MOV G1 0004
    MOV G2 0000
    JAL DRAW_SPRITE: LR

    MOV G0 0006
    MOV G1 0004
    MOV G2 0010
    JAL DRAW_SPRITE: LR

    MOV G0 000B
    MOV G1 0004
    MOV G2 0020
    JAL DRAW_SPRITE: LR

    MOV G0 0001
    MOV G1 0009
    MOV G2 0030
    JAL DRAW_SPRITE: LR

    MOV G0 0006
    MOV G1 0009
    MOV G2 0040
    JAL DRAW_SPRITE: LR

    MOV G0 000B
    MOV G1 0009
    MOV G2 0050
    JAL DRAW_SPRITE: LR

    MOV G0 0001
    MOV G1 000E
    MOV G2 0060
    JAL DRAW_SPRITE: LR

    #CLEAR
    MOV G0 0006
    MOV G1 000E
    MOV G2 0004
    JAL CLEAR_PIXEL: LR

    MOV G0 0001
    MOV G1 0004
    MOV G2 0000
    JAL CLEAR_SPRITE: LR

    MOV G0 0006
    MOV G1 0004
    MOV G2 0010
    JAL CLEAR_SPRITE: LR

    MOV G0 000B
    MOV G1 0004
    MOV G2 0020
    JAL CLEAR_SPRITE: LR

    MOV G0 0001
    MOV G1 0009
    MOV G2 0030
    JAL CLEAR_SPRITE: LR

    MOV G0 0006
    MOV G1 0009
    MOV G2 0040
    JAL CLEAR_SPRITE: LR

    MOV G0 000B
    MOV G1 0009
    MOV G2 0050
    JAL CLEAR_SPRITE: LR

    MOV G0 0001
    MOV G1 000E
    MOV G2 0060
    JAL CLEAR_SPRITE: LR


    JMP END:

END: