PImage img1, img2, img3, img4, img5, img6, img7, img8,
        img9;

/*************************************************
  ～1階～
  １階左スペース:
  食堂:
  ～2階～
  ２階左スペース:
  売店:

  ～3階～
  3階中央スペース:ID=32, 寸法23x205(入口6x6)(エレベーター6x5)(階段13x6)(テーブル4x10)(いか6x6)(わっか15x4)
  3階左スペース:ID=31
  3階右スペース:ID=33
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
  img2 = loadImage("menuBar.png");//左上のアイコン
  img3 = loadImage("floor3.1.jpg");//3階中央エリア
  img4 = loadImage("floor3.2.jpg");//3階中央エリア
  img5 = loadImage("floor3.3.jpg");//3階中央エリア
  img6 = loadImage("floor3.4.jpg");//3階中央エリア
  img7 = loadImage("floor3.5.jpg");//3階中央エリア
  img8 = loadImage("floor3.6.jpg");//3階中央エリア
  img9 = loadImage("3階左.png");

  //ライブラリ
  float ss = 80;
  joystick = new GStick(this, width-ss, height-ss, ss, ss);
  // Change from the default X4 mode (4 position) to the
  // 8 position mode.
  joystick.setMode(G4P.X8);
  strokeWeight(1.5f);
  px = width/2;//プレイヤーの位置
  py = height;//プレイヤーの位置
}

public void draw()
{
  
  //3階中央エリアに入ったら
  if(areaNum == 32)
  {
      //マップ画像の表示
      image(img3, dx, (dy - 4469) + height);
      image(img4, dx, (dy - 3769) + height);
      image(img5, dx, (dy - 3069) + height);
      image(img6, dx, (dy - 2369) + height);
      image(img7, dx, (dy - 1669) + height);
      image(img8, dx, (dy - 969) + height);

      floor3M_kcl();//当たり判定
  }
  //3階左エリアに入ったら
  if(areaNum == 31)
  {
      background(0);
      //マップ画像の表示
      image(img9, dx, (dy - 3758) + height);

      floor3L_kcl();//当たり判定
  }

  /*//マップの位置を計算する
  dx = (dx - dirX * speed);
  dy = (dy - dirY * speed);*/

  playerMake();//プレイヤーの表示

  menuBars();//メニューアイコンの表示

  sceneCtl();//シーン移動制御

        fill(255);
      textSize(50);
      text("dx =" + dx, 300, 300);
      text("dy =" + dy, 300, 350);
      text("px =" + px, 300, 400);
      text("py =" + py, 300, 450);
      text(facing, 300, 400);
}

