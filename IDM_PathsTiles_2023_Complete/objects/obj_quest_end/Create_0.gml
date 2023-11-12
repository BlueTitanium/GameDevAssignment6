/// @description Insert description here
// You can write your code in this editor









// Inherit the parent event
event_inherited();

function interact(){
	var _inst = instance_create_layer(obj_camera.cam_wid,obj_camera.cam_hei,"Instances",obj_ui_bubble);
	_inst.isStart = false;
	instance_destroy();
}

