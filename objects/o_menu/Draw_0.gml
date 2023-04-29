/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
var i = 0;

repeat (opcoes){


draw_set_color(c_white)

if (menu_index == i)draw_set_colour(c_yellow);

draw_text(menu_x  ,menu_y + opcao_h * i ,opcao[i])

i++;
}