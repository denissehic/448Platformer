///scr_roll
scr_input();
sprite_index = spr_player_roll;
if(left_key){
   phy_position_x -= 4;
   image_xscale = -1;
}
if(right_key){
   phy_position_x += 4;
   image_xscale = 1;
}


