/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
menu_move = keyboard_check_pressed(vk_down)-keyboard_check_pressed(vk_up);

menu_index += menu_move

if (menu_index < 0) menu_index = opcoes -1;

if (menu_index> opcoes -1) menu_index=0;

last_select = menu_index


if keyboard_check_pressed(vk_enter)
{
switch(menu_index)
{
case 0:
room_goto(Room1)
break;

case 1:
game_end()
break;
}
}





