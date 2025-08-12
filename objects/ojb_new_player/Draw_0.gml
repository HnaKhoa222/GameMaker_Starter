// draw the weapon behind the player
if aimDir >= 45 && aimDir <= 225 
{
	draw_weapon();
}

// draw the player
draw_self();

// draw the weapon
if aimDir >= 225 && aimDir < 360 ||  aimDir <= 45 && aimDir > 0 {
	draw_weapon();
}
