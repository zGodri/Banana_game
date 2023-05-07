hspd = spd * dir;

if(instance_place(x + hspd, y, o_Piso)){
	dir *= -1;
}
var colisao = place_meeting(x + hspd, y, o_Playerb) or place_meeting(x, y-1, o_Playerb)

if(colisao){
	with(o_Playerb){
		if(!place_meeting(x + other.hspd, y, o_Piso)){
			x += other.hspd;
		}
	}
}
x += hspd;
