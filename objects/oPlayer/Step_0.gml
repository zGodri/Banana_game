direita = keyboard_check(ord("D"))
esquerda = keyboard_check(ord("A"))
cima = keyboard_check_pressed(vk_space)
#region GRAVIDADE
if !place_meeting(x, y + 1, oPiso)
{
	vspd += gravidade
}
else
{
	if cima
	{
		vspd = -3.3;
	}
}
#endregion
hspd = (direita - esquerda) * spd;
#region COLISÃO
if place_meeting(x + hspd, y, oPiso)
{
	while !place_meeting(x + sign(hspd), y, oPiso)
	{
		x += sign(hspd);
	}
	
	hspd = 0;
}

x += hspd;

if place_meeting(x, y + vspd, oPiso)
{
	while !place_meeting(x, y + sign(vspd), oPiso)
	{
		y += sign(vspd);
	}
	
	vspd = 0;
}

y += vspd;

#endregion