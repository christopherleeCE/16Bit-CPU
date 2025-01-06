INIT:

    #loading sprites :)
    JAL LOAD_SPRITES: LR

    #init vars :)
    JAL INIT_VARS: LR

    #filling backround :)
    JAL FILL_BACKROUND: LR

    #debug
    #JAL DEBUG_FILL: LR

    #begining game loop
    JMP START:

#sprite data
LOAD_SPRITES:

    #pain...
    LOAD_RAM 0000 0006
    LOAD_RAM 0001 0010
    LOAD_RAM 0002 0011
    LOAD_RAM 0003 0012
    LOAD_RAM 0004 0013
    LOAD_RAM 0005 0006
    LOAD_RAM 0006 0031
    LOAD_RAM 0007 0021
    LOAD_RAM 0008 0011
    LOAD_RAM 0009 0001
    LOAD_RAM 000A 0006
    LOAD_RAM 000B 0010
    LOAD_RAM 000C 0011
    LOAD_RAM 000D 0012
    LOAD_RAM 000E 0013
    LOAD_RAM 000F 0006
    LOAD_RAM 0010 0031
    LOAD_RAM 0011 0021
    LOAD_RAM 0012 0011
    LOAD_RAM 0013 0001
    LOAD_RAM 0014 FFFF
    LOAD_RAM 0015 AFAF
    LOAD_RAM 0016 AFAF
    LOAD_RAM 0017 AFAF
    LOAD_RAM 0018 AFAF
    LOAD_RAM 0019 AFAF
    LOAD_RAM 001A AFAF
    LOAD_RAM 001B AFAF
    LOAD_RAM 001C AFAF
    LOAD_RAM 001D AFAF
    LOAD_RAM 001E AFAF
    LOAD_RAM 001F AFAF
    LOAD_RAM 0020 0004
    LOAD_RAM 0021 0010
    LOAD_RAM 0022 0011
    LOAD_RAM 0023 0012
    LOAD_RAM 0024 0013
    LOAD_RAM 0025 0001
    LOAD_RAM 0026 0031
    LOAD_RAM 0027 AFAF
    LOAD_RAM 0028 AFAF
    LOAD_RAM 0029 AFAF
    LOAD_RAM 002A 0004
    LOAD_RAM 002B 0010
    LOAD_RAM 002C 0011
    LOAD_RAM 002D 0012
    LOAD_RAM 002E 0013
    LOAD_RAM 002F 0001
    LOAD_RAM 0030 0031
    LOAD_RAM 0031 AFAF
    LOAD_RAM 0032 AFAF
    LOAD_RAM 0033 AFAF
    LOAD_RAM 0034 FFFF
    LOAD_RAM 0035 AFAF
    LOAD_RAM 0036 AFAF
    LOAD_RAM 0037 AFAF
    LOAD_RAM 0038 AFAF
    LOAD_RAM 0039 AFAF
    LOAD_RAM 003A AFAF
    LOAD_RAM 003B AFAF
    LOAD_RAM 003C AFAF
    LOAD_RAM 003D AFAF
    LOAD_RAM 003E AFAF
    LOAD_RAM 003F AFAF
    LOAD_RAM 0040 0005
    LOAD_RAM 0041 0021
    LOAD_RAM 0042 0022
    LOAD_RAM 0043 0011
    LOAD_RAM 0044 0012
    LOAD_RAM 0045 0005
    LOAD_RAM 0046 0021
    LOAD_RAM 0047 0022
    LOAD_RAM 0048 0011
    LOAD_RAM 0049 0012
    LOAD_RAM 004A 0005
    LOAD_RAM 004B 0021
    LOAD_RAM 004C 0022
    LOAD_RAM 004D 0011
    LOAD_RAM 004E 0012
    LOAD_RAM 004F 0005
    LOAD_RAM 0050 0021
    LOAD_RAM 0051 0022
    LOAD_RAM 0052 0011
    LOAD_RAM 0053 0012
    LOAD_RAM 0054 FFFF
    LOAD_RAM 0055 AFAF
    LOAD_RAM 0056 AFAF
    LOAD_RAM 0057 AFAF
    LOAD_RAM 0058 AFAF
    LOAD_RAM 0059 AFAF
    LOAD_RAM 005A AFAF
    LOAD_RAM 005B AFAF
    LOAD_RAM 005C AFAF
    LOAD_RAM 005D AFAF
    LOAD_RAM 005E AFAF
    LOAD_RAM 005F AFAF
    LOAD_RAM 0060 0002
    LOAD_RAM 0061 0021
    LOAD_RAM 0062 0022
    LOAD_RAM 0063 AFAF
    LOAD_RAM 0064 AFAF
    LOAD_RAM 0065 0002
    LOAD_RAM 0066 0021
    LOAD_RAM 0067 0022
    LOAD_RAM 0068 AFAF
    LOAD_RAM 0069 AFAF
    LOAD_RAM 006A 0002
    LOAD_RAM 006B 0021
    LOAD_RAM 006C 0022
    LOAD_RAM 006D AFAF
    LOAD_RAM 006E AFAF
    LOAD_RAM 006F 0002
    LOAD_RAM 0070 0021
    LOAD_RAM 0071 0022
    LOAD_RAM 0072 AFAF
    LOAD_RAM 0073 AFAF
    LOAD_RAM 0074 FFFF
    LOAD_RAM 0075 AFAF
    LOAD_RAM 0076 AFAF
    LOAD_RAM 0077 AFAF
    LOAD_RAM 0078 AFAF
    LOAD_RAM 0079 AFAF
    LOAD_RAM 007A AFAF
    LOAD_RAM 007B AFAF
    LOAD_RAM 007C AFAF
    LOAD_RAM 007D AFAF
    LOAD_RAM 007E AFAF
    LOAD_RAM 007F AFAF
    LOAD_RAM 0080 0003
    LOAD_RAM 0081 0020
    LOAD_RAM 0082 0021
    LOAD_RAM 0083 0011
    LOAD_RAM 0084 0012
    LOAD_RAM 0085 0003
    LOAD_RAM 0086 0021
    LOAD_RAM 0087 0010
    LOAD_RAM 0088 0011
    LOAD_RAM 0089 0000
    LOAD_RAM 008A 0003
    LOAD_RAM 008B 0010
    LOAD_RAM 008C 0011
    LOAD_RAM 008D 0001
    LOAD_RAM 008E 0002
    LOAD_RAM 008F 0003
    LOAD_RAM 0090 0021
    LOAD_RAM 0091 0010
    LOAD_RAM 0092 0011
    LOAD_RAM 0093 0000
    LOAD_RAM 0094 FFFF
    LOAD_RAM 0095 AFAF
    LOAD_RAM 0096 AFAF
    LOAD_RAM 0097 AFAF
    LOAD_RAM 0098 AFAF
    LOAD_RAM 0099 AFAF
    LOAD_RAM 009A AFAF
    LOAD_RAM 009B AFAF
    LOAD_RAM 009C AFAF
    LOAD_RAM 009D AFAF
    LOAD_RAM 009E AFAF
    LOAD_RAM 009F AFAF
    LOAD_RAM 00A0 0003
    LOAD_RAM 00A1 0020
    LOAD_RAM 00A2 0021
    LOAD_RAM 00A3 0012
    LOAD_RAM 00A4 AFAF
    LOAD_RAM 00A5 0002
    LOAD_RAM 00A6 0021
    LOAD_RAM 00A7 0010
    LOAD_RAM 00A8 AFAF
    LOAD_RAM 00A9 AFAF
    LOAD_RAM 00AA 0003
    LOAD_RAM 00AB 0010
    LOAD_RAM 00AC 0011
    LOAD_RAM 00AD 0002
    LOAD_RAM 00AE AFAF
    LOAD_RAM 00AF 0002
    LOAD_RAM 00B0 0021
    LOAD_RAM 00B1 0010
    LOAD_RAM 00B2 AFAF
    LOAD_RAM 00B3 AFAF
    LOAD_RAM 00B4 FFFF
    LOAD_RAM 00B5 AFAF
    LOAD_RAM 00B6 AFAF
    LOAD_RAM 00B7 AFAF
    LOAD_RAM 00B8 AFAF
    LOAD_RAM 00B9 AFAF
    LOAD_RAM 00BA AFAF
    LOAD_RAM 00BB AFAF
    LOAD_RAM 00BC AFAF
    LOAD_RAM 00BD AFAF
    LOAD_RAM 00BE AFAF
    LOAD_RAM 00BF AFAF
    LOAD_RAM 00C0 0002
    LOAD_RAM 00C1 0021
    LOAD_RAM 00C2 0022
    LOAD_RAM 00C3 0010
    LOAD_RAM 00C4 0011
    LOAD_RAM 00C5 0002
    LOAD_RAM 00C6 0020
    LOAD_RAM 00C7 0010
    LOAD_RAM 00C8 0011
    LOAD_RAM 00C9 0001
    LOAD_RAM 00CA 0002
    LOAD_RAM 00CB 0011
    LOAD_RAM 00CC 0012
    LOAD_RAM 00CD 0000
    LOAD_RAM 00CE 0001
    LOAD_RAM 00CF 0002
    LOAD_RAM 00D0 0020
    LOAD_RAM 00D1 0010
    LOAD_RAM 00D2 0011
    LOAD_RAM 00D3 0001
    LOAD_RAM 00D4 FFFF
    LOAD_RAM 00D5 AFAF
    LOAD_RAM 00D6 AFAF
    LOAD_RAM 00D7 AFAF
    LOAD_RAM 00D8 AFAF
    LOAD_RAM 00D9 AFAF
    LOAD_RAM 00DA AFAF
    LOAD_RAM 00DB AFAF
    LOAD_RAM 00DC AFAF
    LOAD_RAM 00DD AFAF
    LOAD_RAM 00DE AFAF
    LOAD_RAM 00DF AFAF
    LOAD_RAM 00E0 0003
    LOAD_RAM 00E1 0021
    LOAD_RAM 00E2 0022
    LOAD_RAM 00E3 0010
    LOAD_RAM 00E4 AFAF
    LOAD_RAM 00E5 0002
    LOAD_RAM 00E6 0020
    LOAD_RAM 00E7 0011
    LOAD_RAM 00E8 AFAF
    LOAD_RAM 00E9 AFAF
    LOAD_RAM 00EA 0003
    LOAD_RAM 00EB 0011
    LOAD_RAM 00EC 0012
    LOAD_RAM 00ED 0000
    LOAD_RAM 00EE AFAF
    LOAD_RAM 00EF 0002
    LOAD_RAM 00F0 0020
    LOAD_RAM 00F1 0011
    LOAD_RAM 00F2 AFAF
    LOAD_RAM 00F3 AFAF
    LOAD_RAM 00F4 FFFF
    LOAD_RAM 00F5 AFAF
    LOAD_RAM 00F6 AFAF
    LOAD_RAM 00F7 AFAF
    LOAD_RAM 00F8 AFAF
    LOAD_RAM 00F9 AFAF
    LOAD_RAM 00FA AFAF
    LOAD_RAM 00FB AFAF
    LOAD_RAM 00FC AFAF
    LOAD_RAM 00FD AFAF
    LOAD_RAM 00FE AFAF
    LOAD_RAM 00FF AFAF
    LOAD_RAM 0100 0008
    LOAD_RAM 0101 0020
    LOAD_RAM 0102 0021
    LOAD_RAM 0103 0022
    LOAD_RAM 0104 0012
    LOAD_RAM 0105 0008
    LOAD_RAM 0106 0031
    LOAD_RAM 0107 0032
    LOAD_RAM 0108 0021
    LOAD_RAM 0109 0011
    LOAD_RAM 010A 0008
    LOAD_RAM 010B 0030
    LOAD_RAM 010C 0020
    LOAD_RAM 010D 0021
    LOAD_RAM 010E 0022
    LOAD_RAM 010F 0008
    LOAD_RAM 0110 0031
    LOAD_RAM 0111 0021
    LOAD_RAM 0112 0010
    LOAD_RAM 0113 0011
    LOAD_RAM 0114 FFFF
    LOAD_RAM 0115 AFAF
    LOAD_RAM 0116 AFAF
    LOAD_RAM 0117 AFAF
    LOAD_RAM 0118 AFAF
    LOAD_RAM 0119 AFAF
    LOAD_RAM 011A AFAF
    LOAD_RAM 011B AFAF
    LOAD_RAM 011C AFAF
    LOAD_RAM 011D AFAF
    LOAD_RAM 011E AFAF
    LOAD_RAM 011F AFAF
    LOAD_RAM 0120 0003
    LOAD_RAM 0121 0020
    LOAD_RAM 0122 0021
    LOAD_RAM 0123 0022
    LOAD_RAM 0124 AFAF
    LOAD_RAM 0125 0002
    LOAD_RAM 0126 0031
    LOAD_RAM 0127 0032
    LOAD_RAM 0128 AFAF
    LOAD_RAM 0129 AFAF
    LOAD_RAM 012A 0003
    LOAD_RAM 012B 0030
    LOAD_RAM 012C 0021
    LOAD_RAM 012D 0022
    LOAD_RAM 012E AFAF
    LOAD_RAM 012F 0002
    LOAD_RAM 0130 0031
    LOAD_RAM 0131 0010
    LOAD_RAM 0132 AFAF
    LOAD_RAM 0133 AFAF
    LOAD_RAM 0134 FFFF
    LOAD_RAM 0135 AFAF
    LOAD_RAM 0136 AFAF
    LOAD_RAM 0137 AFAF
    LOAD_RAM 0138 AFAF
    LOAD_RAM 0139 AFAF
    LOAD_RAM 013A AFAF
    LOAD_RAM 013B AFAF
    LOAD_RAM 013C AFAF
    LOAD_RAM 013D AFAF
    LOAD_RAM 013E AFAF
    LOAD_RAM 013F AFAF
    LOAD_RAM 0140 0004
    LOAD_RAM 0141 0020
    LOAD_RAM 0142 0021
    LOAD_RAM 0143 0022
    LOAD_RAM 0144 0010
    LOAD_RAM 0145 0004
    LOAD_RAM 0146 0031
    LOAD_RAM 0147 0021
    LOAD_RAM 0148 0011
    LOAD_RAM 0149 0012
    LOAD_RAM 014A 0004
    LOAD_RAM 014B 0032
    LOAD_RAM 014C 0020
    LOAD_RAM 014D 0021
    LOAD_RAM 014E 0022
    LOAD_RAM 014F 0004
    LOAD_RAM 0150 0030
    LOAD_RAM 0151 0031
    LOAD_RAM 0152 0021
    LOAD_RAM 0153 0011
    LOAD_RAM 0154 FFFF
    LOAD_RAM 0155 AFAF
    LOAD_RAM 0156 AFAF
    LOAD_RAM 0157 AFAF
    LOAD_RAM 0158 AFAF
    LOAD_RAM 0159 AFAF
    LOAD_RAM 015A AFAF
    LOAD_RAM 015B AFAF
    LOAD_RAM 015C AFAF
    LOAD_RAM 015D AFAF
    LOAD_RAM 015E AFAF
    LOAD_RAM 015F AFAF
    LOAD_RAM 0160 0003
    LOAD_RAM 0161 0020
    LOAD_RAM 0162 0021
    LOAD_RAM 0163 0022
    LOAD_RAM 0164 AFAF
    LOAD_RAM 0165 0002
    LOAD_RAM 0166 0031
    LOAD_RAM 0167 0012
    LOAD_RAM 0168 AFAF
    LOAD_RAM 0169 AFAF
    LOAD_RAM 016A 0003
    LOAD_RAM 016B 0032
    LOAD_RAM 016C 0020
    LOAD_RAM 016D 0021
    LOAD_RAM 016E AFAF
    LOAD_RAM 016F 0002
    LOAD_RAM 0170 0030
    LOAD_RAM 0171 0031
    LOAD_RAM 0172 AFAF
    LOAD_RAM 0173 AFAF
    LOAD_RAM 0174 FFFF
    LOAD_RAM 0175 AFAF
    LOAD_RAM 0176 AFAF
    LOAD_RAM 0177 AFAF
    LOAD_RAM 0178 AFAF
    LOAD_RAM 0179 AFAF
    LOAD_RAM 017A AFAF
    LOAD_RAM 017B AFAF
    LOAD_RAM 017C AFAF
    LOAD_RAM 017D AFAF
    LOAD_RAM 017E AFAF
    LOAD_RAM 017F AFAF
    LOAD_RAM 0180 0007
    LOAD_RAM 0181 0020
    LOAD_RAM 0182 0021
    LOAD_RAM 0183 0022
    LOAD_RAM 0184 0011
    LOAD_RAM 0185 0007
    LOAD_RAM 0186 0031
    LOAD_RAM 0187 0021
    LOAD_RAM 0188 0022
    LOAD_RAM 0189 0011
    LOAD_RAM 018A 0007
    LOAD_RAM 018B 0031
    LOAD_RAM 018C 0020
    LOAD_RAM 018D 0021
    LOAD_RAM 018E 0022
    LOAD_RAM 018F 0007
    LOAD_RAM 0190 0031
    LOAD_RAM 0191 0020
    LOAD_RAM 0192 0021
    LOAD_RAM 0193 0011
    LOAD_RAM 0194 FFFF
    LOAD_RAM 0195 AFAF
    LOAD_RAM 0196 AFAF
    LOAD_RAM 0197 AFAF
    LOAD_RAM 0198 AFAF
    LOAD_RAM 0199 AFAF
    LOAD_RAM 019A AFAF
    LOAD_RAM 019B AFAF
    LOAD_RAM 019C AFAF
    LOAD_RAM 019D AFAF
    LOAD_RAM 019E AFAF
    LOAD_RAM 019F AFAF
    LOAD_RAM 01A0 0003
    LOAD_RAM 01A1 0020
    LOAD_RAM 01A2 0021
    LOAD_RAM 01A3 0022
    LOAD_RAM 01A4 AFAF
    LOAD_RAM 01A5 0002
    LOAD_RAM 01A6 0031
    LOAD_RAM 01A7 0022
    LOAD_RAM 01A8 AFAF
    LOAD_RAM 01A9 AFAF
    LOAD_RAM 01AA 0003
    LOAD_RAM 01AB 0031
    LOAD_RAM 01AC 0020
    LOAD_RAM 01AD 0022
    LOAD_RAM 01AE AFAF
    LOAD_RAM 01AF 0002
    LOAD_RAM 01B0 0031
    LOAD_RAM 01B1 0020
    LOAD_RAM 01B2 AFAF
    LOAD_RAM 01B3 AFAF
    LOAD_RAM 01B4 AFAF
    LOAD_RAM 01B5 AFAF
    LOAD_RAM 01B6 AFAF
    LOAD_RAM 01B7 AFAF
    LOAD_RAM 01B8 AFAF
    LOAD_RAM 01B9 AFAF
    LOAD_RAM 01BA AFAF
    LOAD_RAM 01BB AFAF
    LOAD_RAM 01BC AFAF
    LOAD_RAM 01BD AFAF
    LOAD_RAM 01BE AFAF
    LOAD_RAM 01BF AFAF

    #ret
    JR LR

