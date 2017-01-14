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
	draw_sprite(spr_botaoFecharPC,anim_botao,610,20);

	botaoFecharPCWidth = 50;
	botaoFecharPCHeight = 50;
	mouseXPos = window_mouse_get_x();
	mouseYPos = window_mouse_get_y();

	if(mouseXPos > 610-(botaoFecharPCWidth/2) and mouseXPos < 610+(botaoFecharPCWidth/2 + 4) 
	and mouseYPos > 20-botaoFecharPCHeight and mouseYPos < 20+botaoFecharPCHeight){
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
	//Projetos Botoes
	
	draw_sprite(spr_botao_recusar,anim_btnProj,xBtnProj1,yBtnProj1);
	draw_sprite(spr_botao_recusar,anim_btnProj,xBtnProj2,yBtnProj2);
	
	if(mouseXPos > xBtnProj1-(btnProjWidth/2) and mouseXPos < xBtnProj1-(btnProjWidth/2 + 4)
	and mouseYPos > yBtnProj1-btnProjHeight and mouseYPos < yBtnProj1+btnProjHeight){
		anim_btnProj = 1;
	}else{
		anim_btnProj = 0;
	}
		
}
