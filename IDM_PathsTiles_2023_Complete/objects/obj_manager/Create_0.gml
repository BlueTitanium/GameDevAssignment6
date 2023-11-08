/// @description Insert description here
// You can write your code in this editor

global.tile_size = 16;

global.grid_width = room_width/global.tile_size;
global.grid_height = room_height/global.tile_size;

global.main_grid = mp_grid_create(0,0,global.grid_width, global.grid_height, global.tile_size, global.tile_size);

alarm[0] = 1;






