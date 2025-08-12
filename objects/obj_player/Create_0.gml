base_speed = 1;
move_speed = base_speed;
sprint_speed = 5;
stamina = 10;
stamina_max = 10;


tilemap = layer_tilemap_get_id("Tiles_Col");
hp = 10;
hp_total = hp;
damage = 1;
facing = 0;
//knockback
kb_x = 0;
kb_y = 0;

level = 1;
xp = 0;
xp_require = 100;

function add_xp(_xp_to_add){
    xp += _xp_to_add;
    if (xp > xp_require){
        level ++;
        xp -= xp_require;
        xp_require *= 1.4;
        
        hp_total =+ 5;
        hp = hp_total;
        damage += 0.8;
    }
}