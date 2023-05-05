// script personagem movendo
function scr_personagem_movendo(){
	direita = keyboard_check(ord("D"))
	esquerda = keyboard_check(ord("A"))
	cima = keyboard_check_pressed(ord("W"))
	andar = (direita or esquerda);
	hspd = (direita - esquerda) * spd;
	#region GRAVIDADE
	if !place_meeting(x, y + 1, o_Piso)
	{
		vspd += gravidade
	}
	else
	{
		if cima
		{
			vspd = -2.5;
		}
	}
	#endregion
	#region COLISÃO
	// Colisão com o chão na horizontal
	if place_meeting(x + hspd, y, o_Piso)
	{
		while !place_meeting(x + sign(hspd), y, o_Piso)
		{
			x += sign(hspd);
		}
	
		hspd = 0;
	}

	x += hspd;
	// Colisão com o chão na vertical
	if place_meeting(x, y + vspd, o_Piso)
	{
		while !place_meeting(x, y + sign(vspd), o_Piso)
		{
			y += sign(vspd);
		}
	
		vspd = 0;
	}

	y += vspd;

	#endregion
	#region MUDAR DIREÇÃO
	if hspd > 0 //Checa se a velocidade horizontal do player é maior que 0 ou seja se ele está se mexendo para a direita
	{
	       image_xscale = 1; //Muda a escala horizontal do player para 1 positivo, ou seja para a direita
	}
	if hspd < 0 //Checa se a velocidade horizontal do player é menor que 0 ou seja se ele está se mexendo para a esquerda
	{
	      image_xscale = -1; //Muda a escala horizontal do player para 1 negativo, ou seja para a esquerda
	}
	#endregion
	#region ANIMAÇÕES

	if andar
	{
		sprite_index = s_Playerb_andando;
	}
	else
	{
		sprite_index = s_Playerb
	}

	#endregion
	if keyboard_check_pressed(vk_space)
	{
		image_index = 0;
		estado = scr_personagem_atacando;
		if image_xscale = 1
		{
		instance_create_layer(x + 20, y - 8,"Instances", o_hitbox)
		}
		else if image_xscale = -1
		{
		instance_create_layer(x - 20, y - 8,"Instances", o_hitbox)
		}
	}
}
function scr_personagem_atacando()
{
	sprite_index = s_Player_atacando;
if scr_fim_da_animacao()
{
	estado = scr_personagem_movendo;
}
}
