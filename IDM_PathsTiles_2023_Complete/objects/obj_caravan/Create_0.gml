/// @description Insert description here
// You can write your code in this editor

path_start(path_caravan, .5, path_action_stop, true);

gold = instance_create_layer(x,y+16,"Instances",obj_gold_interactable);
gold.follow = id;
gold.gold_amt = 200;




