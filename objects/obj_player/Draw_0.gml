draw_self();

var weapon_angle = 0
var offx  = lengthdir_x(hand_offset, weapon_angle);
var offy  = lengthdir_y(hand_offset, weapon_angle);

// 5) Vẽ vũ khí (ở trên body)
var _x = x + offx;
var _y = y + offy+5;
var _xscale = 1;
var _yscale = 1;   // lật dọc khi quay sang trái


draw_sprite_ext(spr_starter_sword, 0, _x, _y, _xscale, _yscale, weapon_angle, c_white, 1);

