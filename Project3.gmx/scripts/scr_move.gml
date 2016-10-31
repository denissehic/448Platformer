///scr_move
scr_input();
var ladder = false;

//general
if(up_key && ladder){
   phy_position_y -= 3;
}
if(down_key && ladder){
   phy_position_y += 3;
}
if(left_key){
   phy_position_x -= 4;
   sprite_index = spr_player_walk;
   image_xscale = -1;
}
if(right_key){
   phy_position_x += 4;
   sprite_index = spr_player_walk;
   image_xscale = 1;
}
if(!right_key && !left_key) {
    sprite_index = spr_player_idle;
}

//jumping
if(place_meeting(x,y + 1,obj_surface_parent) && jumping) {
    jumping = false;
}
if(jump_key && (jumping == false)){
    physics_apply_impulse(x,y,0,-8);
    jumping = true;
    state = scr_jump;
    
}

//rolling
if(roll_key) {
    state = scr_roll;
    image_index = 0;
    alarm[0] = 25;
}