#initalize variables in ram
INIT_VARS:

    #last pos (x, y)
    LOAD_RAM 0200 0006
    LOAD_RAM 0201 FFFF

    #current pos
    LOAD_RAM 0202 0006
    LOAD_RAM 0203 0000

    #next pos (currently unused)
    LOAD_RAM 0204 0006
    LOAD_RAM 0205 0001

    #lines to clear, 0xFFFF being a placeholder
    LOAD_RAM 0206 FFFF
    LOAD_RAM 0207 FFFF
    LOAD_RAM 0208 FFFF
    LOAD_RAM 0209 FFFF
    LOAD_RAM 020A FAFA  #padding so faster method can be used in PIECE_LANDED_FOR3
    
    #last pLacement location
    LOAD_RAM 020B FFFF
    LOAD_RAM 020C FFFF

    #current sprite
    LOAD_RAM 020D 0040

    #lowest collision point
    LOAD_RAM 020E 0000

    #was moved
    LOAD_RAM 020F 0000

    #has landed
    LOAD_RAM 0210 0000

    #last sprite (will be written to if piece was rotated, if not isequal to current_sprite)
    LW G0 ZERO 020D
    SW ZERO G0 0211

    #wait_time
    LOAD_RAM 0212 0500

    #saved_piece
    LOAD_RAM 0213 0000

    #rng
    LOAD_RAM 0214 0000

    #init stack_ptr 
    LOAD_RAM 0215 FAFA
    MOV SP 0215

    #ret
    JR LR

