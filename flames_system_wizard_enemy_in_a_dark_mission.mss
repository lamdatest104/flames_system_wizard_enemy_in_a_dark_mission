#include "lambda.h"

/*
　文字列は imgSetCurrent で有効になっているイメージに描画される。
*/
main()
{
	var type, stat;
	var txt, txt2;
	var x, y, x2, y2, x3, y3, x4, y4, x6, y6, flag;
	var img, img2, img3, img4, img6, bg;
	var bg1, bg2, bg3, bgx1, bgy1;
	var rand1;
	var time01;
	x = 100;
	y = 100;
	x2 = 300;
	y2 = 300;
	x3 = 400;
	y3 = 200;
	x4 = 200;
	y4 = 300;
	x6 = 200;
	y6 = 200;
	bgx1=100;
	bgy1=60;
	SprSetLevel(12);
	txt = imgCreate(640,20,1,0);
	bg = imgLoad("bg1.png", 0, 0);
	imgSetCurrent(txt);
	txtSetColor(255, 255, 255);
	txtOut("You try jump funny!");
	txtSetPos(500, 0);
	txtOut("ゴール500");
	bg2 = imgLoad("chara3.png", 9, 0);
	imgSetCurrent(bg2);
	imgSetTrans(true, 31, 0, 31);
	imgSetPos(460, 60);
	bg3 = imgLoad("chara3.png", 10, 0);
	imgSetCurrent(bg3);
	imgSetTrans(true, 31, 0, 31);
	imgSetPos(100, 40);
	bg1 = imgLoad("chara1.png", 8, 0);
	imgSetCurrent(bg1);
	imgSetTrans(true, 31, 0, 31);
	imgSetPos(bgx1, bgy1);
	img = imgLoad("hosi.png", 2, 0);
	img2 = imgLoad("star.png", 3, 0);
	img3 = imgLoad("block.png", 4, 0);
	img4 = imgLoad("star.png", 5, 0);
	img6 = imgLoad("block.png", 6, 0);
	imgSetCurrent(img2);
	imgSetTrans(true, 31, 0, 31);
	imgSetRect(0, 0, 50, 50);
	imgSetPos(x2, y2);
	imgSetCurrent(img4);
	imgSetTrans(true, 31, 0, 31);
	imgSetRect(0, 0, 50, 50);
	imgSetPos(x4, y4);
	imgSetCurrent(img3);
	imgSetTrans(true, 31, 0, 31);
	imgSetRect(0, 0, 50, 50);
	imgSetPos(x3, y3);
	imgSetCurrent(img6);
	imgSetTrans(true, 31, 0, 31);
	imgSetRect(0, 0, 50, 50);
	imgSetPos(x6, y6);
	sprRenderScreen();

	imgSetCurrent(img);
	imgSetTrans(true, 31, 0, 31);
	imgSetRect(0, 50, 50, 50);
	sndSetCurrent(sndLoad("flames_system_wizard_enemy_in_a_dark_mission.wav", 3));
	sndPlay(SND_LOOP);
	while(1)
	{
		if(flag == 1)
		{
	bg2 = imgLoad("chara3.png", 9, 0);
	imgSetCurrent(bg2);
	imgSetTrans(true, 31, 0, 31);
	imgSetPos(460, 60);
	bg3 = imgLoad("chara3.png", 10, 0);
	imgSetCurrent(bg3);
	imgSetTrans(true, 31, 0, 31);
	imgSetPos(100, 40);
	bg = imgLoad("bg1.png", 0, 0);
	bg1 = imgLoad("chara1.png", 8, 0);
	imgSetCurrent(bg1);
	rand1 = sysRandom(-20, 20);
	bgx1 += rand1;
	rand1 = sysRandom(-20, 20);
	bgy1 += rand1;
	if((bgx1 < 0)||(bgx1 > 640)){
	bgx1=100;
	}
	if((bgy1 < 0)||(bgy1 > 480)){
	bgy1=60;
	}
	imgSetCurrent(bg1);
	imgSetTrans(true, 31, 0, 31);
	imgSetPos(bgx1, bgy1);
		}	
		inpClear();
		imgSetCurrent(img);
		if(imgIsColl(bg1, 0)==true){
			x = 100;
		}
		if(inpGetState(INP_DOWN) == INP_PUSH)
		{
				imgSetRect(150, 50, 50, 50);
		}
		if(inpGetState(INP_RIGHT) == INP_PUSH)
		{
				imgSetRect(0, 50, 50, 50);
				x += 2;
				imgSetPos(x, y);
		}
		if(inpGetState(INP_LEFT) == INP_PUSH)
		{
				imgSetRect(0, 0, 50, 50);
				x -= 2;
				imgSetPos(x, y);
		}
		if(flag == 0)
		{
		if(inpGetState(INP_ENTER) == INP_PUSH)
		{
				bg = imgLoad("bg2.png", 0, 0);
				bg2 = imgLoad("chara4.png", 0, 0);
				imgSetCurrent(bg2);
				imgSetTrans(true, 31, 0, 31);
				imgSetPos(460, 60);
				bg3 = imgLoad("chara4.png", 0, 0);
				imgSetCurrent(bg3);
				imgSetTrans(true, 31, 0, 31);
				imgSetPos(100, 40);
				bg1 = imgLoad("chara2.png", 8, 0);
				imgSetCurrent(bg1);
				imgSetTrans(true, 31, 0, 31);
				imgSetPos(bgx1, bgy1);
				imgSetCurrent(img);
				y -= 2;
				imgSetRect(100, 50, 50, 50);
				imgSetPos(x, y);
			if(y < 200){
				flag = 1;
			}
		}
		}
		if(inpGetState(INP_ENTER) == INP_NONE)
		{
			if(y < 300){
				flag = 1;
				}
		}
		if(y < 300)
		{
			y += 1;
			imgSetPos(x, y);
		}
		else{
			flag = 0;
		}
		if(keyGetState(KEY_X) == INP_PUSH)
		{
			imgSetRect(50, 50, 50, 50);
			if((x2 < (x + 100)) && (x < (x2 + 100)) && (y2 < (y + 50)) && (y < (y2 + 50))){
			imgSetCurrent(img2);
			y2 = 100;
			imgSetPos(x2, y2);
			imgSetCurrent(img);
			}
			if((x4 < (x + 100)) && (x < (x4 + 100)) && (y4 < (y + 50)) && (y < (y4 + 50))){
			imgSetCurrent(img4);
			y4 = 100;
			imgSetPos(x4, y4);
			imgSetCurrent(img);
			}
		}
		if((x2 < (x + 50)) && (x < (x2 + 50)) && (y2 < (y + 50)) && (y < (y2 + 50))){
			x = 100;
		}
		if((x4 < (x + 50)) && (x < (x4 + 50)) && (y4 < (y + 50)) && (y < (y4 + 50))){
			x = 100;
		}
		if((x3 < (x + 50)) && (x < (x3 + 50)) && (y3 < (y + 50)) && (y < (y3 + 50))){
			y = y3 - 50;
		}
		if((x6 < (x + 50)) && (x < (x6 + 50)) && (y6 < (y + 50)) && (y < (y6 + 50))){
			y = y6 - 50;
		}
		imgSetCurrent(txt);
		imgFillRect(200, 0, 640, 200, 0, 0, 0);
		txtSetPos(200, 0);
		if(x < 500){
		txtOut(x);
		}else{
		txtOut("changed is you");
		}
		txtSetPos(400, 0);
		if(x < 500){
			time01 = time01 + 1;
		}
		txtOut(time01);
		timeWait();
		sprRenderScreen();
	}
}