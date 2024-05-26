	.include "data.s"
	.include "utils.s"
	.globl main

main:
	// x0 contiene la direccion base del framebuffer
	mov x20, x0 // Guarda la dirección base del framebuffer en x20
	//---------------- color : x10 ----------------//
	bl makeBackground

	//-----------timer para evitar el loop infinito que sobrecarga la cpu----------//
    bl timer

	//------------------------------------InfLoop----------------------------------//
InfLoop:
	b InfLoop
