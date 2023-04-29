// mudando a direçã de movimentação
if !place_meeting(x, y + 1, o_Piso)
{
	vspd += gravidade
}
if (place_meeting(x, y + vspd, o_Piso))
{
    while (!place_meeting(x, y + sign(vspd), o_Piso))
    {
        y += sign(vspd);
    }
    vspd = 0;
}
y += vspd;
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
	image_xscale = 1;
	sprite_index = s_inimigo_andando;
	x += spd
}
// andando para a esquerda
else if direc == 1
{
	image_xscale = -1;
	sprite_index = s_inimigo_andando;
	x -= spd;
}
hspd = spd


if vida <= 0{
	instance_destroy();
}

