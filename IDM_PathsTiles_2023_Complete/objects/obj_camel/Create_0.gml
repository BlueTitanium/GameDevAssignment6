/// @description Insert description here
// You can write your code in this editor

mspd = 1;
target = obj_player;

path_x = x;
path_y = y;

path = path_add();

is_tamed = false;

can_tame = false;

random_path = path_add();
index = 0;
dir_step = 360/10;
cx = x;
cy = y;
point_list = ds_list_create();
min_radius = 50;
max_radius = 100;
for (var i=0;i<360;i+=dir_step) {
   len = irandom_range(min_radius,max_radius) // Pick a distance from the center for this point
   px = cx+lengthdir_x(len,i);
   py = cy+lengthdir_y(len,i);
   ds_list_add(point_list,[px,py]);
}





