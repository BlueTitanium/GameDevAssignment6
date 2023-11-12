/// @description Insert description here
// You can write your code in this editor

if(place_meeting(x,y,obj_player)){
	//spawn caravan
	instance_create_layer(-1000,-1000,"Instances",obj_caravan);
	instance_destroy();
}






