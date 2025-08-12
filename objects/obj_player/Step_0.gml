var _hor = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var _ver = keyboard_check(ord("S")) - keyboard_check(ord("W"));

move_and_collide(_hor * move_speed, _ver * move_speed, tilemap, undefined, undefined, undefined, move_speed, move_speed);
//move
if (_hor != 0 or _ver != 0)
{
	if (_ver < 0) sprite_index = spr_player_walk_up;
	else if (_ver > 0) sprite_index = spr_player_walk_down;
	else if (_hor > 0) sprite_index = spr_player_walk_right;
	else if (_hor < 0) sprite_index = spr_player_walk_left;
        
    facing = point_direction(0, 0, _hor, _ver);
}
else
{
	if (sprite_index == spr_player_walk_up) sprite_index = spr_player_idle_up;
	else if (sprite_index == spr_player_walk_down) sprite_index = spr_player_idle_down;
	else if (sprite_index == spr_player_walk_right) sprite_index = spr_player_idle_right;
	else if (sprite_index == spr_player_walk_left) sprite_index = spr_player_idle_left;
}
//attack
if (mouse_check_button_pressed(mb_left)){
    var _inst = instance_create_depth(x , y, depth, attack);
    //_inst.image_angle = facing;
    _inst.image_angle = point_direction(x, y, mouse_x, mouse_y);
    _inst.damage *= damage;
}

//sprint
if (keyboard_check(vk_shift) && (_hor != 0 or _ver != 0)){
    if (stamina > 0){
    move_speed = sprint_speed;
    } else {move_speed= base_speed};
    stamina = clamp((stamina - 0.8), 0, stamina_max);
} else {
        stamina = clamp((stamina + 0.2), 0, stamina_max);
}

//dash
if (mouse_check_button_pressed(mb_right) ){
    if (stamina > 0){
        dash_dir = point_direction(x, y, mouse_x, mouse_y);
        dash_speed = 6;
        stamina = clamp((stamina - 20), 0, stamina_max);
    }
} 
if (dash_speed > 0) {
    var dx = lengthdir_x(dash_speed, dash_dir);
    var dy = lengthdir_y(dash_speed, dash_dir);
    var bonus_damage = 2;
    move_and_collide(dx, dy, tilemap);
    attack= obj_attack;
    dash_speed = max(0, dash_speed - friction_slide);
} else {
    attack = obj_attack2;
}