#debug :)
DEBUG_FILL:

    LOAD_RAM 10F4 FFFF
    LOAD_RAM 10F5 FFFF
    LOAD_RAM 10F6 FFFF
    LOAD_RAM 10F7 FFFF
    LOAD_RAM 10F8 FFFF
    LOAD_RAM 10F9 FFFF
    LOAD_RAM 10FA FFFF
    LOAD_RAM 10FB FFFF
    LOAD_RAM 10FC FFFF

    LOAD_RAM 10E4 FFFF
    LOAD_RAM 10E5 FFFF
    LOAD_RAM 10E6 FFFF
    LOAD_RAM 10E7 FFFF
    LOAD_RAM 10E8 FFFF
    LOAD_RAM 10E9 FFFF
    LOAD_RAM 10EA FFFF
    LOAD_RAM 10EB FFFF
    LOAD_RAM 10EC FFFF

    # LOAD_RAM 10D4 FFFF
    # LOAD_RAM 10D5 FFFF
    # LOAD_RAM 10D6 FFFF
    # LOAD_RAM 10D7 FFFF
    # LOAD_RAM 10D8 FFFF
    # LOAD_RAM 10D9 FFFF
    # LOAD_RAM 10DA FFFF
    # LOAD_RAM 10DB FFFF
    # LOAD_RAM 10DC FFFF

    LOAD_RAM 10C4 FFFF
    LOAD_RAM 10C5 FFFF
    LOAD_RAM 10C6 FFFF
    LOAD_RAM 10C7 FFFF
    LOAD_RAM 10C8 FFFF
    LOAD_RAM 10C9 FFFF
    LOAD_RAM 10CA FFFF
    LOAD_RAM 10CB FFFF
    LOAD_RAM 10CC FFFF

    LOAD_RAM 10B4 FFFF
    LOAD_RAM 10B5 FFFF
    LOAD_RAM 10B6 FFFF
    LOAD_RAM 10B7 FFFF
    LOAD_RAM 10B8 FFFF
    LOAD_RAM 10B9 FFFF
    LOAD_RAM 10BA FFFF
    LOAD_RAM 10BB FFFF
    LOAD_RAM 10BC FFFF

    LOAD_RAM 80F4 0003
    LOAD_RAM 80F5 0003
    LOAD_RAM 80F6 0003
    LOAD_RAM 80F7 0003
    LOAD_RAM 80F8 0003
    LOAD_RAM 80F9 0003
    LOAD_RAM 80FA 0003
    LOAD_RAM 80FB 0003
    LOAD_RAM 80FC 0003

    LOAD_RAM 80E4 0003
    LOAD_RAM 80E5 0003
    LOAD_RAM 80E6 0003
    LOAD_RAM 80E7 0003
    LOAD_RAM 80E8 0003
    LOAD_RAM 80E9 0003
    LOAD_RAM 80EA 0003
    LOAD_RAM 80EB 0003
    LOAD_RAM 80EC 0003

    # LOAD_RAM 80D4 0003
    # LOAD_RAM 80D5 0003
    # LOAD_RAM 80D6 0003
    # LOAD_RAM 80D7 0003
    # LOAD_RAM 80D8 0003
    # LOAD_RAM 80D9 0003
    # LOAD_RAM 80DA 0003
    # LOAD_RAM 80DB 0003
    # LOAD_RAM 80DC 0003

    LOAD_RAM 80C4 0003
    LOAD_RAM 80C5 0003
    LOAD_RAM 80C6 0003
    LOAD_RAM 80C7 0003
    LOAD_RAM 80C8 0003
    LOAD_RAM 80C9 0003
    LOAD_RAM 80CA 0003
    LOAD_RAM 80CB 0003
    LOAD_RAM 80CC 0003

    LOAD_RAM 80B4 0003
    LOAD_RAM 80B5 0003
    LOAD_RAM 80B6 0003
    LOAD_RAM 80B7 0003
    LOAD_RAM 80B8 0003
    LOAD_RAM 80B9 0003
    LOAD_RAM 80BA 0003
    LOAD_RAM 80BB 0003
    LOAD_RAM 80BC 0003

    JR LR

