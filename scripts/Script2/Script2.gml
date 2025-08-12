function draw_weapon(){
	// get the weapon off the player's body
	var _xOffset = lengthdir_x(weaponOffsetDist, aimDir);
	var _yOffset = lengthdir_y(weaponOffsetDist, aimDir)
	var _weaponYscl = 1;

	// flip the weapon upright
	if (aimDir > 90 && aimDir < 270)
	{
		_weaponYscl = -1;
	}
	draw_sprite_ext( spr_ak47, 0, x + _xOffset, centerY + _yOffset, 1, _weaponYscl, aimDir, c_white, 1);
}