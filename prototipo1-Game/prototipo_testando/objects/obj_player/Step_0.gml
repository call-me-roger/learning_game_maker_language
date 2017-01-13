//Movimentacao

if(movimentacao){
	var velo = 20;
	if(keyboard_check(ord("W"))){
		y -= velo;
	}
	if(keyboard_check(ord("A"))){
		x -= velo;
	}
	if(keyboard_check(ord("S"))){
		y += velo;
	}
	if(keyboard_check(ord("D"))){
		x += velo;
	}
}
//Dormir

if(place_meeting(x+5,y,obj_cama) || place_meeting(x-5,y,obj_cama) || place_meeting(x,y+5,obj_cama) || place_meeting(x,y+5,obj_cama)){
	if(keyboard_check(vk_enter) && dormindo = false){
		show_message("voce esta dormindo");
		sprite_index = spr_player_dormindo;
		global.tempoDormindo = 200;
		dormindo = true;
		movimentacao = false;//n se move
	}
	global.tempoDormindo -= 1;
		if(global.tempoDormindo == 0){
			sprite_index = spr_player;
			dormindo = false;
			movimentacao = true;//movimentacao habilitada de novo
		}
}

//Mexer no pc
if(place_meeting(x+5,y,obj_pc) || place_meeting(x-5,y,obj_pc) || place_meeting(x,y+5,obj_pc) || place_meeting(x,y+5,obj_pc)){
	if(mouse_check_button_pressed(mb_left)){
		global.usandoPc = true;
	}
}

//Trocar roupa

if(place_meeting(x+5,y,obj_groupa) || place_meeting(x-5,y,obj_groupa) || place_meeting(x,y+5,obj_groupa) || place_meeting(x,y+5,obj_groupa)){
	if(mouse_check_button_pressed(mb_left)){
		show_message("trocando de roupa");
	}
}

//Porta proximo room

if(place_meeting(x+5,y,obj_porta_proximo) || place_meeting(x-5,y,obj_porta_proximo) || place_meeting(x,y+5,obj_porta_proximo) || place_meeting(x,y+5,obj_porta_proximo)){
	if(keyboard_check(vk_enter)){
		room_goto_next();
		proxRoom = true;//usar para verificar se o player veio de um room e coloca-lo em certo x,y (lugar) posicionado perto da porta
		anteRoom = false//usar para verificar se o player veio de um room e coloca-lo em certo x,y (lugar) posicionado perto da porta
	}
}

//Porta room anterior

if(place_meeting(x+5,y,obj_porta_anterior) || place_meeting(x-5,y,obj_porta_anterior) || place_meeting(x,y+5,obj_porta_anterior) || place_meeting(x,y+5,obj_porta_anterior)){
	if(keyboard_check(vk_enter)){
		room_goto_previous();
		anteRoom = true;//usar para verificar se o player veio de um room e coloca-lo em certo x,y (lugar) posicionado perto da porta
		proxRoom = false;//usar para verificar se o player veio de um room e coloca-lo em certo x,y (lugar) posicionado perto da porta
	}
}