#fills backround with black in center and blue-ish on sides
FILL_BACKROUND: #no args

    #temp regs
    MOV G0 0001
    MOV G1 0047
    MOV G2 FFFF

    #center
    SW ZERO G0 8003
    SW ZERO G0 8004
    SW ZERO G0 8005
    SW ZERO G0 8006
    SW ZERO G0 8007
    SW ZERO G0 8008
    SW ZERO G0 8009
    SW ZERO G0 800A
    SW ZERO G0 800B
    SW ZERO G0 800C
    SW ZERO G0 8013
    SW ZERO G0 8014
    SW ZERO G0 8015
    SW ZERO G0 8016
    SW ZERO G0 8017
    SW ZERO G0 8018
    SW ZERO G0 8019
    SW ZERO G0 801A
    SW ZERO G0 801B
    SW ZERO G0 801C
    SW ZERO G0 8023
    SW ZERO G0 8024
    SW ZERO G0 8025
    SW ZERO G0 8026
    SW ZERO G0 8027
    SW ZERO G0 8028
    SW ZERO G0 8029
    SW ZERO G0 802A
    SW ZERO G0 802B
    SW ZERO G0 802C
    SW ZERO G0 8033
    SW ZERO G0 8034
    SW ZERO G0 8035
    SW ZERO G0 8036
    SW ZERO G0 8037
    SW ZERO G0 8038
    SW ZERO G0 8039
    SW ZERO G0 803A
    SW ZERO G0 803B
    SW ZERO G0 803C
    SW ZERO G0 8043
    SW ZERO G0 8044
    SW ZERO G0 8045
    SW ZERO G0 8046
    SW ZERO G0 8047
    SW ZERO G0 8048
    SW ZERO G0 8049
    SW ZERO G0 804A
    SW ZERO G0 804B
    SW ZERO G0 804C
    SW ZERO G0 8053
    SW ZERO G0 8054
    SW ZERO G0 8055
    SW ZERO G0 8056
    SW ZERO G0 8057
    SW ZERO G0 8058
    SW ZERO G0 8059
    SW ZERO G0 805A
    SW ZERO G0 805B
    SW ZERO G0 805C
    SW ZERO G0 8063
    SW ZERO G0 8064
    SW ZERO G0 8065
    SW ZERO G0 8066
    SW ZERO G0 8067
    SW ZERO G0 8068
    SW ZERO G0 8069
    SW ZERO G0 806A
    SW ZERO G0 806B
    SW ZERO G0 806C
    SW ZERO G0 8073
    SW ZERO G0 8074
    SW ZERO G0 8075
    SW ZERO G0 8076
    SW ZERO G0 8077
    SW ZERO G0 8078
    SW ZERO G0 8079
    SW ZERO G0 807A
    SW ZERO G0 807B
    SW ZERO G0 807C
    SW ZERO G0 8083
    SW ZERO G0 8084
    SW ZERO G0 8085
    SW ZERO G0 8086
    SW ZERO G0 8087
    SW ZERO G0 8088
    SW ZERO G0 8089
    SW ZERO G0 808A
    SW ZERO G0 808B
    SW ZERO G0 808C
    SW ZERO G0 8093
    SW ZERO G0 8094
    SW ZERO G0 8095
    SW ZERO G0 8096
    SW ZERO G0 8097
    SW ZERO G0 8098
    SW ZERO G0 8099
    SW ZERO G0 809A
    SW ZERO G0 809B
    SW ZERO G0 809C
    SW ZERO G0 80A3
    SW ZERO G0 80A4
    SW ZERO G0 80A5
    SW ZERO G0 80A6
    SW ZERO G0 80A7
    SW ZERO G0 80A8
    SW ZERO G0 80A9
    SW ZERO G0 80AA
    SW ZERO G0 80AB
    SW ZERO G0 80AC
    SW ZERO G0 80B3
    SW ZERO G0 80B4
    SW ZERO G0 80B5
    SW ZERO G0 80B6
    SW ZERO G0 80B7
    SW ZERO G0 80B8
    SW ZERO G0 80B9
    SW ZERO G0 80BA
    SW ZERO G0 80BB
    SW ZERO G0 80BC
    SW ZERO G0 80C3
    SW ZERO G0 80C4
    SW ZERO G0 80C5
    SW ZERO G0 80C6
    SW ZERO G0 80C7
    SW ZERO G0 80C8
    SW ZERO G0 80C9
    SW ZERO G0 80CA
    SW ZERO G0 80CB
    SW ZERO G0 80CC
    SW ZERO G0 80D3
    SW ZERO G0 80D4
    SW ZERO G0 80D5
    SW ZERO G0 80D6
    SW ZERO G0 80D7
    SW ZERO G0 80D8
    SW ZERO G0 80D9
    SW ZERO G0 80DA
    SW ZERO G0 80DB
    SW ZERO G0 80DC
    SW ZERO G0 80E3
    SW ZERO G0 80E4
    SW ZERO G0 80E5
    SW ZERO G0 80E6
    SW ZERO G0 80E7
    SW ZERO G0 80E8
    SW ZERO G0 80E9
    SW ZERO G0 80EA
    SW ZERO G0 80EB
    SW ZERO G0 80EC
    SW ZERO G0 80F3
    SW ZERO G0 80F4
    SW ZERO G0 80F5
    SW ZERO G0 80F6
    SW ZERO G0 80F7
    SW ZERO G0 80F8
    SW ZERO G0 80F9
    SW ZERO G0 80FA
    SW ZERO G0 80FB
    SW ZERO G0 80FC

    #blue walls
    SW ZERO G1 8002
    SW ZERO G1 8012
    SW ZERO G1 8022
    SW ZERO G1 8032
    SW ZERO G1 8042
    SW ZERO G1 8052
    SW ZERO G1 8062
    SW ZERO G1 8072
    SW ZERO G1 8082
    SW ZERO G1 8092
    SW ZERO G1 80A2
    SW ZERO G1 80B2
    SW ZERO G1 80C2
    SW ZERO G1 80D2
    SW ZERO G1 80E2
    SW ZERO G1 80F2
    SW ZERO G1 8102
    SW ZERO G1 8103
    SW ZERO G1 8104
    SW ZERO G1 8105
    SW ZERO G1 8106
    SW ZERO G1 8107
    SW ZERO G1 8108
    SW ZERO G1 8109
    SW ZERO G1 810A
    SW ZERO G1 810B
    SW ZERO G1 810C
    SW ZERO G1 810D
    SW ZERO G1 80FD
    SW ZERO G1 80ED
    SW ZERO G1 80DD
    SW ZERO G1 80CD
    SW ZERO G1 80BD
    SW ZERO G1 80AD
    SW ZERO G1 809D
    SW ZERO G1 808D
    SW ZERO G1 807D
    SW ZERO G1 806D
    SW ZERO G1 805D
    SW ZERO G1 804D
    SW ZERO G1 803D
    SW ZERO G1 802D
    SW ZERO G1 801D
    SW ZERO G1 800D

    SW ZERO G1 8001
    SW ZERO G1 8011
    SW ZERO G1 8021
    SW ZERO G1 8031
    SW ZERO G1 8041
    SW ZERO G1 8051
    SW ZERO G1 8061
    SW ZERO G1 8071
    SW ZERO G1 8081
    SW ZERO G1 8091
    SW ZERO G1 80A1
    SW ZERO G1 80B1
    SW ZERO G1 80C1
    SW ZERO G1 80D1
    SW ZERO G1 80E1
    SW ZERO G1 80F1
    SW ZERO G1 8101
    SW ZERO G1 8111
    SW ZERO G1 8112
    SW ZERO G1 8113
    SW ZERO G1 8114
    SW ZERO G1 8115
    SW ZERO G1 8116
    SW ZERO G1 8117
    SW ZERO G1 8118
    SW ZERO G1 8119
    SW ZERO G1 811A
    SW ZERO G1 811B
    SW ZERO G1 811C
    SW ZERO G1 811D
    SW ZERO G1 811E
    SW ZERO G1 810E
    SW ZERO G1 80FE
    SW ZERO G1 80EE
    SW ZERO G1 80DE
    SW ZERO G1 80CE
    SW ZERO G1 80BE
    SW ZERO G1 80AE
    SW ZERO G1 809E
    SW ZERO G1 808E
    SW ZERO G1 807E
    SW ZERO G1 806E
    SW ZERO G1 805E
    SW ZERO G1 804E
    SW ZERO G1 803E
    SW ZERO G1 802E
    SW ZERO G1 801E
    SW ZERO G1 800E

    SW ZERO G1 8000
    SW ZERO G1 8010
    SW ZERO G1 8020
    SW ZERO G1 8030
    SW ZERO G1 8040
    SW ZERO G1 8050
    SW ZERO G1 8060
    SW ZERO G1 8070
    SW ZERO G1 8080
    SW ZERO G1 8090
    SW ZERO G1 80A0
    SW ZERO G1 80B0
    SW ZERO G1 80C0
    SW ZERO G1 80D0
    SW ZERO G1 80E0
    SW ZERO G1 80F0
    SW ZER0 G1 8100
    SW ZER0 G1 8110
    SW ZER0 G1 8120
    SW ZERO G1 8121
    SW ZERO G1 8122
    SW ZERO G1 8123
    SW ZERO G1 8124
    SW ZERO G1 8125
    SW ZERO G1 8126
    SW ZERO G1 8127
    SW ZERO G1 8128
    SW ZERO G1 8129
    SW ZERO G1 812A
    SW ZERO G1 812B
    SW ZERO G1 812C
    SW ZERO G1 812D
    SW ZERO G1 812E
    SW ZERO G1 812F
    SW ZERO G1 811F
    SW ZERO G1 810F
    SW ZERO G1 80FF
    SW ZERO G1 80EF
    SW ZERO G1 80DF
    SW ZERO G1 80CF
    SW ZERO G1 80BF
    SW ZERO G1 80AF
    SW ZERO G1 809F
    SW ZERO G1 808F
    SW ZERO G1 807F
    SW ZERO G1 806F
    SW ZERO G1 805F
    SW ZERO G1 804F
    SW ZERO G1 803F
    SW ZERO G1 802F
    SW ZERO G1 801F
    SW ZERO G1 800F

    #floor collsion & wall collision
    SW ZERO G2 1002
    SW ZERO G2 1012
    SW ZERO G2 1022
    SW ZERO G2 1032
    SW ZERO G2 1042
    SW ZERO G2 1052
    SW ZERO G2 1062
    SW ZERO G2 1072
    SW ZERO G2 1082
    SW ZERO G2 1092
    SW ZERO G2 10A2
    SW ZERO G2 10B2
    SW ZERO G2 10C2
    SW ZERO G2 10D2
    SW ZERO G2 10E2
    SW ZERO G2 10F2
    SW ZERO G2 1102
    SW ZERO G2 1103
    SW ZERO G2 1104
    SW ZERO G2 1105
    SW ZERO G2 1106
    SW ZERO G2 1107
    SW ZERO G2 1108
    SW ZERO G2 1109
    SW ZERO G2 110A
    SW ZERO G2 110B
    SW ZERO G2 110C
    SW ZERO G2 110D
    SW ZERO G2 10FD
    SW ZERO G2 10ED
    SW ZERO G2 10DD
    SW ZERO G2 10CD
    SW ZERO G2 10BD
    SW ZERO G2 10AD
    SW ZERO G2 109D
    SW ZERO G2 108D
    SW ZERO G2 107D
    SW ZERO G2 106D
    SW ZERO G2 105D
    SW ZERO G2 104D
    SW ZERO G2 103D
    SW ZERO G2 102D
    SW ZERO G2 101D
    SW ZERO G2 100D

    SW ZERO G2 1001
    SW ZERO G2 1011
    SW ZERO G2 1021
    SW ZERO G2 1031
    SW ZERO G2 1041
    SW ZERO G2 1051
    SW ZERO G2 1061
    SW ZERO G2 1071
    SW ZERO G2 1081
    SW ZERO G2 1091
    SW ZERO G2 10A1
    SW ZERO G2 10B1
    SW ZERO G2 10C1
    SW ZERO G2 10D1
    SW ZERO G2 10E1
    SW ZERO G2 10F1
    SW ZERO G2 1101
    SW ZERO G2 1111
    SW ZERO G2 1112
    SW ZERO G2 1113
    SW ZERO G2 1114
    SW ZERO G2 1115
    SW ZERO G2 1116
    SW ZERO G2 1117
    SW ZERO G2 1118
    SW ZERO G2 1119
    SW ZERO G2 111A
    SW ZERO G2 111B
    SW ZERO G2 111C
    SW ZERO G2 111D
    SW ZERO G2 111E
    SW ZERO G2 110E
    SW ZERO G2 10FE
    SW ZERO G2 10EE
    SW ZERO G2 10DE
    SW ZERO G2 10CE
    SW ZERO G2 10BE
    SW ZERO G2 10AE
    SW ZERO G2 109E
    SW ZERO G2 108E
    SW ZERO G2 107E
    SW ZERO G2 106E
    SW ZERO G2 105E
    SW ZERO G2 104E
    SW ZERO G2 103E
    SW ZERO G2 102E
    SW ZERO G2 101E
    SW ZERO G2 100E

    SW ZERO G2 1000
    SW ZERO G2 1010
    SW ZERO G2 1020
    SW ZERO G2 1030
    SW ZERO G2 1040
    SW ZERO G2 1050
    SW ZERO G2 1060
    SW ZERO G2 1070
    SW ZERO G2 1080
    SW ZERO G2 1090
    SW ZERO G2 10A0
    SW ZERO G2 10B0
    SW ZERO G2 10C0
    SW ZERO G2 10D0
    SW ZERO G2 10E0
    SW ZERO G2 10F0
    SW ZER0 G2 1100
    SW ZER0 G2 1110
    SW ZER0 G2 1120
    SW ZERO G2 1121
    SW ZERO G2 1122
    SW ZERO G2 1123
    SW ZERO G2 1124
    SW ZERO G2 1125
    SW ZERO G2 1126
    SW ZERO G2 1127
    SW ZERO G2 1128
    SW ZERO G2 1129
    SW ZERO G2 112A
    SW ZERO G2 112B
    SW ZERO G2 112C
    SW ZERO G2 112D
    SW ZERO G2 112E
    SW ZERO G2 112F
    SW ZERO G2 111F
    SW ZERO G2 110F
    SW ZERO G2 10FF
    SW ZERO G2 10EF
    SW ZERO G2 10DF
    SW ZERO G2 10CF
    SW ZERO G2 10BF
    SW ZERO G2 10AF
    SW ZERO G2 109F
    SW ZERO G2 108F
    SW ZERO G2 107F
    SW ZERO G2 106F
    SW ZERO G2 105F
    SW ZERO G2 104F
    SW ZERO G2 103F
    SW ZERO G2 102F
    SW ZERO G2 101F
    SW ZERO G2 100F

    JR LR

