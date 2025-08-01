var _dx = 16;
var _dy = 16;
var _barw = 256;
var _barh = 32;

// properties
draw_set_font(Font1);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

//healthbar

var _health_barw = _barw * (hp / hp_total);

draw_sprite_stretched(spr_box, 0, _dx, _dy, _barw, _barh);
draw_sprite_stretched_ext(spr_box, 1, _dx, _dy, _health_barw, _barh, c_red, 0.6);
draw_text(_dx + _barw/2, _dy + _barh  / 2, "HP");

//XP bar
var _xp_barw = _barw * (xp / xp_require);
_dy += _barh + 10;

draw_sprite_stretched(spr_box, 0, _dx, _dy, _barw, _barh);
draw_sprite_stretched_ext(spr_box, 1, _dx, _dy, _xp_barw, _barh, c_navy, 0.6);
draw_text(_dx + _barw/2, _dy + _barh/2, $"LEVEL {level}");

//reset properties
draw_set_halign(fa_left);
draw_set_valign(fa_top);