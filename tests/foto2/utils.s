.include "data.s"

timer:
	mov x5, 25471
loop_timer:
	sub x5, x5, 1
	cbnz x5, loop_timer
	b timer
br x30
