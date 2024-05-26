.include "data.s"

.global drawRectangle
drawRectangle:
    sub sp, sp, 8   // mueve en 8 el puntero 'sp'
	str x30, [sp]   // guarda la dirección de 'ret' en 'sp-8'

    rows: //x5 = x20 +  4*[X + (Y*640)]
        mov x11, SCREEN_WIDTH   	 // x11 -> 640
        mul x11, x2, x11   		     // x11 -> Y * 640
        add x11, x11, x1   		     // x11 -> X + ( Y * 640 )
        lsl x11, x11, 2   			 // x11 -> 4 + ( X + ( Y * 640 ) )
        add x11, x11, x20   		 // posición del pixel
        mov x12, x3   				 // x12 -> largo del rectángulo
    columns:
        stur w10, [x11]   				 // pinta el pixel inicial
        add x11, x11, 4   			     // se mueve al pixel siguiente
        sub x12, x12, 1   			     // resta 1 al largo temporal del rectangulo
        cbnz x12, columns                // verifica cuando el largo temporal llegue a 0 
        add x2, x2, 1   			     // suma 1 al dato de las filas
        sub x4, x4, 1   				 // resta 1 al alto del rectangulo
        cbnz x4, rows              		 // verifica cuando el alto llegue a 0 (termina la fila)

	ldr x30, [sp]   // carga la dirección de 'ret' desde 'sp-8
	add sp, sp, 8   // regresa en 8 el puntero 'sp'
    br x30

.global drawCircle
drawCircle:
    sub sp, sp, 8   // mueve en 8 el puntero 'sp'
	str x30, [sp]   // guarda la dirección de 'ret' en 'sp-8'

    // Calcula la posicion de la esquina superior izquierda
    sub x11, x2, x3                 // x11 = Y-r
    sub x12, x1, x3                 // x12 = X-r
    // Calcula la posicion de la esquina inferior derecha
    add x13, x2, x3                 // x13 = Y+r
    add x14, x1, x3                 // x14 = X+r
    c_rows:   	                // x0 = x20 +  4*[X + (Y*640)]
        sub x12, x1, x3
        mov x6, SCREEN_WIDTH
        mul x6, x6, x11
        add x6, x6, x12
        lsl x6, x6, 2
        add x0, x20, x6   	        // posicion inicial del puntero
    c_draw_row:   	            // IF (i-y)^2 + (j-x)^2 <= R^2     THEN    c_pixel(j,i)
        sub x7, x11, x2   	        // x7 = i - Y
        mul x7, x7, x7   	        // x7 = (i - Y) ^ 2
        sub x15, x12, x1            // x15 = j - X
        mul x15, x15, x15           // x15 = (j-x) ^ 2
        add x7, x7, x15   	        // x7 = (i - Y) ^ 2 + (j - X) ^ 2
        mul x9, x3, x3   	        // x9 = R ^ 2
        cmp x12, x14
        b.gt c_next_row
        cmp x7, x9
        b.gt c_pixel
        stur w10, [x0]   	        // pinta el pixel
    c_pixel:
        add x12, x12, 1   	        // x12 = j + 1   	 
        add x0, x0, 4   	        // pasa al siguiente pixel
        b c_draw_row
    c_next_row:
        add x11, x11, 1
        cmp x11, x13
        b.le c_rows

	ldr x30, [sp]   // carga la dirección de 'ret' desde 'sp-8
	add sp, sp, 8   // regresa en 8 el puntero 'sp'
    br x30
