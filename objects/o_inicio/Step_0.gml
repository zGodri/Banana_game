/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
// Verifica se o botão esquerdo do mouse foi pressionado
if(mouse_check_button_pressed(mb_left)) {
    // Verifica se o cursor do mouse está dentro da área do objeto
    if(point_in_rectangle(mouse_x, mouse_y, x - sprite_width/2, y - sprite_height/2, x + sprite_width/2, y + sprite_height/2)) {
        // Muda para a próxima sala (ou inicia o jogo)
        room_goto(Room1); // ou game_start(); 
    }
}