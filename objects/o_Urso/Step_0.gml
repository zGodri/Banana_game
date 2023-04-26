// mudando a direçã de movimentação

if place_meeting (x+spd, y, o_Piso)
{
	  if direc == 0
	  {
		  direc = 1;
	  }
	  else if direc ==1
	  {
		  direc = 0;
	  }
}
if place_meeting (x, y, o_Parede_invisivel)
{
	  if direc == 0
	  {
		  direc = 1;
	  }
	  else if direc ==1
	  {
		  direc = 0;
	  }
}

// andando para a direita
if direc == 0
{
	image_xscale = 1.5;
	sprite_index = s_Urso_andando;
	x += spd
}
// andando para a esquerda
else if direc == 1
{
	image_xscale = -1.5;
	sprite_index = s_Urso_andando;
	x -= spd;
}

if vida <= 0{
	instance_destroy();
}
