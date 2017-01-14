obj_mouse.x = mouse_x;
obj_mouse.y = mouse_y;
if(mouse_x > obj_cama.x-camaW and mouse_x < obj_cama.x+camaW
and mouse_y > obj_cama.y-camaH and mouse_y < obj_cama.y+camaH){
	image_index = 1;
}else image_index = 0;

if(mouse_x > obj_pc.x-pcW and mouse_x < obj_pc.x+pcW
and mouse_y > obj_pc.y-pcH and mouse_y < obj_pc.y+pcH){
	image_index = 1;
}else image_index = mouse_cursor;