#draws pixel :)
DRAW_PIXEL: #G0(x) G1(y) G2(color)

    MULI G1 G1 0010
    ADD G0 G0 G1
    SW G0 G2 8000
    JR LR

#clears pixel to black
CLEAR_PIXEL: #G0(x) G1(y)

    MOV G2 0001
    MULI G1 G1 0010
    ADD G0 G0 G1
    SW G0 G2 8000
    JR LR

#draws sprite :)
DRAW_SPRITE: #G0(x) G1(y) G2(sprite_ptr)

    MOV G3 8000         #vram_ptr init to (0,0)
    MULI G1 G1 0010     #shifting y pos left by 1 4bits
    ADD G3 G3 G0        #adding x and y(shifted) pos to vram addr
    ADD G3 G3 G1        #G3 = 0x80YX

    LW G0 G2 0000       #G0 = color

    ADDI G2 G2 0001     #inc sprite_ptr
    LW G1 G2 0000       #next pixel cord (sprite cord) to write to
    ADD G1 G1 G3        #shifting g1 to vram cord
    SW G1 G0 0000       #store in vram
    
    ADDI G2 G2 0001     #repeate w/o for loop 4 preformance
    LW G1 G2 0000
    ADD G1 G1 G3
    SW G1 G0 0000
    
    ADDI G2 G2 0001
    LW G1 G2 0000
    ADD G1 G1 G3
    SW G1 G0 0000
    
    ADDI G2 G2 0001
    LW G1 G2 0000
    ADD G1 G1 G3
    SW G1 G0 0000

    JR LR               #ret

