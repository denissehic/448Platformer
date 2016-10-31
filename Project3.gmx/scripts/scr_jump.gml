///scr_jump
scr_input();
if(left_key){
   phy_position_x -= 3;
   image_xscale = -1;
}
if(right_key){
   phy_position_x += 3;
   image_xscale = 1;
}
if(place_meeting(x,y + 1,obj_surface_parent) && jumping) {
    jumping = false;
    state = scr_move;
}


