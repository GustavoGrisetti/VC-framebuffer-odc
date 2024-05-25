	.include "data.s"
	.include "figures.s"
	.include "utils.s"
	.globl main

main:
	// x0 contiene la direccion base del framebuffer
	mov x20, x0 // Guarda la dirección base del framebuffer en x20
	//---------------- color : x10 ----------------//
	bl makeBackground

	//-----------timer para evitar el loop infinito que sobrecarga la cpu----------//
timer:
	mov x5, 25471
loop_timer:
	sub x5, x5, 1
	cbnz x5, loop_timer
	b timer

	//------------------------------------InfLoop----------------------------------//
InfLoop:
	b InfLoop

	//-----------------------------------Funciones---------------------------------//
makeBackground:
    movz x10, VERDE_PARED1, lsl 16
    movk x10, VERDE_PARED2, lsl 00
    eor x1, x1, x1                  // X -> 0
    eor x2, x2, x2                  // Y -> 0
    eor x3, x3, x3                  // Ancho del Rectángulo -> 0
    eor x4, x4, x4                  // Alto del Rectángulo -> 0
    add x3, x3, SCREEN_WIDTH                // Largo del Rectángulo -> ... (!)
    add x4, x4, SCREEN_HEIGH
    bl drawRectangle 
	//PARTE PARED    
    movz x10, SOMBRA_PARED1, lsl 16
    movk x10, SOMBRA_PARED2, lsl 00
    mov x1, 0                
    mov x2, 110
    mov x3, SCREEN_WIDTH                    // Largo del Rectángulo -> ... (!)
    mov x4, 5                                // ancho linea
    bl drawRectangle 
	movz x10, BRILLO_PARED1, lsl 16
    movk x10, BRILLO_PARED2, lsl 00
    mov x1, 0                
    mov x2, 91
    mov x3, SCREEN_WIDTH                    // Largo del Rectángulo -> ... (!)
    mov x4, 5                                // ancho linea
    bl drawRectangle 
    mov x1, 40                
    mov x2, 94
    mov x3, 16                    // Largo del Rectángulo -> ... (!)
    mov x4, 6                                // ancho linea
    bl drawRectangle 
    mov x1, 140                
    mov x2, 94
    mov x3, 16                    // Largo del Rectángulo -> ... (!)
    mov x4, 6                                // ancho linea
    bl drawRectangle    
    mov x1, 180                
    mov x2, 94
    mov x3, 9                    // Largo del Rectángulo -> ... (!)
    mov x4, 6                                // ancho linea
    bl drawRectangle    
    movz x10, VERDE_PARED1, lsl 16
    movk x10, VERDE_PARED2, lsl 00
    mov x1, 15                
    mov x2, 91
    mov x3, 9                    // Largo del Rectángulo -> ... (!)
    mov x4, 5                                // ancho linea
    bl drawRectangle
    mov x1, 75                
    mov x2, 91
    mov x3, 9                    // Largo del Rectángulo -> ... (!)
    mov x4, 5                                // ancho linea
    bl drawRectangle
    mov x1, 95                
    mov x2, 91
    mov x3, 4                    // Largo del Rectángulo -> ... (!)
    mov x4, 5                                // ancho linea
    bl drawRectangle
    mov x1, 98                
    mov x2, 91
    mov x3, 4                    // Largo del Rectángulo -> ... (!)
    mov x4, 5                                // ancho linea
    bl drawRectangle
    mov x1, 220                
    mov x2, 91
    mov x3, 3                    // Largo del Rectángulo -> ... (!)
    mov x4, 5                                // ancho linea
    bl drawRectangle
    mov x1, 225                
    mov x2, 91
    mov x3, 3                    // Largo del Rectángulo -> ... (!)
    mov x4, 5                                // ancho linea
    bl drawRectangle
    movz x10, BRILLO_PARED1, lsl 16
    movk x10, BRILLO_PARED2, lsl 00
    mov x1, 35                
    mov x2, 22
    mov x3, 5                   // Largo del Rectángulo -> ... (!)
    mov x4, 5                                // ancho linea
    bl drawRectangle
    mov x1, 40                
    mov x2, 27
    mov x3, 5                   // Largo del Rectángulo -> ... (!)
    mov x4, 5                                // ancho linea
    bl drawRectangle
    mov x1, 45                
    mov x2, 32
    mov x3, 5                   // Largo del Rectángulo -> ... (!)
    mov x4, 5                                // ancho linea
    bl drawRectangle
    mov x1, 55                
    mov x2, 42
    mov x3, 5                   // Largo del Rectángulo -> ... (!)
    mov x4, 5                                // ancho linea
    bl drawRectangle
    movz x10, SOMBRA_PARED1, lsl 16
    movk x10, SOMBRA_PARED2, lsl 00
    mov x1, 35                
    mov x2, 17
    mov x3, 5                   // Largo del Rectángulo -> ... (!)
    mov x4, 5                                // ancho linea
    bl drawRectangle
    mov x1, 40                
    mov x2, 22
    mov x3, 5                   // Largo del Rectángulo -> ... (!)
    mov x4, 5                                // ancho linea
    bl drawRectangle
    mov x1, 45                
    mov x2, 27
    mov x3, 5                   // Largo del Rectángulo -> ... (!)
    mov x4, 5                                // ancho linea
    bl drawRectangle
    mov x1, 55                
    mov x2, 37
    mov x3, 5                   // Largo del Rectángulo -> ... (!)
    mov x4, 5                                // ancho linea
    bl drawRectangle
    movz x10, BRILLO_PARED1, lsl 16
    movk x10, BRILLO_PARED2, lsl 00
    mov x1, 25                
    mov x2, 75
    mov x3, 10                   // Largo del Rectángulo -> ... (!)
    mov x4, 5
    bl drawRectangle 
    movz x10, SOMBRA_PARED1, lsl 16
    movk x10, SOMBRA_PARED2, lsl 00
    mov x1, 25                
    mov x2, 70
    mov x3, 10                   // Largo del Rectángulo -> ... (!)
    mov x4, 5
    bl drawRectangle 
    movz x10, BRILLO_PARED1, lsl 16
    movk x10, BRILLO_PARED2, lsl 00
    mov x1, 115                
    mov x2, 55
    mov x3, 5                   // Largo del Rectángulo -> ... (!)
    mov x4, 5
    bl drawRectangle 
    mov x1, 120                
    mov x2, 50
    mov x3, 5                   // Largo del Rectángulo -> ... (!)
    mov x4, 5
    bl drawRectangle 
    movz x10, SOMBRA_PARED1, lsl 16
    movk x10, SOMBRA_PARED2, lsl 00
    mov x1, 115                
    mov x2, 50
    mov x3, 5                   // Largo del Rectángulo -> ... (!)
    mov x4, 5
    bl drawRectangle 
    mov x1, 120                
    mov x2, 45
    mov x3, 5                   // Largo del Rectángulo -> ... (!)
    mov x4, 5
    bl drawRectangle 
	movz x10, SOMBRA_PARED1, lsl 16
    movk x10, SOMBRA_PARED2, lsl 00
    mov x1, 423                
    mov x2, 0
    mov x3, 217                    // Largo del Rectángulo -> ... (!)
    mov x4, SCREEN_HEIGH
    bl drawRectangle 
    //TABLERO POR FUERA
	movz x10, NEGRO_BORDES1, lsl 16
    movk x10, NEGRO_BORDES2, lsl 00
    mov x1, 451                
    mov x2, 65
    mov x3, 189                  // Largo del Rectángulo -> ... (!)
    mov x4, 5 
    bl drawRectangle
    mov x1, 447                
    mov x2, 69
    mov x3, 193                  // Largo del Rectángulo -> ... (!)
    mov x4, 141 
    bl drawRectangle
	movz x10, SOMBRA_PARED1, lsl 16
    movk x10, SOMBRA_PARED2, lsl 00
    mov x1, 451                
    mov x2, 69
    mov x3, 189                  // Largo del Rectángulo -> ... (!)
    mov x4, 137 
    bl drawRectangle
    movz x10, VERDE_PARED1, lsl 16
    movk x10, VERDE_PARED2, lsl 00
    mov x1, 451                
    mov x2, 69
    mov x3, 189                  // Largo del Rectángulo -> ... (!)
    mov x4, 4 
    bl drawRectangle
    //TABLERO INTERNO
	movz x10, NEGRO_BORDES1, lsl 16
    movk x10, NEGRO_BORDES2, lsl 00
    mov x1, 460                
    mov x2, 78
    mov x3, 71                  // Largo del Rectángulo -> ... (!)
    mov x4, 4
    bl drawRectangle
    mov x1, 456                
    mov x2, 82
    mov x3, 75                  // Largo del Rectángulo -> ... (!)
    mov x4, 120
    bl drawRectangle
	movz x10, VERDE_PARED1, lsl 16
    movk x10, VERDE_PARED2, lsl 00
    mov x1, 460                
    mov x2, 82
    mov x3, 75                  // Largo del Rectángulo -> ... (!)
    mov x4, 122 
    bl drawRectangle
    movz x10, SOMBRA_PARED1, lsl 16
    movk x10, SOMBRA_PARED2, lsl 00
    mov x1, 460                
    mov x2, 82
    mov x3, 71                  // Largo del Rectángulo -> ... (!)
    mov x4, 119 
    bl drawRectangle
	//PANTALLITAS
	movz x10, NEGRO_BORDES1, lsl 16
    movk x10, NEGRO_BORDES2, lsl 00
    mov x1, 464                
    mov x2, 86
    mov x3, 66                  // Largo del Rectángulo -> ... (!)
    mov x4, 49 
    bl drawRectangle
    movz x10, VERDE_OSC1, lsl 16
    movk x10, VERDE_OSC2, lsl 00
    mov x1, 468                
    mov x2, 126
    mov x3, 5                  // Largo del Rectángulo -> ... (!)
    mov x4, 5 
    bl drawRectangle
    mov x1, 468                
    mov x2, 119
    mov x3, 5                  // Largo del Rectángulo -> ... (!)
    mov x4, 5 
    bl drawRectangle
    mov x1, 475                
    mov x2, 126
    mov x3, 5                  // Largo del Rectángulo -> ... (!)
    mov x4, 5 
    bl drawRectangle
    mov x1, 475                
    mov x2, 112
    mov x3, 5                  // Largo del Rectángulo -> ... (!)
    mov x4, 5 
    bl drawRectangle
    mov x1, 482                
    mov x2, 112
    mov x3, 5                  // Largo del Rectángulo -> ... (!)
    mov x4, 5 
    bl drawRectangle
    mov x1, 489                
    mov x2, 112
    mov x3, 5                  // Largo del Rectángulo -> ... (!)
    mov x4, 5 
    bl drawRectangle
    mov x1, 496                
    mov x2, 112
    mov x3, 5                  // Largo del Rectángulo -> ... (!)
    mov x4, 5 
    bl drawRectangle
    mov x1, 503                
    mov x2, 112
    mov x3, 5                  // Largo del Rectángulo -> ... (!)
    mov x4, 5 
    bl drawRectangle
    mov x1, 510                
    mov x2, 112
    mov x3, 5                  // Largo del Rectángulo -> ... (!)
    mov x4, 5 
    bl drawRectangle
    mov x1, 517                
    mov x2, 119
    mov x3, 5                  // Largo del Rectángulo -> ... (!)
    mov x4, 5 
    bl drawRectangle
    mov x1, 517                
    mov x2, 126
    mov x3, 5                  // Largo del Rectángulo -> ... (!)
    mov x4, 5 
    bl drawRectangle
    mov x1, 510                
    mov x2, 126
    mov x3, 5                  // Largo del Rectángulo -> ... (!)
    mov x4, 5 
    bl drawRectangle
    mov x1, 489                
    mov x2, 105
    mov x3, 5                  // Largo del Rectángulo -> ... (!)
    mov x4, 5 
    bl drawRectangle
    mov x1, 496                
    mov x2, 105
    mov x3, 5                  // Largo del Rectángulo -> ... (!)
    mov x4, 5 
    bl drawRectangle
    mov x1, 489                
    mov x2, 98
    mov x3, 5                  // Largo del Rectángulo -> ... (!)
    mov x4, 5 
    bl drawRectangle
    mov x1, 496                
    mov x2, 98
    mov x3, 5                  // Largo del Rectángulo -> ... (!)
    mov x4, 5 
    bl drawRectangle
    movz x10, NEGRO_BORDES1, lsl 16
    movk x10, NEGRO_BORDES2, lsl 00
    // Segunda Pantalla
    mov x1, 464                
    mov x2, 139
    mov x3, 66                  // Largo del Rectángulo -> ... (!)
    mov x4, 52 
    bl drawRectangle
    // -------- Kirby en pantalla --------- //
    movz x10, ROSA_OSC1, lsl 16
    movk x10, ROSA_OSC2, lsl 00
    mov x1, 480                
    mov x2, 142
    mov x3, 6                 // Largo del Rectángulo -> ... (!)
    mov x4, 2 
    bl drawRectangle
    mov x1, 478                
    mov x2, 144
    mov x3, 10                 // Largo del Rectángulo -> ... (!)
    mov x4, 2 
    bl drawRectangle
    mov x1, 476                
    mov x2, 146
    mov x3, 20                 // Largo del Rectángulo -> ... (!)
    mov x4, 2 
    bl drawRectangle
    mov x1, 476                
    mov x2, 148
    mov x3, 24                // Largo del Rectángulo -> ... (!)
    mov x4, 2 
    bl drawRectangle
    mov x1, 476                
    mov x2, 150
    mov x3, 26                // Largo del Rectángulo -> ... (!)
    mov x4, 2 
    bl drawRectangle
    mov x1, 476                
    mov x2, 152
    mov x3, 28                // Largo del Rectángulo -> ... (!)
    mov x4, 2 
    bl drawRectangle
    mov x1, 474                
    mov x2, 154
    mov x3, 32                // Largo del Rectángulo -> ... (!)
    mov x4, 2 
    bl drawRectangle
    mov x1, 474                
    mov x2, 156
    mov x3, 34               // Largo del Rectángulo -> ... (!)
    mov x4, 2 
    bl drawRectangle
    mov x1, 474                
    mov x2, 158
    mov x3, 36               // Largo del Rectángulo -> ... (!)
    mov x4, 2 
    bl drawRectangle
    mov x1, 474                
    mov x2, 160
    mov x3, 38               // Largo del Rectángulo -> ... (!)
    mov x4, 8 
    bl drawRectangle
    mov x1, 476                
    mov x2, 168
    mov x3, 34               // Largo del Rectángulo -> ... (!)
    mov x4, 4 
    bl drawRectangle
    mov x1, 478                
    mov x2, 172
    mov x3, 32               // Largo del Rectángulo -> ... (!)
    mov x4, 4 
    bl drawRectangle
    mov x1, 478                
    mov x2, 176
    mov x3, 30              // Largo del Rectángulo -> ... (!)
    mov x4, 2 
    bl drawRectangle
    mov x1, 478                
    mov x2, 178
    mov x3, 26              // Largo del Rectángulo -> ... (!)
    mov x4, 2 
    bl drawRectangle
    mov x1, 478                
    mov x2, 180
    mov x3, 12              // Largo del Rectángulo -> ... (!)
    mov x4, 4 
    bl drawRectangle
    mov x1, 480                
    mov x2, 184
    mov x3, 8              // Largo del Rectángulo -> ... (!)
    mov x4, 2 
    bl drawRectangle
    movz x10, 0xFF, lsl 16
    movk x10, 0x0000, lsl 00
    mov x1, 498                
    mov x2, 170
    mov x3, 10                 // Largo del Rectángulo -> ... (!)
    mov x4, 8 
    bl drawRectangle
    movz x10, 0x00, lsl 16
    movk x10, 0x0000, lsl 00
    mov x1, 484                
    mov x2, 154
    mov x3, 3                 // Largo del Rectángulo -> ... (!)
    mov x4, 10 
    bl drawRectangle
    mov x1, 491                
    mov x2, 154
    mov x3, 3                 // Largo del Rectángulo -> ... (!)
    mov x4, 10 
    bl drawRectangle
    mov x1, 487                
    mov x2, 168
    mov x3, 6                 // Largo del Rectángulo -> ... (!)
    mov x4, 3 
    bl drawRectangle
    mov x1, 500                
    mov x2, 166
    mov x3, 10                 // Largo del Rectángulo -> ... (!)
    mov x4, 3 
    bl drawRectangle
    mov x1, 498                
    mov x2, 169
    mov x3, 3                 // Largo del Rectángulo -> ... (!)
    mov x4, 3 
    bl drawRectangle
    mov x1, 495                
    mov x2, 172
    mov x3, 3                 // Largo del Rectángulo -> ... (!)
    mov x4, 8 
    bl drawRectangle
    mov x1, 478                
    mov x2, 172
    mov x3, 3                 // Largo del Rectángulo -> ... (!)
    mov x4, 3 
    bl drawRectangle    
    mov x1, 481                
    mov x2, 175
    mov x3, 3                 // Largo del Rectángulo -> ... (!)
    mov x4, 3 
    bl drawRectangle    
    mov x1, 484                
    mov x2, 178
    mov x3, 3                 // Largo del Rectángulo -> ... (!)
    mov x4, 3 
    bl drawRectangle    
    mov x1, 487                
    mov x2, 181
    mov x3, 8                 // Largo del Rectángulo -> ... (!)
    mov x4, 3 
    bl drawRectangle    
    movz x10, VERDE_PARED1, lsl 16
    movk x10, VERDE_PARED2, lsl 00
    mov x1, 464                
    mov x2, 191
    mov x3, 67                  // Largo del Rectángulo -> ... (!)
    mov x4, 3
    bl drawRectangle
    // BOTONCITOS MONITOR
    movz x10, BRILLO_PARED1, lsl 16
    movk x10, BRILLO_PARED2, lsl 0
    mov x1, 544                
    mov x2, 69
    mov x3, 45                  // Largo del Rectángulo -> ... (!)
    mov x4, 3 
    bl drawRectangle
    movz x10, NEGRO_BORDES1, lsl 16
    movk x10, NEGRO_BORDES2, lsl 00
    mov x1, 540                
    mov x2, 73
    mov x3, 100                  // Largo del Rectángulo -> ... (!)
    mov x4, 135 
    bl drawRectangle
    movz x10, SOMBRA_PARED1, lsl 16
    movk x10, SOMBRA_PARED2, lsl 00
    mov x1, 544                
    mov x2, 73
    mov x3, 45                  // Largo del Rectángulo -> ... (!)
    mov x4, 60 
    bl drawRectangle
    mov x1, 544                
    mov x2, 138
    mov x3, 45                  // Largo del Rectángulo -> ... (!)
    mov x4, 68 
    bl drawRectangle
    movz x10, VERDE_OSC1, lsl 16
    movk x10, VERDE_OSC2, lsl 00
    mov x1, 547                
    mov x2, 78
    mov x3, 39                  // Largo del Rectángulo -> ... (!)
    mov x4, 20 
    bl drawRectangle
    movz x10, VERDE_FUERTE1, lsl 16
    movk x10, VERDE_FUERTE2, lsl 00
    mov x1, 550                
    mov x2, 81
    mov x3, 36                  // Largo del Rectángulo -> ... (!)
    mov x4, 20 
    bl drawRectangle
    movz x10, VERDE_OSC1, lsl 16
    movk x10, VERDE_OSC2, lsl 00
    mov x1, 556                
    mov x2, 84
    mov x3, 4                  // Largo del Rectángulo -> ... (!)
    mov x4, 8 
    bl drawRectangle
    mov x1, 562                
    mov x2, 84
    mov x3, 4                  // Largo del Rectángulo -> ... (!)
    mov x4, 8 
    bl drawRectangle
    mov x1, 568                
    mov x2, 84
    mov x3, 4                  // Largo del Rectángulo -> ... (!)
    mov x4, 8 
    bl drawRectangle
    mov x1, 574                
    mov x2, 84
    mov x3, 4                  // Largo del Rectángulo -> ... (!)
    mov x4, 8 
    bl drawRectangle
    mov x1, 556                
    mov x2, 94
    mov x3, 22                  // Largo del Rectángulo -> ... (!)
    mov x4, 3 
    bl drawRectangle
    movz x10, AZUL1, lsl 16
    movk x10, AZUL2, lsl 00
    mov x1, 564                
    mov x2, 108
    mov x3, 14                 // Largo del Rectángulo -> ... (!)
    mov x4, 18 
    bl drawRectangle
    mov x1, 561                
    mov x2, 111
    mov x3, 20                 // Largo del Rectángulo -> ... (!)
    mov x4, 12 
    bl drawRectangle
    movz x10, CELESTE1, lsl 16
    movk x10, CELESTE2, lsl 00
    mov x1, 556                
    mov x2, 108
    mov x3, 14                 // Largo del Rectángulo -> ... (!)
    mov x4, 18 
    bl drawRectangle
    mov x1, 553                
    mov x2, 111
    mov x3, 20                 // Largo del Rectángulo -> ... (!)
    mov x4, 12 
    bl drawRectangle
    // Cable
    movz x10, AZUL_GORRO1, lsl 16
    movk x10, AZUL_GORRO2, lsl 00
    mov x1, 423                
    mov x2, 19
    mov x3, 257                // Largo del Rectángulo -> ... (!)
    mov x4, 3 
    bl drawRectangle
    movz x10, NEGRO_BORDES1, lsl 16
    movk x10, NEGRO_BORDES2, lsl 00
    mov x1, 423                
    mov x2, 22
    mov x3, 257                // Largo del Rectángulo -> ... (!)
    mov x4, 3 
    bl drawRectangle
    movz x10, SOMBRA_PARED1, lsl 16
    movk x10, SOMBRA_PARED2, lsl 00
    mov x1, 413                
    mov x2, 19
    mov x3, 10                // Largo del Rectángulo -> ... (!)
    mov x4, 3 
    bl drawRectangle
    mov x1, 410                
    mov x2, 22
    mov x3, 3                // Largo del Rectángulo -> ... (!)
    mov x4, 3 
    bl drawRectangle
    mov x1, 407                
    mov x2, 25
    mov x3, 3                // Largo del Rectángulo -> ... (!)
    mov x4, 6 
    bl drawRectangle
    mov x1, 404                
    mov x2, 31
    mov x3, 3                // Largo del Rectángulo -> ... (!)
    mov x4, 12 
    bl drawRectangle
    movz x10, BLANCO_HOJA1, lsl 16
    movk x10, BLANCO_HOJA2, lsl 00
    mov x1, 413                
    mov x2, 22
    mov x3, 10                // Largo del Rectángulo -> ... (!)
    mov x4, 3 
    bl drawRectangle
    mov x1, 410                
    mov x2, 25
    mov x3, 3                // Largo del Rectángulo -> ... (!)
    mov x4, 6 
    bl drawRectangle
    mov x1, 407                
    mov x2, 31
    mov x3, 3                // Largo del Rectángulo -> ... (!)
    mov x4, 12 
    bl drawRectangle
    movz x10, SOMBRA1, lsl 16
    movk x10, SOMBRA2, lsl 00
    mov x1, 397                
    mov x2, 45
    mov x3, 13                // Largo del Rectángulo -> ... (!)
    mov x4, 10 
    bl drawRectangle
    movz x10, NEGRO_BORDES1, lsl 16
    movk x10, NEGRO_BORDES2, lsl 00
    mov x1, 400                
    mov x2, 43
    mov x3, 13                // Largo del Rectángulo -> ... (!)
    mov x4, 10 
    bl drawRectangle
    
	//ESTANTERIA
	movz x10, NEGRO_BORDES1, lsl 16
    movk x10, NEGRO_BORDES2, lsl 00
    mov x1, 346               
    mov x2, 314
    mov x3, 294                  // Largo del Rectángulo -> ... (!)
    mov x4, 166 
    bl drawRectangle
    movz x10, SOMBRA_PARED1, lsl 16
    movk x10, SOMBRA_PARED2, lsl 00
    mov x1, 349                
    mov x2, 317
    mov x3, 291                  // Largo del Rectángulo -> ... (!)
    mov x4, 163
    bl drawRectangle
	movz x10, NEGRO_BORDES1, lsl 16
    movk x10, NEGRO_BORDES2, lsl 00
    mov x1, 354               
    mov x2, 324
    mov x3, 286                  // Largo del Rectángulo -> ... (!)
    mov x4, 156 
    bl drawRectangle
    movz x10, SOMBRA_PARED1, lsl 16
    movk x10, SOMBRA_PARED2, lsl 00
    mov x1, 354                
    mov x2, 397
    mov x3, 286                  // Largo del Rectángulo -> ... (!)
    mov x4, 6
    bl drawRectangle
	movz x10, NEGRO_BORDES1, lsl 16
    movk x10, NEGRO_BORDES2, lsl 00
    mov x1, 354               
    mov x2, 404
    mov x3, 286                  // Largo del Rectángulo -> ... (!)
    mov x4, 76 
    bl drawRectangle
	//PAPELITOS
    // 1
    movz x10, NEGRO_BORDES1, lsl 16
    movk x10, NEGRO_BORDES2, lsl 00
    mov x1, 146               
    mov x2, 12
    mov x3, 39                  // Largo del Rectángulo -> ... (!)
    mov x4, 50
    bl drawRectangle
    movz x10, BLANCO_HOJA1, lsl 16
    movk x10, BLANCO_HOJA2, lsl 00
    mov x1, 149               
    mov x2, 8
    mov x3, 39                  // Largo del Rectángulo -> ... (!)
    mov x4, 50
    bl drawRectangle
    movz x10, NEGRO_BORDES1, lsl 16
    movk x10, NEGRO_BORDES2, lsl 00
    mov x1, 152               
    mov x2, 5
    mov x3, 4                  // Largo del Rectángulo -> ... (!)
    mov x4, 7
    bl drawRectangle
    add x1, x1, 6                
    mov x2, 5
    mov x3, 4                  // Largo del Rectángulo -> ... (!)
    mov x4, 7
    bl drawRectangle
    add x1, x1, 6                
    mov x2, 5
    mov x3, 4                  // Largo del Rectángulo -> ... (!)
    mov x4, 7
    bl drawRectangle
    add x1, x1, 6                
    mov x2, 5
    mov x3, 4                  // Largo del Rectángulo -> ... (!)
    mov x4, 7
    bl drawRectangle
    add x1, x1, 6                
    mov x2, 5
    mov x3, 4                  // Largo del Rectángulo -> ... (!)
    mov x4, 7
    bl drawRectangle
    add x1, x1, 6                
    mov x2, 5
    mov x3, 4                  // Largo del Rectángulo -> ... (!)
    mov x4, 7
    bl drawRectangle
    // texto
    movz x10, AZUL_GORRO1, lsl 16
    movk x10, AZUL_GORRO2, lsl 00
    mov x1, 152               
    mov x2, 17
    mov x3, 3                  // Largo del Rectángulo -> ... (!)
    mov x4, 3
    bl drawRectangle
    mov x1, 155               
    mov x2, 14
    mov x3, 3                  // Largo del Rectángulo -> ... (!)
    mov x4, 15
    bl drawRectangle
    mov x1, 161                
    mov x2, 26
    mov x3, 3                  // Largo del Rectángulo -> ... (!)
    mov x4, 3
    bl drawRectangle
    mov x1, 167                
    mov x2, 26
    mov x3, 12                  // Largo del Rectángulo -> ... (!)
    mov x4, 3
    bl drawRectangle
    mov x1, 167                
    mov x2, 23
    mov x3, 3                  // Largo del Rectángulo -> ... (!)
    mov x4, 3
    bl drawRectangle
    mov x1, 170                
    mov x2, 20
    mov x3, 6                  // Largo del Rectángulo -> ... (!)
    mov x4, 3
    bl drawRectangle
    mov x1, 176                
    mov x2, 17
    mov x3, 3                  // Largo del Rectángulo -> ... (!)
    mov x4, 3
    bl drawRectangle
    mov x1, 167                
    mov x2, 14
    mov x3, 9                  // Largo del Rectángulo -> ... (!)
    mov x4, 3
    bl drawRectangle
    mov x1, 152               
    mov x2, 38
    mov x3, 3                  // Largo del Rectángulo -> ... (!)
    mov x4, 3
    bl drawRectangle
    mov x1, 155               
    mov x2, 35
    mov x3, 6                  // Largo del Rectángulo -> ... (!)
    mov x4, 3
    bl drawRectangle
    mov x1, 161               
    mov x2, 38
    mov x3, 3                  // Largo del Rectángulo -> ... (!)
    mov x4, 3
    bl drawRectangle
    mov x1, 158               
    mov x2, 41
    mov x3, 3                  // Largo del Rectángulo -> ... (!)
    mov x4, 3
    bl drawRectangle
    mov x1, 161               
    mov x2, 44
    mov x3, 3                  // Largo del Rectángulo -> ... (!)
    mov x4, 3
    bl drawRectangle
    mov x1, 155               
    mov x2, 47
    mov x3, 6                  // Largo del Rectángulo -> ... (!)
    mov x4, 3
    bl drawRectangle
    mov x1, 152               
    mov x2, 44
    mov x3, 3                  // Largo del Rectángulo -> ... (!)
    mov x4, 3
    bl drawRectangle
    mov x1, 167               
    mov x2, 47
    mov x3, 3                  // Largo del Rectángulo -> ... (!)
    mov x4, 3
    bl drawRectangle
    mov x1, 173               
    mov x2, 35
    mov x3, 12                  // Largo del Rectángulo -> ... (!)
    mov x4, 3
    bl drawRectangle
    mov x1, 176               
    mov x2, 41
    mov x3, 6                 // Largo del Rectángulo -> ... (!)
    mov x4, 3
    bl drawRectangle
    mov x1, 182               
    mov x2, 44
    mov x3, 3                 // Largo del Rectángulo -> ... (!)
    mov x4, 3
    bl drawRectangle
    mov x1, 173               
    mov x2, 47
    mov x3, 9                 // Largo del Rectángulo -> ... (!)
    mov x4, 3
    bl drawRectangle
    mov x1, 173               
    mov x2, 38
    mov x3, 3                 // Largo del Rectángulo -> ... (!)
    mov x4, 3
    bl drawRectangle
    // 2
    movz x10, NEGRO_BORDES1, lsl 16
    movk x10, NEGRO_BORDES2, lsl 00
    mov x1, 200               
    mov x2, 18
    mov x3, 39                  // Largo del Rectángulo -> ... (!)
    mov x4, 50
    bl drawRectangle
    movz x10, BLANCO_HOJA1, lsl 16
    movk x10, BLANCO_HOJA2, lsl 00
    mov x1, 203               
    mov x2, 15
    mov x3, 39                  // Largo del Rectángulo -> ... (!)
    mov x4, 50
    bl drawRectangle
    movz x10, NEGRO_BORDES1, lsl 16
    movk x10, NEGRO_BORDES2, lsl 00
    mov x1, 206               
    mov x2, 11
    mov x3, 4                  // Largo del Rectángulo -> ... (!)
    mov x4, 7
    bl drawRectangle
    add x1, x1, 6                
    mov x2, 11
    mov x3, 4                  // Largo del Rectángulo -> ... (!)
    mov x4, 7
    bl drawRectangle
    add x1, x1, 6                
    mov x2, 11
    mov x3, 4                  // Largo del Rectángulo -> ... (!)
    mov x4, 7
    bl drawRectangle
    add x1, x1, 6                
    mov x2, 11
    mov x3, 4                  // Largo del Rectángulo -> ... (!)
    mov x4, 7
    bl drawRectangle
    add x1, x1, 6                
    mov x2, 11
    mov x3, 4                  // Largo del Rectángulo -> ... (!)
    mov x4, 7
    bl drawRectangle
    add x1, x1, 6                
    mov x2, 11
    mov x3, 4                  // Largo del Rectángulo -> ... (!)
    mov x4, 7
    bl drawRectangle
    // texto
    movz x10, AZUL_GORRO1, lsl 16
    movk x10, AZUL_GORRO2, lsl 00
    mov x1, 206               
    mov x2, 27
    mov x3, 3                  // Largo del Rectángulo -> ... (!)
    mov x4, 9
    bl drawRectangle
    mov x1, 209               
    mov x2, 24
    mov x3, 3                  // Largo del Rectángulo -> ... (!)
    mov x4, 9
    bl drawRectangle
    mov x1, 209               
    mov x2, 24
    mov x3, 12                  // Largo del Rectángulo -> ... (!)
    mov x4, 6
    bl drawRectangle
    mov x1, 218               
    mov x2, 27
    mov x3, 6                  // Largo del Rectángulo -> ... (!)
    mov x4, 9
    bl drawRectangle
    mov x1, 221               
    mov x2, 30
    mov x3, 6                  // Largo del Rectángulo -> ... (!)
    mov x4, 9
    bl drawRectangle
    mov x1, 217               
    mov x2, 39
    mov x3, 12                  // Largo del Rectángulo -> ... (!)
    mov x4, 9
    bl drawRectangle
    mov x1, 214               
    mov x2, 42
    mov x3, 3                  // Largo del Rectángulo -> ... (!)
    mov x4, 6
    bl drawRectangle
    mov x1, 211               
    mov x2, 45
    mov x3, 6                  // Largo del Rectángulo -> ... (!)
    mov x4, 6
    bl drawRectangle
    mov x1, 208               
    mov x2, 48
    mov x3, 6                  // Largo del Rectángulo -> ... (!)
    mov x4, 6
    bl drawRectangle
    mov x1, 205               
    mov x2, 51
    mov x3, 6                  // Largo del Rectángulo -> ... (!)
    mov x4, 6
    bl drawRectangle
    mov x1, 225               
    mov x2, 45
    mov x3, 6                  // Largo del Rectángulo -> ... (!)
    mov x4, 9
    bl drawRectangle
    mov x1, 228               
    mov x2, 48
    mov x3, 3                  // Largo del Rectángulo -> ... (!)
    mov x4, 9
    bl drawRectangle
    mov x1, 231               
    mov x2, 51
    mov x3, 6                  // Largo del Rectángulo -> ... (!)
    mov x4, 6
    bl drawRectangle
    // 3
    movz x10, NEGRO_BORDES1, lsl 16
    movk x10, NEGRO_BORDES2, lsl 00
    mov x1, 253              
    mov x2, 45
    mov x3, 48                  // Largo del Rectángulo -> ... (!)
    mov x4, 40
    bl drawRectangle
	movz x10, NEGRO_BORDES1, lsl 16
    movk x10, NEGRO_BORDES2, lsl 00
    mov x1, 255              
    mov x2, 85
    mov x3, 48                  // Largo del Rectángulo -> ... (!)
    mov x4, 19
    bl drawRectangle
    mov x1, 258              
    mov x2, 104
    mov x3, 45                  // Largo del Rectángulo -> ... (!)
    mov x4, 3
    bl drawRectangle
    mov x1, 261              
    mov x2, 107
    mov x3, 42                  // Largo del Rectángulo -> ... (!)
    mov x4, 3
    bl drawRectangle
	movz x10, BLANCO_HOJA1, lsl 16
    movk x10, BLANCO_HOJA2, lsl 00
    mov x1, 256              
    mov x2, 42
    mov x3, 48                  // Largo del Rectángulo -> ... (!)
    mov x4, 40
    bl drawRectangle
	movz x10, BLANCO_HOJA1, lsl 16
    movk x10, BLANCO_HOJA2, lsl 00
    mov x1, 258              
    mov x2, 82
    mov x3, 48                  // Largo del Rectángulo -> ... (!)
    mov x4, 19
    bl drawRectangle
    movz x10, BLANCO_HOJA1, lsl 16
    movk x10, BLANCO_HOJA2, lsl 00
    mov x1, 261              
    mov x2, 101
    mov x3, 45                  // Largo del Rectángulo -> ... (!)
    mov x4, 3
    bl drawRectangle
    movz x10, BLANCO_HOJA1, lsl 16
    movk x10, BLANCO_HOJA2, lsl 00
    mov x1, 264              
    mov x2, 104
    mov x3, 42                  // Largo del Rectángulo -> ... (!)
    mov x4, 3
    bl drawRectangle
    movz x10, ESQUINA_HOJA1, lsl 16
    movk x10, ESQUINA_HOJA2, lsl 00
    mov x1, 258              
    mov x2, 98
    mov x3, 6                  // Largo del Rectángulo -> ... (!)
    mov x4, 3
    bl drawRectangle
    mov x1, 261              
    mov x2, 101
    mov x3, 3                  // Largo del Rectángulo -> ... (!)
    mov x4, 3
    bl drawRectangle
    mov x1, 264              
    mov x2, 98
    mov x3, 3                  // Largo del Rectángulo -> ... (!)
    mov x4, 9
    bl drawRectangle
    movz x10, NEGRO_BORDES1, lsl 16
    movk x10, NEGRO_BORDES2, lsl 00
    mov x1, 259              
    mov x2, 48
    mov x3, 3                  // Largo del Rectángulo -> ... (!)
    mov x4, 3
    bl drawRectangle
    mov x1, 262              
    mov x2, 45
    mov x3, 5                  // Largo del Rectángulo -> ... (!)
    mov x4, 9
    bl drawRectangle
    movz x10, ESQUINA_HOJA1, lsl 16
    movk x10, ESQUINA_HOJA2, lsl 00
    mov x1, 259              
    mov x2, 51
    mov x3, 3                  // Largo del Rectángulo -> ... (!)
    mov x4, 3
    bl drawRectangle
    movz x10, NEGRO_BORDES1, lsl 16
    movk x10, NEGRO_BORDES2, lsl 00
    mov x1, 292              
    mov x2, 48
    mov x3, 3                  // Largo del Rectángulo -> ... (!)
    mov x4, 3
    bl drawRectangle
    mov x1, 295              
    mov x2, 45
    mov x3, 5                  // Largo del Rectángulo -> ... (!)
    mov x4, 9
    bl drawRectangle
    movz x10, ESQUINA_HOJA1, lsl 16
    movk x10, ESQUINA_HOJA2, lsl 00
    mov x1, 292              
    mov x2, 51
    mov x3, 3                  // Largo del Rectángulo -> ... (!)
    mov x4, 3
    bl drawRectangle
    // texto
    movz x10, AZUL_GORRO1, lsl 16
    movk x10, AZUL_GORRO2, lsl 00
    mov x1, 272              
    mov x2, 60
    mov x3, 3                  // Largo del Rectángulo -> ... (!)
    mov x4, 3
    bl drawRectangle
    mov x1, 275              
    mov x2, 63
    mov x3, 3                  // Largo del Rectángulo -> ... (!)
    mov x4, 3
    bl drawRectangle
    mov x1, 278              
    mov x2, 60
    mov x3, 3                  // Largo del Rectángulo -> ... (!)
    mov x4, 3
    bl drawRectangle
    mov x1, 278              
    mov x2, 66
    mov x3, 3                  // Largo del Rectángulo -> ... (!)
    mov x4, 3
    bl drawRectangle
    mov x1, 273              
    mov x2, 66
    mov x3, 3                  // Largo del Rectángulo -> ... (!)
    mov x4, 3
    bl drawRectangle
    mov x1, 284              
    mov x2, 63
    mov x3, 3                  // Largo del Rectángulo -> ... (!)
    mov x4, 3
    bl drawRectangle
    mov x1, 287              
    mov x2, 60
    mov x3, 3                  // Largo del Rectángulo -> ... (!)
    mov x4, 9
    bl drawRectangle
    mov x1, 272              
    mov x2, 72
    mov x3, 3                  // Largo del Rectángulo -> ... (!)
    mov x4, 3
    bl drawRectangle
    mov x1, 275              
    mov x2, 75
    mov x3, 3                  // Largo del Rectángulo -> ... (!)
    mov x4, 3
    bl drawRectangle
    mov x1, 278              
    mov x2, 72
    mov x3, 3                  // Largo del Rectángulo -> ... (!)
    mov x4, 3
    bl drawRectangle
    mov x1, 278              
    mov x2, 78
    mov x3, 3                  // Largo del Rectángulo -> ... (!)
    mov x4, 3
    bl drawRectangle
    mov x1, 273              
    mov x2, 78
    mov x3, 3                  // Largo del Rectángulo -> ... (!)
    mov x4, 3
    bl drawRectangle
    mov x1, 284              
    mov x2, 72
    mov x3, 6                  // Largo del Rectángulo -> ... (!)
    mov x4, 3
    bl drawRectangle
    mov x1, 284              
    mov x2, 72
    mov x3, 3                  // Largo del Rectángulo -> ... (!)
    mov x4, 9
    bl drawRectangle
    mov x1, 284              
    mov x2, 78
    mov x3, 6                  // Largo del Rectángulo -> ... (!)
    mov x4, 3
    bl drawRectangle
    mov x1, 275              
    mov x2, 87
    mov x3, 3                  // Largo del Rectángulo -> ... (!)
    mov x4, 3
    bl drawRectangle
    mov x1, 278              
    mov x2, 90
    mov x3, 3                  // Largo del Rectángulo -> ... (!)
    mov x4, 3
    bl drawRectangle
    mov x1, 281              
    mov x2, 87
    mov x3, 3                  // Largo del Rectángulo -> ... (!)
    mov x4, 3
    bl drawRectangle
    mov x1, 281              
    mov x2, 93
    mov x3, 3                  // Largo del Rectángulo -> ... (!)
    mov x4, 3
    bl drawRectangle
    mov x1, 276              
    mov x2, 93
    mov x3, 3                  // Largo del Rectángulo -> ... (!)
    mov x4, 3
    bl drawRectangle
    mov x1, 287              
    mov x2, 87
    mov x3, 3                  // Largo del Rectángulo -> ... (!)
    mov x4, 3
    bl drawRectangle
    mov x1, 290              
    mov x2, 90
    mov x3, 3                  // Largo del Rectángulo -> ... (!)
    mov x4, 6
    bl drawRectangle

	//VENTILACION
    movz x10, SOMBRA1, lsl 16
    movk x10, SOMBRA2, lsl 00
    mov x1, 312              
    mov x2, 18
    mov x3, 61                  // Largo del Rectángulo -> ... (!)
    mov x4, 66
    bl drawRectangle
	movz x10, NEGRO_BORDES1, lsl 16
    movk x10, NEGRO_BORDES2, lsl 00
    mov x1, 315              
    mov x2, 14
    mov x3, 61                  // Largo del Rectángulo -> ... (!)
    mov x4, 66
    bl drawRectangle
	movz x10, AZUL_GORRO1, lsl 16
    movk x10, AZUL_GORRO2, lsl 00
    mov x1, 319              
    mov x2, 18
    mov x3, 54                  // Largo del Rectángulo -> ... (!)
    mov x4, 58
    bl drawRectangle
    movz x10, NEGRO_BORDES1, lsl 16
    movk x10, NEGRO_BORDES2, lsl 00
    mov x1, 325              
    mov x2, 24
    mov x3, 44                  // Largo del Rectángulo -> ... (!)
    mov x4, 46
    bl drawRectangle
    movz x10, AZUL_GORRO1, lsl 16
    movk x10, AZUL_GORRO2, lsl 00
    mov x1, 329              
    mov x2, 28
    mov x3, 37                  // Largo del Rectángulo -> ... (!)
    mov x4, 3
    bl drawRectangle
    mov x1, 332              
    mov x2, 31
    mov x3, 34                  // Largo del Rectángulo -> ... (!)
    mov x4, 3
    bl drawRectangle
    movz x10, BLANCO_HOJA1, lsl 16
    movk x10, BLANCO_HOJA2, lsl 00
    mov x1, 335              
    mov x2, 31
    mov x3, 34                  // Largo del Rectángulo -> ... (!)
    mov x4, 3
    bl drawRectangle
    movz x10, AZUL_GORRO1, lsl 16
    movk x10, AZUL_GORRO2, lsl 00
    mov x1, 329              
    mov x2, 38
    mov x3, 37                  // Largo del Rectángulo -> ... (!)
    mov x4, 3
    bl drawRectangle
    mov x1, 332              
    mov x2, 41
    mov x3, 34                  // Largo del Rectángulo -> ... (!)
    mov x4, 3
    bl drawRectangle
    movz x10, BLANCO_HOJA1, lsl 16
    movk x10, BLANCO_HOJA2, lsl 00
    mov x1, 335              
    mov x2, 41
    mov x3, 34                  // Largo del Rectángulo -> ... (!)
    mov x4, 3
    bl drawRectangle
    movz x10, AZUL_GORRO1, lsl 16
    movk x10, AZUL_GORRO2, lsl 00
    mov x1, 329              
    mov x2, 48
    mov x3, 37                  // Largo del Rectángulo -> ... (!)
    mov x4, 3
    bl drawRectangle
    mov x1, 332              
    mov x2, 51
    mov x3, 34                  // Largo del Rectángulo -> ... (!)
    mov x4, 3
    bl drawRectangle
    movz x10, BLANCO_HOJA1, lsl 16
    movk x10, BLANCO_HOJA2, lsl 00
    mov x1, 335              
    mov x2, 51
    mov x3, 34                  // Largo del Rectángulo -> ... (!)
    mov x4, 3
    bl drawRectangle
    movz x10, AZUL_GORRO1, lsl 16
    movk x10, AZUL_GORRO2, lsl 00
    mov x1, 329              
    mov x2, 58
    mov x3, 37                  // Largo del Rectángulo -> ... (!)
    mov x4, 3
    bl drawRectangle
    mov x1, 332              
    mov x2, 61
    mov x3, 34                  // Largo del Rectángulo -> ... (!)
    mov x4, 3
    bl drawRectangle
    movz x10, BLANCO_HOJA1, lsl 16
    movk x10, BLANCO_HOJA2, lsl 00
    mov x1, 335              
    mov x2, 61
    mov x3, 34                  // Largo del Rectángulo -> ... (!)
    mov x4, 3
    bl drawRectangle
    movz x10, NEGRO_BORDES1, lsl 16
    movk x10, NEGRO_BORDES2, lsl 00
    mov x1, 325              
    mov x2, 78
    mov x3, 25                  // Largo del Rectángulo -> ... (!)
    mov x4, 10
    bl drawRectangle
    mov x1, 330              
    mov x2, 83
    mov x3, 4                  // Largo del Rectángulo -> ... (!)
    mov x4, 80
    bl drawRectangle
    mov x1, 330              
    mov x2, 163
    mov x3, 8                  // Largo del Rectángulo -> ... (!)
    mov x4, 10
    bl drawRectangle
    movz x10, SOMBRA1, lsl 16
    movk x10, SOMBRA2, lsl 00
    mov x1, 326              
    mov x2, 88
    mov x3, 4                  // Largo del Rectángulo -> ... (!)
    mov x4, 2
    bl drawRectangle
    mov x1, 321              
    mov x2, 112
    mov x3, 4                  // Largo del Rectángulo -> ... (!)
    mov x4, 50
    bl drawRectangle
    mov x1, 321              
    mov x2, 152
    mov x3, 8                  // Largo del Rectángulo -> ... (!)
    mov x4, 10
    bl drawRectangle


br x30