#write to RAM for collision detection
WRITE_SPRITE: #G0(x) G1(y) G2(sprite_ptr)

    MOV G3 1000         #ram_ptr init to (0,0)
    MULI G1 G1 0010     #shifting y pos left by 1 4bits
    ADD G3 G3 G0        #adding x and y(shifted) pos to vram addr
    ADD G3 G3 G1        #G3 = 0x80YX

    MOV G0 FFFF         #FFFF = occupied, 0000 = empty

    ADDI G2 G2 0001     #inc sprite_ptr
    LW G1 G2 0000       #next pixel cord (sprite cord) to write to
    ADD G1 G1 G3        #shifting g1 to ram cord
    SW G1 G0 0000       #store in ram
    
    ADDI G2 G2 0001     #repeate w/o for loop 4 preformance
    LW G1 G2 0000
    ADD G1 G1 G3
    SW G1 G0 0000
    
    ADDI G2 G2 0001
    LW G1 G2 0000
    ADD G1 G1 G3
    SW G1 G0 0000
    
    ADDI G2 G2 0001
    LW G1 G2 0000
    ADD G1 G1 G3
    SW G1 G0 0000

    JR LR               #ret

#clears sprite to black
CLEAR_SPRITE: #G0(x) G1(y) G2(sprite_ptr)

    MOV G3 8000         #vram_ptr init to (0,0)
    MULI G1 G1 0010     #shifting y pos left by 1 4bits
    ADD G3 G3 G0        #adding x and y(shifted) pos to vram addr
    ADD G3 G3 G1        #G3 = 0x80YX

    MOV G0 0001         #G0 = black

    ADDI G2 G2 0001     #inc sprite_ptr
    LW G1 G2 0000       #next pixel (sprite cord) to write to
    ADD G1 G1 G3        #shifting g1 to vram cord
    SW G1 G0 0000       #store in vram
    
    ADDI G2 G2 0001     #repeate w/o for loop 4 preformance
    LW G1 G2 0000
    ADD G1 G1 G3
    SW G1 G0 0000
    
    ADDI G2 G2 0001
    LW G1 G2 0000
    ADD G1 G1 G3
    SW G1 G0 0000
    
    ADDI G2 G2 0001
    LW G1 G2 0000
    ADD G1 G1 G3
    SW G1 G0 0000

    JR LR               #ret

#checks if line is full | G0 returns 0x80XD if line is full, 0 if not
CHECK_LINE: #G0(Y) (0x80X3)  X = 0:15   ???USE AND???

    SUBI G0 G0 7000        #shifting vram ptr to memory w/ collsion info
    MOV G2 0000         #int ii = 0
    MOV G3 0009         #const int

    FOR_CHECK_LINE_START: #for(int ii = 0; ii < 10; ii++)
    BGT G2 G3 FOR_CHECK_LINE_END:
    
    LW G1 G0 0000       #pixel_color

    #if(pixel is not occupied) {return FAFA;}
    BNE G1 ZERO CHECK_LINE_CONT:
    MOV G0 FAFA
    JR LR
    CHECK_LINE_CONT:

    ADDI G2 G2 0001
    ADDI G0 G0 0001

    JMP FOR_CHECK_LINE_START:
    FOR_CHECK_LINE_END:

    #return 0x80YD
    JR LR

#clears line if G0 != FAFA
CLEAR_LINE: #G0(Y) (0x10YD)

    #if G4 is used here will break piece_landed()
    MOV G1 0077
    MOV G2 FAFA

    #if(G0 != 0xFAFA) 
    BEQ G0 G2 CLEAR_LINE_CONT:

    #draw purple line
    SW G0 G1 6FF6
    SW G0 G1 6FF7
    SW G0 G1 6FF8
    SW G0 G1 6FF9
    SW G0 G1 6FFA
    SW G0 G1 6FFB
    SW G0 G1 6FFC
    SW G0 G1 6FFD
    SW G0 G1 6FFE
    SW G0 G1 6FFF

    #clear collision ram
    SW G0 ZERO FFF6
    SW G0 ZERO FFF7
    SW G0 ZERO FFF8
    SW G0 ZERO FFF9
    SW G0 ZERO FFFA
    SW G0 ZERO FFFB
    SW G0 ZERO FFFC
    SW G0 ZERO FFFD
    SW G0 ZERO FFFE
    SW G0 ZERO FFFF

    #fill line as black
    MOV G2 0001
    SW G0 G2 6FF6
    SW G0 G2 6FF7
    SW G0 G2 6FF8
    SW G0 G2 6FF9
    SW G0 G2 6FFA
    SW G0 G2 6FFB
    SW G0 G2 6FFC
    SW G0 G2 6FFD
    SW G0 G2 6FFE
    SW G0 G2 6FFF
    CLEAR_LINE_CONT:

    JR LR

#return G0 w/ 0 if no collsion, 1 if collision
COLLISION_CHECK: #G0(x) G1(y) G2(sprite_collision_ptr (sprite_addr + 0x0020)

    MOV G3 1000         #ram_ptr init to (0,0) (collsion)
    MULI G1 G1 0010     #shifting y pos left by 1 4bits
    ADD G3 G3 G0        #adding x and y(shifted) pos to vram addr
    ADD G3 G3 G1        #G3 = 0x10YX
    MOV G5 0001         #const int = 1 (black)
    MOV G6 0000         #int ii

    MOV G7 0008         #debug color

    LW G0 G2 0000       #num of collision points
    SUBI G0 G0 0001     #dec for for loop

    FOR_COLLISION_CHECK_START: #for(int ii = 0; ii < num_of_collision_points; ii++)
    BGT G6 G0 FOR_COLLISION_CHECK_END:

    ADDI G2 G2 0001     #inc sprite_collisoin_ptr
    LW G1 G2 0000       #pixel cord (sprite cord) to check colision
    ADD G1 G1 G3        #shifting g1 to collision cord
    LW G4 G1 0000       #collsion value (0 or FFFF) @ pixel
    #SW G1 G7 7000       #debug

    BEQ G4 ZERO COLLISION_CHECK_CONT: #if(vram_pixel != 0) {store lowest collsion; return 1;}
    MOV G0 0001         #ret 1
    SUB G1 G2 G6        #getting first collision point from sprite table (sprite_ptr - ii)
    LW G1 G1 0000       #load colision pnt to g1
    SW ZERO G1 020E     #store in ram
    JR LR
    COLLISION_CHECK_CONT:
    
    ADDI G6 G6 0001     #inc ii
    JMP FOR_COLLISION_CHECK_START:
    FOR_COLLISION_CHECK_END: #end_for

    MOV G0 0000         #return 0;
    JR LR

