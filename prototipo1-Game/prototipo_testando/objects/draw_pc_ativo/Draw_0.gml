if(global.usandoPc){
	
	draw_sprite(spr_tela_pc,0,50,50);
	draw_sprite(spr_projeto,0,xProjeto1,yProjeto1);
	draw_sprite(spr_projeto,0,xProjeto2,yProjeto2);
	draw_sprite(spr_projeto,0,xProjeto3,yProjeto3);
	draw_sprite(spr_projeto,0,xProjeto4,yProjeto4);
	draw_sprite(spr_botoes_pc,0,530,80);
	draw_sprite(spr_botoes_pc,0,530,110);
	draw_sprite(spr_botoes_pc,0,530,140);
	draw_sprite(spr_botoes_pc,0,530,170);
	cursor_sprite = spr_cursor_pc;
	draw_sprite(spr_botaoFecharPC,anim_botao,610,20);

	botaoFecharPCWidth = 50;
	botaoFecharPCHeight = 50;
	mouseXPos = window_mouse_get_x();
	mouseYPos = window_mouse_get_y();

	if(mouseXPos > 610-botaoFecharPCWidth and mouseXPos < 610+botaoFecharPCWidth and mouseYPos > 20 and mouseYPos < 20+botaoFecharPCHeight){
		anim_botao = 1;
		if(mouse_check_button_pressed(mb_left)){
			global.tempoFecha = 10;
			anim_botao = 2;
		}
		global.tempoFecha -= 1;
		if(global.tempoFecha == 1){
			global.tempoFecha = 0;
			global.usandoPc = false;
		}
	}else{
		anim_botao = 0;
	}
}