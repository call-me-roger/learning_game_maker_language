//Movimentacao - Personagem;

facing = "s"; //começa olhando como se tivesse apertado W
globalvar movimentacao;
movimentacao = true;
global.tempoDormindo = 0;

//Animacao/Screen - Personagem
globalvar dormindo;
dormindo = false;
globalvar proxRoom, anteRoom;
proxRoom = false;
anteRoom = false;

//Mouse

global.mouseXPos = window_mouse_get_x();
global.mouseYPos = window_mouse_get_y();
global.botaoFecharPCWidth = 50;
global.botaoFecharPCHeight = 50;