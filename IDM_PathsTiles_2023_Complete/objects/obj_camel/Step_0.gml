/// @description Insert description here
// You can write your code in this editor

if (point_distance(x, y, target.x, target.y) > global.tile_size){
	
	path_x = target.x;
	path_y = target.y;
	
	if (mp_grid_path(global.main_grid, path, x, y, path_x, path_y, true)){
		path_start(path, mspd, path_action_stop, false);
	}
	
} else {
	image_index = 0;	
}









