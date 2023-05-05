/// @description Inserir descrição aqui
var _sprl = sprite_get_width(sVida) * 2;
var _buffer = 10;
var _vidas = o_Playerb.vida;

for (var i = 0; i < _vidas; i++)
{
	draw_sprite_ext(sVida, 0, 20 + (_sprl * i) + (_buffer * i), 20, 2, 2, 0, c_white, 1);
}
draw_set_font(ft_gui);
draw_set_color(c_yellow);
draw_text(35, 75, "Moedas: " + string(moeda))
