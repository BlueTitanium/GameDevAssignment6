randomize();

mspd = 1.5

move_dir = 0

hspd = 0
vspd = 0

x_remainder = 0
y_remainder = 0

image_xscale = .5;
image_yscale = .5;

bumped_into_something = false

gold = 0;
var gold_sprite = instance_create_layer(32,32,"Instances",obj_ui_sprite);
gold_sprite.sprite_index = spr_coin;

can_move = true;