/// @description Insert description here
// You can write your code in this editor


//need to change so that thief is bound to certain area

if mspd != 0{
	sprite_index = spr_thief_idle;
}


//this does not work
if (phy_position_x < phy_position_xprevious){
   image_xscale = -image_xscale;
}

//move_towards_point(obj_player.x, obj_player.y, 3);






//if (point_distance(x, y, target.x, target.y) > global.tile_size){
	
	path_x = target.x;
	path_y = target.y;
	
	
	
	if (mp_grid_path(global.main_grid, path, x, y, path_x, path_y, true)){
		path_start(path, mspd, path_action_stop, true);
		
		sprite_index = spr_thief_run;
		
	

}
//}

if place_meeting(x,y,obj_player){
	sprite_index = spr_thief_attack;

	global.gold -= 1;
	

}


//if (obj_guard.x - x < sprite_height) or (obj_guard.y - y < sprite_height) {
if point_distance(x,y,obj_guard.x, obj_guard.y) < 40{
	shood = true;
}

if shood == true{
	mspd = 0;
	timer += 1;
	
	if timer > 300{
		shood = false;
		
	}
	
} else{
	mspd = 1;
	timer = 0;
	
	
}










