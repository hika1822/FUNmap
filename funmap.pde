PImage img1;

int areaNum = 3;

/*************************************************
  ～1階～
  １階左スペース:
  食堂:
  ～2階～
  ２階左スペース:
  売店:

  ～3階～
  3階中央スペース:23x205(入口6x6)(エレベーター6x5)(階段13x6)(テーブル4x10)(いか6x6)(わっか15x4)
  コンピュータ教室１:
  コンピュータ教室２:
  コンピュータ教室３:
  情報ライブラリ:
  体育館:
  ミュージアム:
  エレクトロニクス工房:
  
  大講義室:

  ～4階～
  4階左エリア:
  4階右エリア:
  C&D教室:
  事務局:

  ～5階～
  講堂:
  小講義室:
  中講義室:

 *************************************************/

public void setup()
{
  size(700, 700);
  img1 = loadImage("5801458i.jpg");
  float ss = 80;
  joystick = new GStick(this, width-ss, height-ss, ss, ss);
  // Change from the default X4 mode (4 position) to the
  // 8 position mode.
  joystick.setMode(G4P.X8);
  strokeWeight(1.5f);
  px = width/2;
  py = height/2;
}

public void draw()
{
  if(areaNum == 3)
  {
      image(img1, dx, (dy - 4469) + height/2);
  }

  // Calculate current position of arrow
  dx = (dx - dirX * speed);
  dy = (dy - dirY * speed);

  //playerMake();
}