#does stuff :)
PIECE_LANDED: #no args

    #piece_landed = 0; & reset fallspeed
    MOV G0 0500
    SW ZERO ZERO 0210
    SW  ZERO G0 0212

    #loading current pos into last placement location (uses last_pos from memory due to the way collsion is checked)
    LW G0 ZERO 0202
    LW G1 ZERO 0203
    SW ZERO G0 020B
    SW ZERO G1 020C

    #write collision
    LW G2 ZERO 020D
    JAL WRITE_SPRITE: LR

    #debug, places pixel at store cord above
    # MOV G2 0002
    # JAL DRAW_PIXEL: LR

    #load lows collision, and extracting y_pos with mask
    LW G2 ZERO 020E
    MOV G0 00F0
    AND G0 G0 G2

    #G7 = 0x8003 + current_pos_y << 4 + lowest_collision_point(already bitshifted)
    MOV G7 8003
    LW G1 ZERO 020C
    MULI G1 G1 0010
    ADD G1 G1 G0
    ADD G7 G7 G1

    #offset ptr for lines to be cleared
    MOV G1 0000
    SW SP G1 0001
    ADDI SP SP 0001
    
    #4 for loop
    MOV G5 0000
    MOV G6 0030

    PIECE_LANDED_FOR_START: #for(int ii = 0; ii < 4; ii = ii + 10)
    BGT G5 G6 PIECE_LANDED_FOR_END:

    #check line number ii
    SUB G0 G7 G5
    JAL CHECK_LINE: LR

    #storing output of check_line()
    LW G1 SP 0000
    SW G1 G0 0206
    ADDI G1 G1 0001
    SW SP G1 0000

    #inc ii
    ADDI G5 G5 0010

    JMP PIECE_LANDED_FOR_START:
    PIECE_LANDED_FOR_END: #end_for

    #clearing "stack", its a big stack :)
    SUBI SP SP 0001

    #4 for loop
    MOV G5 0000
    MOV G6 0003

    PIECE_LANDED_FOR2_START: #for(int ii = 0; ii < 4; ii++)
    BGT G5 G6 PIECE_LANDED_FOR2_END:

    #passing array into clear_line()
    LW G0 G5 0206
    JAL CLEAR_LINE: LR

    #inc ii
    ADDI G5 G5 0001

    JMP PIECE_LANDED_FOR2_START:
    PIECE_LANDED_FOR2_END: #end_for

    #4 for loop
    MOV G5 0000
    MOV G6 0003

    PIECE_LANDED_FOR3_START: #for(int ii = 0; ii < 4; ii++)
    BGT G5 G6 PIECE_LANDED_FOR3_END:

    MOV G7 F000

    #passing array into clear_line()
    LW G0 G5 0206

    #pushing ii & 4 instack
    SW SP G5 0001
    ADDI SP SP 0001
    SW SP G6 0001
    ADDI SP SP 0001

    #if(G0 <= F000)
    #this is a scuffed way to doing shift but it works
    #shift looks at the "line2clear" array, if the array cotains
    #a "valid" line (anything <= 0xF000, the placeholder in the 
    #array for lines not to be cleared is 0xFAFA) all pixels are shifted
    #down starting at that line, after that all the lines in the array
    #are incremented by one line (0x0010)
    BGT G0 G7 PIECE_LANDED_CONT:

    JAL SHIFT_DOWN: LR

    #shifting next line in array down, see above
    LW G7 ZERO 0206
    ADDI G7 G7 0010
    SW ZERO G7 0206
    LW G7 ZERO 0207
    ADDI G7 G7 0010
    SW ZERO G7 0207
    LW G7 ZERO 0208
    ADDI G7 G7 0010
    SW ZERO G7 0208
    LW G7 ZERO 0209
    ADDI G7 G7 0010
    SW ZERO G7 0209

    PIECE_LANDED_CONT:

    #popping ii & 4 from stack
    LW G6 SP 0000
    SUBI SP SP 0001
    LW G5 SP 0000
    SUBI SP SP 0001

    #inc ii
    ADDI G5 G5 0001

    JMP PIECE_LANDED_FOR3_START:
    PIECE_LANDED_FOR3_END: #end_for

    #new piece :)
    JMP NEW_PIECE:

#shifts down all pixels
SHIFT_DOWN: #G0(line to shift at (0x80YD))
    
    MOV G1 0001
    SW ZERO G1 7FF3
    SW ZERO G1 7FF4
    SW ZERO G1 7FF5
    SW ZERO G1 7FF6
    SW ZERO G1 7FF7
    SW ZERO G1 7FF8
    SW ZERO G1 7FF9
    SW ZERO G1 7FFA
    SW ZERO G1 7FFB
    SW ZERO G1 7FFC


    MOV G1 0010
    MOV G2 1000
   
    SHIFT_DOWN_WHILE: #while G0(vram_ptr) > 0x8000

    #look up x lines, and load every other pixel into regs
    SUB G0 G0 G1
    LW G3 G0 FFFF
    LW G4 G0 FFFD
    LW G5 G0 FFFB
    LW G6 G0 FFF9
    LW G7 G0 FFF7

    #look at down x lines (now looking at original) and store into collision ram
    ADD G0 G0 G1
    SW G0 G3 FFFF
    SW G0 G4 FFFD
    SW G0 G5 FFFB
    SW G0 G6 FFF9
    SW G0 G7 FFF7
    

    #same with vram now
    SUB G0 G0 G1
    LW G3 G0 6FFF
    LW G4 G0 6FFD
    LW G5 G0 6FFB
    LW G6 G0 6FF9
    LW G7 G0 6FF7
    ADD G0 G0 G1
    SW G0 G3 6FFF
    SW G0 G4 6FFD
    SW G0 G5 6FFB
    SW G0 G6 6FF9
    SW G0 G7 6FF7


    #shift ram_ptr right one and repeate
    SUBI G0 G0 0001
    SUB G0 G0 G1
    LW G3 G0 FFFF
    LW G4 G0 FFFD
    LW G5 G0 FFFB
    LW G6 G0 FFF9
    LW G7 G0 FFF7
    ADD G0 G0 G1
    SW G0 G3 FFFF
    SW G0 G4 FFFD
    SW G0 G5 FFFB
    SW G0 G6 FFF9
    SW G0 G7 FFF7

    #same with vram now
    SUB G0 G0 G1
    LW G3 G0 6FFF
    LW G4 G0 6FFD
    LW G5 G0 6FFB
    LW G6 G0 6FF9
    LW G7 G0 6FF7
    ADD G0 G0 G1
    SW G0 G3 6FFF
    SW G0 G4 6FFD
    SW G0 G5 6FFB
    SW G0 G6 6FF9
    SW G0 G7 6FF7


    #shift vram_ptr back left & shift up x lines
    ADDI G0 G0 0001
    SUB G0 G0 G1

    BGT G0 G2 SHIFT_DOWN_WHILE: #end_while

    #ret
    JR LR

#resets x&y pos's then return to START:
NEW_PIECE:
    
    #temp regs
    MOV G0 0006
    MOV G1 0000
    MOV G7 FFFF

    #reseting pos
    SW ZERO G0 0200
    SW ZERO G7 0201
    SW ZERO G0 0202
    SW ZERO ZERO 0203
    SW ZERO G0 0204
    SW ZERO G1 0205

    #current_sprite + (3lsb of rng) * 0x0040
    LW G0 ZERO 0214
    LW G2 ZERO 020D
    MOV G1 0007
    AND G4 CLK G1
    MULI G4 G4 0040
    ADD G2 G2 G4

    #if(current_sprite >= 0x01C0) {current_sprite = current_sprite - 0x01C0}
    MOV G5 01C0
    BLT G2 G5 NEW_PIECE_CONT:

        SUB G2 G2 G5

    NEW_PIECE_CONT:

    #store current and last sprite in ram
    SW ZERO G2 020D
    SW ZERO G2 0211

    JMP WHILE_TRUE:

