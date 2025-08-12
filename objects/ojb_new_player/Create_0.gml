// variables for movement
moveSpd = 2;
moveDir = 0;
xspd = 0;
yspd = 0;

// sprite control
centerYOffset = -8;
centerY = y + centerYOffset; // set in the step event

weaponOffsetDist = 0;
aimDir = 0;

face = 3;
sprite[0] = spr_player_walk_right;
sprite[1] = spr_player_walk_up;
sprite[2] = spr_player_walk_left;
sprite[3] = spr_player_walk_down;

// get collision tiles
tilemap = layer_tilemap_get_id("Tiles_Col");

sprite_index = sprite[face]