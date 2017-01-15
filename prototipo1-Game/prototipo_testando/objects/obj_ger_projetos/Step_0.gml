//Gerenciamento de Projetos

if(btnProj_action == aceitarProj){
	if(id_proj == 1){
		statusProj1 = sAtivo;
		sPendente1 = false;
		btnProj_action = resetAction;
	}
	if(id_proj == 2){
		statusProj2 = sAtivo;
		sPendente2 = false;
		btnProj_action = resetAction;
	}
	if(id_proj == 3){
		statusProj3 = sAtivo;
		sPendente3 = false;
		btnProj_action = resetAction;
	}
	if(id_proj == 4){
		statusProj4 = sAtivo;
		sPendente4 = false;
		btnProj_action = resetAction;
	}
}else
if(btnProj_action == recusarProj){
	if(id_proj == 1 && statusProj1 != sAtivo){
		statusProj1 = sRecusado;
		sPendente1 = false;
		mostrarProj1 = false;
		btnProj_action = resetAction;
	}else
	if(id_proj == 2 && statusProj2 != sAtivo){
		statusProj2 = sRecusado;
		sPendente2 = false;
		mostrarProj2 = false;
		btnProj_action = resetAction;
	}else
	if(id_proj == 3 && statusProj3 != sAtivo){
		statusProj3 = sRecusado;
		sPendente3 = false;
		mostrarProj3 = false;
		btnProj_action = resetAction;
	}else
	if(id_proj == 4 && statusProj4 != sAtivo){
		statusProj4 = sRecusado;
		sPendente4 = false;
		mostrarProj4 = false;
		btnProj_action = resetAction;
	}
}