#start :)
START:

    #start of gameplay loop
    WHILE_TRUE:

    #at start of frame see if block is clipping
    LW G0 ZERO 0202
    LW G1 ZERO 0203
    LW G2 ZERO 020D
    ADDI G2 G2 0020
    JAL COLLISION_CHECK: LR
    SW ZERO G0 0210 #store result

    #if col == 1 revert current pos, jump to wait loop
    BEQ G0 ZERO COL_RET_ONE:
        LW G0 ZERO 0200
        LW G1 ZERO 0201
        SW ZERO G0 0202
        SW ZERO G1 0203
        
        JMP WAIT:
    COL_RET_ONE:


    #clear sprite from last fram
    LW G0 ZERO 0200
    LW G1 ZERO 0201
    LW G2 ZERO 0211
    JAL CLEAR_SPRITE: LR

    #draw sprite for this frame
    LW G0 ZERO 0202
    LW G1 ZERO 0203
    LW G2 ZERO 020D
    JAL DRAW_SPRITE: LR

    #0x0041 = 'a'
    #0x0044 = 'd'
    #0x0020 = 'SPACE'

    #wait and poll for inputs before moving piece down for G0 clock cycles
    MOV CLK 0000

    WAIT: #while time < loop through wait()

        #load current pos & store in last pos
        LW G0 ZERO 0202
        LW G1 ZERO 0203
        SW ZER0 G0 0200
        SW ZERO G1 0201


        #fast fall enable with 's', disable with w
        MOV G4 0073
        BNE KB G4 FAST_FALL:

            #inc rng
            LW G4 ZERO 0214
            ADDI G4 G4 0001
            SW ZERO G4 0214

            #clear KB reg & time = 0
            MOV G4 0000
            SW ZERO G4 0212
            MOV KB 0000

        FAST_FALL:
        MOV G4 0077
        BNE KB G4 STOP_FAST_FALL:

            #inc rng
            LW G4 ZERO 0214
            ADDI G4 G4 0001
            SW ZERO G4 0214


            #was_moved = 1; & clear KB reg
            MOV G4 0500
            SW ZERO G4 0212
            MOV KB 0000

        STOP_FAST_FALL:


        #move left
        MOV G4 0061
        BNE KB G4 LEFT:

            #inc rng
            LW G4 ZERO 0214
            ADDI G4 G4 0001
            SW ZERO G4 0214

            #was_moved = 1; & clear KB reg
            MOV G4 0001
            SW ZERO G4 020F
            MOV KB 0000

            #move piece
            SUBI G0 G0 0001

            #store current pos in stack
            SW SP G0 0001
            SW SP G1 0002
            ADDI SP SP 0002

            #colission check
            LW G2 ZERO 020D
            ADDI G2 G2 0020
            JAL COLLISION_CHECK: LR

            #move return to g2
            ADD G2 G0 ZERO

            #popping stack twice, and moving pos left by collision result
            #so if col == 0 dont move, if coll == 1 move left 1
            LW G1 SP 0000
            LW G0 SP FFFF
            SUBI SP SP 0002
            ADD G0 G0 G2

        LEFT:


        #move right
        MOV G4 0064
        BNE KB G4 RIGHT:

            #inc rng
            LW G4 ZERO 0214
            ADDI G4 G4 0001
            SW ZERO G4 0214

            #was_moved = 1; & clear KB reg
            MOV G4 0001
            SW ZERO G4 020F
            MOV KB 0000

            #move piece
            ADDI G0 G0 0001

            #store current pos in stack
            SW SP G0 0001
            SW SP G1 0002
            ADDI SP SP 0002

            #colission check
            LW G2 ZERO 020D
            ADDI G2 G2 0020
            JAL COLLISION_CHECK: LR

            #move return to g2
            ADD G2 G0 ZERO

            #popping stack twice, and moving pos left by collision result
            #so if col == 0 dont move, if coll == 1 move left 1
            LW G1 SP 0000
            LW G0 SP FFFF
            SUBI SP SP 0002
            SUB G0 G0 G2

        RIGHT:


        LW G7 ZERO 020D         #load sprite_ptr
        SW ZERO G7 0211         #store in last sprite

        #rotate piece clockwise
        MOV G4 0020
        BNE KB G4 ROTATE:

            #inc rng
            LW G4 ZERO 0214
            ADDI G4 G4 0001
            SW ZERO G4 0214

            #was_moved = 1; & clear KB reg
            MOV G4 0001
            SW ZERO G4 020F
            MOV KB 0000

            LW G7 ZERO 020D     #load sprite_ptr
            ADDI G7 G7 0005     #rotate by 90 CW
            MOV G4 003F         #mask for 6lsb
            AND G5 G7 G4        #using mask
            MOV G4 0014         #const in = 0x0014

            #if sprite_ptr is 0x0014 + ii*0x0040
            BNE G5 G4 RESET_ROTATE:

            #reset rotation
            SUBI G7 G7 0014     
            RESET_ROTATE:

            #overrite sprite_ptr
            SW ZERO G7 020D


            REPEAT_COLLISION_CHECK:

                #store current pos in stack
                SW SP G0 0001
                SW SP G1 0002
                ADDI SP SP 0002

                #colission check
                LW G2 ZERO 020D
                ADDI G2 G2 0020
                JAL COLLISION_CHECK: LR

                #move return to g2
                ADD G2 G0 ZERO

                #popping stack twice for x & y
                LW G1 SP 0000
                LW G0 SP FFFF
                SUBI SP SP 0002

                #if on left side of screen, move right by collision result
                #if on right move left by collision result
                #in both cases move up by collsion result <- THIS IS A FEATURE!!!
                #repeate until collision result equals zero
                MOV G3 0004
                BLT G0 G3 RESET_CONT:

                SUB G0 G0 G2

                JMP RESET_CONT_CONT:
                RESET_CONT:
        
                ADD G0 G0 G2

                RESET_CONT_CONT:

                SUB G1 G1 G2

            BNE G2 ZERO REPEAT_COLLISION_CHECK:

        ROTATE:


        MOV G4 0076
        BNE KB G4 SWAP_PIECE:

            #inc rng
            LW G4 ZERO 0214
            ADDI G4 G4 0001
            SW ZERO G4 0214

            #was_moved = 1; & clear KB reg
            MOV G4 0001
            SW ZERO G4 020F
            MOV KB 0000

            #swap current piece and stored piece
            LW G4 ZERO 0213
            LW G7 ZERO 020D
            SW ZERO G4 020D
            SW ZERO G7 0213

        SWAP_PIECE:

        #save current pos in ram
        SW ZERO G0 0202
        SW ZERO G1 0203

        #draw after moved moved (yes moved moved very diffrent from moved, very important, will be on the exam)
        LW G0 ZERO 020F
        BEQ G0 ZERO PIECE_MOVED:

            #was_moved = 0;
            MOV G0 0000
            SW ZERO G0 020F

            #clear sprite from last frame
            LW G0 ZERO 0200
            LW G1 ZERO 0201
            LW G2 ZERO 0211
            JAL CLEAR_SPRITE: LR

            #draw sprite for this frame
            LW G0 ZERO 0202
            LW G1 ZERO 0203
            LW G2 ZERO 020D
            JAL DRAW_SPRITE: LR

        PIECE_MOVED:

        LW G0 ZERO 0212
    BLT CLK G0 WAIT: #end_while

    #move down one pixel & store current and last pos

    #if(piece_landed == 1) {piece_landed();}
    LW G0 ZERO 0210
    BNE G0 ZERO PIECE_LANDED:

    LW G0 ZERO 0202
    LW G1 ZERO 0203
    SW ZERO G0 0200     #todo remove l8r
    SW ZERO G1 0201
    ADDI G1 G1 0001
    SW ZERO G0 0202
    SW ZERO G1 0203

    JMP WHILE_TRUE:


#end :)
END: