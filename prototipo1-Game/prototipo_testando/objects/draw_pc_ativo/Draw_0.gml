if(global.usandoPc){

//Mudar mouse
//with (obj_mouse) sprite_index = spr_cursor_pc;

	movimentacao = false;
	draw_sprite(spr_tela_pc,0,400,400);
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
			//with (obj_mouse) sprite_index = spr_mouse;
			btnAtivo = false;
		}
	}else{
		anim_botao = 0;
	}
	
	//Botoes PC
	
	draw_sprite(spr_botoes_pc,anim_btnPC1,xBtnPC1,yBtnPC1);
	draw_sprite(spr_botoes_pc,anim_btnPC2,xBtnPC2,yBtnPC2);
	draw_sprite(spr_botoes_pc,anim_btnPC3,xBtnPC3,yBtnPC3);
	draw_sprite(spr_botoes_pc,anim_btnPC4,xBtnPC4,yBtnPC4);
	draw_text(xBtnPC1-35,yBtnPC1-12,string(btn1Txt));
	draw_text(xBtnPC2-38,yBtnPC2-12,string(btn2Txt));
	draw_text(xBtnPC3-20,yBtnPC3-12,string(btn3Txt));
	draw_text(xBtnPC4-45,yBtnPC4-12,string(btn4Txt));
	
	if(mouse_x > xBtnPC1-(btnPCWidth/2) and mouse_x < xBtnPC1+(btnPCWidth/2)
	and mouse_y > yBtnPC1-(btnPCHeight/2) and mouse_y < yBtnPC1+(btnPCHeight/2)){
		anim_btnPC1 = 1;
		if(mouse_check_button_released(mb_left)){
			btnAtivo = true;
			categoria = btn1Txt;
		}
	}else{
		anim_btnPC1 = 0;
		mouse_cursor = 0;
	}
	if(mouse_x > xBtnPC2-(btnPCWidth/2) and mouse_x < xBtnPC2+(btnPCWidth/2)
	and mouse_y > yBtnPC2-(btnPCHeight/2) and mouse_y < yBtnPC2+(btnPCHeight/2)){
		anim_btnPC2 = 1;
		if(mouse_check_button_released(mb_left)){
			btnAtivo = true;
			categoria = btn2Txt;
		}
	}else{
		anim_btnPC2 = 0;
	}
	if(mouse_x > xBtnPC3-(btnPCWidth/2) and mouse_x < xBtnPC3+(btnPCWidth/2)
	and mouse_y > yBtnPC3-(btnPCHeight/2) and mouse_y < yBtnPC3+(btnPCHeight/2)){
		anim_btnPC3 = 1;
		if(mouse_check_button_released(mb_left)){
			btnAtivo = true;
			categoria = btn3Txt;
		}
	}else{
		anim_btnPC3 = 0;
		mouse_cursor = 0;
	}
	if(mouse_x > xBtnPC4-(btnPCWidth/2) and mouse_x < xBtnPC4+(btnPCWidth/2)
	and mouse_y > yBtnPC4 -(btnPCHeight/2) and mouse_y < yBtnPC4+(btnPCHeight/2)){
		anim_btnPC4 = 1;
		if(mouse_check_button_released(mb_left)){
			btnAtivo = true;
			categoria = btn4Txt;
		}
	}else{
		anim_btnPC4 = 0;
	}
	
	if (btnAtivo){
		if(categoria == btn1Txt){
			draw_text(100,100,string(btn1Txt));
			if(mostrarProj1){
				draw_sprite(spr_projeto,0,xProjeto1,yProjeto1);
				if(sPendente1 == true){
					draw_sprite(spr_botao_recusar,anim_btnProj1,xBtnProj1,yBtnProj1);
				}
				draw_sprite(spr_botao_aceitar,anim_btnAProj1,xBtnAProj1,yBtnProj1);
			}
			if(mostrarProj2){
				draw_sprite(spr_projeto,0,xProjeto2,yProjeto2);
				if(sPendente2 == true){
					draw_sprite(spr_botao_recusar,anim_btnProj2,xBtnProj2,yBtnProj2);
				}
				draw_sprite(spr_botao_aceitar,anim_btnAProj2,xBtnAProj2,yBtnProj2);
			}
			if(mostrarProj3){
				draw_sprite(spr_projeto,0,xProjeto3,yProjeto3);
				if(sPendente3 == true){
					draw_sprite(spr_botao_recusar,anim_btnProj3,xBtnProj3,yBtnProj3);
				}
				draw_sprite(spr_botao_aceitar,anim_btnAProj3,xBtnAProj3,yBtnProj3);
			}
			if(mostrarProj4){
				draw_sprite(spr_projeto,0,xProjeto4,yProjeto4);
				if(sPendente4 == true){
					draw_sprite(spr_botao_recusar,anim_btnProj4,xBtnProj4,yBtnProj4);
				}
				draw_sprite(spr_botao_aceitar,anim_btnAProj4,xBtnAProj4,yBtnProj4);
			}
			
		}
		if(categoria == btn2Txt){
			draw_text(100,100,string(categoria));
			draw_sprite(spr_noticias,0,200,200);
		}
		if(categoria == btn3Txt){
			draw_text(100,100,string(categoria));
			draw_sprite(spr_chat,0,200,200);
		}
		if(categoria == btn4Txt){
			draw_text(100,100,string(categoria));
			draw_sprite(spr_portifolio,0,200,200);
		}
	}
		
}
//Projetos Botoes
	
	//BOTOES ACEITAR
	globalvar id_proj;
	id_proj = 0;
	
	if(mouse_x > xBtnAProj1-(btnProjWidth/2) and mouse_x < xBtnAProj1+(btnProjWidth/2)
	and mouse_y > yBtnProj1-(btnProjHeigh/2) and mouse_y < yBtnProj1+(btnProjHeigh/2)){
		anim_btnAProj1 = 1;
		if(mouse_check_button_released(mb_left)){
			id_proj = 1;
			btnProj_action = aceitarProj;
		}
	}else{
		anim_btnAProj1 = 0;
	}
	if(mouse_x > xBtnAProj2-(btnProjWidth/2) and mouse_x < xBtnAProj2+(btnProjWidth/2)
	and mouse_y > yBtnProj2-(btnProjHeigh/2) and mouse_y < yBtnProj2+(btnProjHeigh/2)){
		anim_btnAProj2 = 1;
		if(mouse_check_button_released(mb_left)){
			id_proj = 2;
			btnProj_action = aceitarProj;
		}
	}else{
		anim_btnAProj2 = 0;
	}
	if(mouse_x > xBtnAProj3-(btnProjWidth/2) and mouse_x < xBtnAProj3+(btnProjWidth/2)
	and mouse_y > yBtnProj3-(btnProjHeigh/2) and mouse_y < yBtnProj3+(btnProjHeigh/2)){
		anim_btnAProj3 = 1;
		if(mouse_check_button_released(mb_left)){
			id_proj = 3;
			btnProj_action = aceitarProj;
		}
	}else{
		anim_btnAProj3 = 0;
	}
	if(mouse_x > xBtnAProj4-(btnProjWidth/2) and mouse_x < xBtnAProj4+(btnProjWidth/2)
	and mouse_y > yBtnProj4-(btnProjHeigh/2) and mouse_y < yBtnProj4+(btnProjHeigh/2)){
		anim_btnAProj4 = 1;
		if(mouse_check_button_released(mb_left)){
			id_proj = 4;
			btnProj_action = aceitarProj;
		} 
	}else{
		anim_btnAProj4 = 0;
	}
