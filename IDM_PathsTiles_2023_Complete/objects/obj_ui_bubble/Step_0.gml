/// @description Insert description here
// You can write your code in this editor

if(keyboard_check_pressed(vk_space)){
	if(isStart){
		obj_player.gold += num_coins;
		obj_player.can_move = true;
		instance_destroy();
	} else {
		
		obj_player.can_move = true;
		room_restart();
	}
}






