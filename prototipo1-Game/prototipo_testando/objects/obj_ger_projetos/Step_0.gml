//Gerenciamento de Projetos

if(btnProj_action == aceitarProj){
	if(id_proj == 1){
		statusProj1 = sAtivo;
		show_message("projeto 1 ativo");
	}else
	if(id_proj == 2){
		statusProj2 = sAtivo;
		show_message("projeto 2 ativo");
	}else
	if(id_proj == 3){
		statusProj3 = sAtivo;
		show_message("projeto 3 ativo");
	}else
	if(id_proj == 4){
		statusProj4 = sAtivo;
		show_message("projeto 4 ativo");
	}
}else
if(excluirProj){
	if(id_proj == 1){
		mostrarProj1 = false;
	}
	if(id_proj == 2){
		mostrarProj2 = false;
	}
	if(id_proj == 3){
		mostrarProj3 = false;
	}
	if(id_proj == 4){
		mostrarProj4 = false;
	}
	excluirProj = false;
}