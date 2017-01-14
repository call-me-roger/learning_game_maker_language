if(global.usandoPc){
	movimentacao = false;
	draw_sprite(spr_tela_pc,0,400,400);
	draw_sprite(spr_projeto,0,xProjeto1,yProjeto1);
	draw_sprite(spr_projeto,0,xProjeto2,yProjeto2);
	draw_sprite(spr_projeto,0,xProjeto3,yProjeto3);
	draw_sprite(spr_projeto,0,xProjeto4,yProjeto4);
	draw_sprite(spr_botoes_pc,0,xBtnPC1,yBtnPC1);
	draw_sprite(spr_botoes_pc,0,xBtnPC2,yBtnPC2);
	draw_sprite(spr_botoes_pc,0,xBtnPC3,yBtnPC3);
	draw_sprite(spr_botoes_pc,0,xBtnPC4,yBtnPC4);
	draw_sprite(spr_botaoFecharPC,anim_botao,730,45);
	

	botaoFecharPCWidth = 50;
	botaoFecharPCHeight = 50;
	mouseXPos = window_mouse_get_x();
	mouseYPos = window_mouse_get_y();

//Botao Fechar PC
	if(mouse_x > 720-(botaoFecharPCWidth/2) and mouse_x < 720+(botaoFecharPCWidth/2) 
	and mouse_y > 35-(botaoFecharPCHeight/2) and mouse_y < 35+(botaoFecharPCHeight/2)){
		anim_botao = 1;
		if(mouse_check_button_pressed(mb_left)){
			global.tempoFecha = 10;
			anim_botao = 2;
		}
		global.tempoFecha -= 1;
		if(global.tempoFecha == 1){
			global.tempoFecha = 0;
			global.usandoPc = false;
			movimentacao = true;
		}
	}else{
		anim_botao = 0;
	}
//Projetos Botoes
	//Recusar
	draw_sprite(spr_botao_recusar,anim_btnProj1,xBtnProj1,yBtnProj1);
	draw_sprite(spr_botao_recusar,anim_btnProj2,xBtnProj2,yBtnProj2);
	draw_sprite(spr_botao_recusar,anim_btnProj3,xBtnProj3,yBtnProj3);
	draw_sprite(spr_botao_recusar,anim_btnProj4,xBtnProj4,yBtnProj4);
	//Aceitar
	draw_sprite(spr_botao_aceitar,anim_btnAProj1,xBtnAProj1,yBtnProj1);
	draw_sprite(spr_botao_aceitar,anim_btnAProj2,xBtnAProj2,yBtnProj2);
	draw_sprite(spr_botao_aceitar,anim_btnAProj3,xBtnAProj3,yBtnProj3);
	draw_sprite(spr_botao_aceitar,anim_btnAProj4,xBtnAProj4,yBtnProj4);
	
	//BOTOES RECUSAR
	if(mouse_x > xBtnProj1-(btnProjWidth/2) and mouse_x < xBtnProj1+(btnProjWidth/2)
	and mouse_y > yBtnProj1-(btnProjHeigh/2) and mouse_y < yBtnProj1+(btnProjHeigh/2)){
		anim_btnProj1 = 1;
	}else{
		anim_btnProj1 = 0;
	}
	if(mouse_x > xBtnProj2-(btnProjWidth/2) and mouse_x < xBtnProj2+(btnProjWidth/2)
	and mouse_y > yBtnProj2-(btnProjHeigh/2) and mouse_y < yBtnProj2+(btnProjHeigh/2)){
		anim_btnProj2 = 1;
	}else{
		anim_btnProj2 = 0;
	}
	if(mouse_x > xBtnProj3-(btnProjWidth/2) and mouse_x < xBtnProj3+(btnProjWidth/2)
	and mouse_y > yBtnProj3-(btnProjHeigh/2) and mouse_y < yBtnProj3+(btnProjHeigh/2)){
		anim_btnProj3 = 1;
	}else{
		anim_btnProj3 = 0;
	}
	if(mouse_x > xBtnProj4-(btnProjWidth/2) and mouse_x < xBtnProj4+(btnProjWidth/2)
	and mouse_y > yBtnProj4-(btnProjHeigh/2) and mouse_y < yBtnProj4+(btnProjHeigh/2)){
		anim_btnProj4 = 1;
	}else{
		anim_btnProj4 = 0;
	}
	
	//BOTOES ACEITAR
	if(mouse_x > xBtnAProj1-(btnProjWidth/2) and mouse_x < xBtnAProj1+(btnProjWidth/2)
	and mouse_y > yBtnProj1-(btnProjHeigh/2) and mouse_y < yBtnProj1+(btnProjHeigh/2)){
		anim_btnAProj1 = 1;
	}else{
		anim_btnAProj1 = 0;
	}
	if(mouse_x > xBtnAProj2-(btnProjWidth/2) and mouse_x < xBtnAProj2+(btnProjWidth/2)
	and mouse_y > yBtnProj2-(btnProjHeigh/2) and mouse_y < yBtnProj2+(btnProjHeigh/2)){
		anim_btnAProj2 = 1;
	}else{
		anim_btnAProj2 = 0;
	}
	if(mouse_x > xBtnAProj3-(btnProjWidth/2) and mouse_x < xBtnAProj3+(btnProjWidth/2)
	and mouse_y > yBtnProj3-(btnProjHeigh/2) and mouse_y < yBtnProj3+(btnProjHeigh/2)){
		anim_btnAProj3 = 1;
	}else{
		anim_btnAProj3 = 0;
	}
	if(mouse_x > xBtnAProj4-(btnProjWidth/2) and mouse_x < xBtnAProj4+(btnProjWidth/2)
	and mouse_y > yBtnProj4-(btnProjHeigh/2) and mouse_y < yBtnProj4+(btnProjHeigh/2)){
		anim_btnAProj4 = 1;
	}else{
		anim_btnAProj4 = 0;
	}
		
}