//BOTOES RECUSAR
	if(mouse_x > xBtnProj1-(btnProjWidth/2) and mouse_x < xBtnProj1+(btnProjWidth/2)
	and mouse_y > yBtnProj1-(btnProjHeigh/2) and mouse_y < yBtnProj1+(btnProjHeigh/2)){
		anim_btnProj1 = 1;
		if(mouse_check_button_released(mb_left) && statusProj1 != sAtivo){
			id_proj = 1;
			btnProj_action = recusarProj;
		}
	}else{
		anim_btnProj1 = 0;
	}
	if(mouse_x > xBtnProj2-(btnProjWidth/2) and mouse_x < xBtnProj2+(btnProjWidth/2)
	and mouse_y > yBtnProj2-(btnProjHeigh/2) and mouse_y < yBtnProj2+(btnProjHeigh/2)){
		anim_btnProj2 = 1;
		if(mouse_check_button_released(mb_left) && statusProj2 != sAtivo){
			id_proj = 2;
			btnProj_action = recusarProj;
		}
	}else{
		anim_btnProj2 = 0;
	}
	if(mouse_x > xBtnProj3-(btnProjWidth/2) and mouse_x < xBtnProj3+(btnProjWidth/2)
	and mouse_y > yBtnProj3-(btnProjHeigh/2) and mouse_y < yBtnProj3+(btnProjHeigh/2)){
		anim_btnProj3 = 1;
		if(mouse_check_button_released(mb_left) && statusProj3 != sAtivo){
			id_proj = 3;
			btnProj_action = recusarProj;
		}
	}else{
		anim_btnProj3 = 0;
	}
	if(mouse_x > xBtnProj4-(btnProjWidth/2) and mouse_x < xBtnProj4+(btnProjWidth/2)
	and mouse_y > yBtnProj4-(btnProjHeigh/2) and mouse_y < yBtnProj4+(btnProjHeigh/2)){
		anim_btnProj4 = 1;
		if(mouse_check_button_released(mb_left) && statusProj4 != sAtivo){
			id_proj = 4;
			btnProj_action = recusarProj;
		}
	}else{
		anim_btnProj4 = 0;
	}