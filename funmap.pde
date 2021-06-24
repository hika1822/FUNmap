PImage img1, img2;

int areaNum = 3;

/*************************************************
  ～1階～
  １階左スペース:
  食堂:
  ～2階～
  ２階左スペース:
  売店:

  ～3階～
  3階中央スペース:ID=3, 寸法23x205(入口6x6)(エレベーター6x5)(階段13x6)(テーブル4x10)(いか6x6)(わっか15x4)
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
  img1 = loadImage("5801458i.jpg");//3階中央エリア
  img2 = loadImage("menuBar.png");//左上のアイコン

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
  if(areaNum == 3)
  {
      image(img1, dx, (dy - 4469) + height);//表示
      floor3_kcl();//当たり判定
      //マップ画像は動かない
      if(dx != 0)
      {
        dx = 0;
      }

      //プレイやーの位置を計算する
      px = (px + dirX * speed);

      fill(255);
      textSize(50);
      text(dx, 300, 300);
      text(dy, 300, 350);
      text(facing, 300, 400);

      //マップの位置範囲制限
      if(dy <= 0)
      {
        dy = 0;
        //プレイやーを移動可能に
        py = (py + dirY * speed);
      }
      if((py <= 360 && dy < 4469 - height) || (py > 360 && dy > 0))
      {
        py = 360;
        //マップを移動可能に
        dy = (dy - dirY * speed);
      }
      if(dy >= 4469 - height)
      {
        dy = 4469 - height;
        //プレイやーを移動可能に
        py = (py + dirY * speed);
      }

      //プレイヤーの移動範囲制限
      if(py >= height)
      {
        py = height;
      }
      if(py <= 0)
      {
        py = 0;
      }
  }

  /*//マップの位置を計算する
  dx = (dx - dirX * speed);
  dy = (dy - dirY * speed);*/

  playerMake();//プレイヤーの表示

  menuBars();
}

