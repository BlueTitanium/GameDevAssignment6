/// @description Insert description here
// You can write your code in this editor

draw_self();

if(isStart){
	draw_set_color(#000000);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_set_font(fnt_medium);
	draw_text(camera_get_view_width(global.camid),camera_get_view_height(global.camid)-125,"QUEST!");
	draw_set_font(fnt_small);
	draw_text(camera_get_view_width(global.camid),camera_get_view_height(global.camid),
	"Details: You will need to deliver money\nto an impoverished kingdom in the east.\nWe've given you a parcel of "+
	string(num_coins)+" gold coins.\n");
	draw_set_font(fnt_medium);
	draw_text(camera_get_view_width(global.camid),camera_get_view_height(global.camid)+125,"Press SPACE to Accept");
	
	draw_set_color(#FFFFFF);
} else {
	draw_set_color(#000000);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_set_font(fnt_medium);
	draw_text(camera_get_view_width(global.camid),camera_get_view_height(global.camid)-125,"QUEST COMPLETE!");
	draw_set_font(fnt_small);
	var end_str = "You've been able to deliver "+
	string(obj_player.gold)+" gold coins!";
	if(string(obj_player.gold) > 600) {
		end_str+="\nNice work gathering so many coins!";	
	} else if(string(obj_player.gold) < 400) {
		end_str+="\n...but what happened to the package you were given?";
	}
	draw_text(camera_get_view_width(global.camid),camera_get_view_height(global.camid),
	end_str);
	draw_set_font(fnt_medium);
	draw_text(camera_get_view_width(global.camid),camera_get_view_height(global.camid)+125,"Press SPACE to restart?");
	
	draw_set_color(#FFFFFF);
}




