/// @description Insert description here
// You can write your code in this editor
event_inherited();
if(is_tamed){
	if (point_distance(x, y, target.x, target.y) > global.tile_size){
	
		path_x = target.x;
		path_y = target.y;
	
		if (mp_grid_path(global.main_grid, path, x, y, path_x, path_y, true)){
			path_start(path, mspd, path_action_stop, false);
		}
	
	} else {
		image_index = 0;	
		path_end();
	}

	if(x < target.x){
		image_xscale = -abs(image_xscale);
	} else {
		image_xscale = abs(image_xscale);
	}

} else {
	if(path_index == -1){
		path_x = ds_list_find_value(point_list,index)[0];
		if(x < path_x){
			image_xscale = -abs(image_xscale);
		} else {
			image_xscale = abs(image_xscale);
		}

		path_y = ds_list_find_value(point_list,index)[1];
		if (mp_grid_path(global.main_grid, random_path, x, y, path_x, path_y, true)){
			path_start(random_path,mspd/2,path_action_stop,false);
		}
		index++;
		if(index>=ds_list_size(point_list)){
			index = 0;	
		}
	}
	
	
	if(place_meeting(x,y,obj_player)){
		can_tame = true;
	} else {
		can_tame = false;
	}

	if(can_tame && keyboard_check_pressed(vk_space)){
		is_tamed = true;
		can_tame = false;
		path_end();
		//spawn hearts
		instance_create_layer(x,y,"Instances",obj_hearts);
	}

}







