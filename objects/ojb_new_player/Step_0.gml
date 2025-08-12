// get inputs
var rightKey = keyboard_check( ord( "D" ) );
var leftKey = keyboard_check( ord( "A" ) );
var upKey = keyboard_check( ord( "W" ) );
var downKey = keyboard_check( ord( "S" ) );


//player movement
#region
	// get the direction
	var _horiKey = rightKey - leftKey;
	var _vertKey = downKey - upKey;
	moveDir = point_direction( 0, 0, _horiKey, _vertKey);
	
	// get the x and y speeds
	var _spd = 0;
	var _inputLevel = point_distance( 0, 0, _horiKey, _vertKey);
	//_inputLevel = clamp( _inputLevel, 0, 1);
		
	_spd = moveSpd * _inputLevel;
	
	xspd = lengthdir_x( _spd, moveDir);
	yspd = lengthdir_y( _spd, moveDir);
		
		
	//collision
	if !place_meeting(x + xspd, y, tilemap) {
		x += xspd;
	}
		
	if !place_meeting(x, y + yspd, tilemap) {
		y += yspd;
	}

#endregion

// player aiming
	centerY = y + centerYOffset;
	
	// aim
	aimDir = point_direction( x, centerY, mouse_x, mouse_y);


// sprite control
#region
	// make sure the player is facing the correct direction
	face = round( aimDir/90);
	if face == 4 { face = 0; };

	// set the player sprite
	if (_inputLevel == 0) {
		if (face == 1) sprite_index = spr_player_idle_up;
		if (face == 3) sprite_index = spr_player_idle_down;
		if (face == 2) sprite_index = spr_player_idle_left;
		if (face == 0) sprite_index = spr_player_idle_right;
	} else {
		sprite_index = sprite[face]
	}
#endregion
	