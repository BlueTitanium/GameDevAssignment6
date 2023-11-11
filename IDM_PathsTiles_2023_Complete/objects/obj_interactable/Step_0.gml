/// @description Insert description here
// You can write your code in this editor

if(place_meeting(x,y,obj_player)){
	show_interact = true;
} else {
	show_interact = false;
}

if(show_interact && keyboard_check_pressed(vk_space)){
	interact();	
}





