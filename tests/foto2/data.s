.ifndef data_s
.equ data_s, 0


.data

//Colores

sand_color: .word    0xFCF89A  

/* Cosas de la pantalla */
.equ SCREEN_WIDTH, 640
.equ SCREEN_HEIGH, 480
.equ BITS_PER_PIXEL, 32

.equ GPIO_BASE, 0x3f200000
.equ GPIO_GPFSEL0, 0x00
.equ GPIO_GPLEV0, 0x34

.equ VERDE_PARED1, 0x00
.equ VERDE_PARED2, 0x2D33

.equ BLANCO_HOJA1, 0x1F
.equ BLANCO_HOJA2, 0x6F89

.equ CAÑO1, 0x00
.equ CAÑO2, 0x4A7D

.equ BLANCO_PARED1, 0x00
.equ BLANCO_PARED2, 0x4F57

.equ SOMBRA_PARED1, 0x01
.equ SOMBRA_PARED2, 0x1C29

.equ NEGRO_BORDES1, 0x00
.equ NEGRO_BORDES2, 0x0624

.equ BRILLO_PARED1, 0x00
.equ BRILLO_PARED2, 0x4C54

.equ AZUL_GORRO1, 0x00
.equ AZUL_GORRO2, 0x2C59

.equ ESQUINA_HOJA1, 0x00
.equ ESQUINA_HOJA2, 0x4A7D      

.equ SOMBRA1, 0x01
.equ SOMBRA2, 0x1C29

// ------Colores kirby -------//
.equ ROSA_OSC1, 0xC7
.equ ROSA_OSC2, 0x1585

.equ ROSA_CLA1, 0xEE
.equ ROSA_CLA2, 0x82EE

// ------Colores-Neon--------//
.equ VERDE_OSC1, 0x00
.equ VERDE_OSC2, 0x5C3C

.equ VERDE_FUERTE1, 0x00
.equ VERDE_FUERTE2, 0xFF40

.equ CELESTE1, 0x00
.equ CELESTE2, 0x4F57

.equ AZUL1, 0x00
.equ AZUL2, 0x2B57


//-------Verdes-Hojas--------//
.equ VERDE_OSCURO1, 0x00
.equ VERDE_OSCURO2, 0x6640

.equ VERDE_MEDIO1, 0x00
.equ VERDE_MEDIO2, 0x9154

.equ VERDE_CLARO1, 0x00
.equ VERDE_CLARO2, 0xcc71

.endif
