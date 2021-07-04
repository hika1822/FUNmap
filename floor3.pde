//3階中央エリアの当たり判定をまとめた関数
void floor3M_kcl()
{

    displayLimY(4469);

    //マップ画像は動かない
      if(dx != 0)
      {
        dx = 0;
      }

    //入口の当たり判定
    if((facing == 5 || facing == 6 || facing == 7) && (py > height - 129 && py < height - 124 && px > 280 && px < 410))
    {
        py = height - 124;
    }
    if((facing == 1 || facing == 2 || facing == 3) && (py > height - 129 && py < height - 124 && px > 280 && px < 410))
    {
        py = height - 129;
    }

    if((facing == 3 || facing == 4 || facing == 5) && (py > height - 129 && py < height - 84 && px > 280 && px < 285))
    {
        px = 285;
    }
    if((facing == 7 || facing == 0 || facing == 1) && (py > height - 129 && py < height - 124 && px > 280 && px < 410))
    {
        px = 280;
    }

    //一番手前左の曲がり角の当たり判定
    obj_kcl(0, 100, 319, 4469 - 1670 - height/2);
    obj_kcl(0, 100, -1, 249);

    //一番億の壁
    obj_kcl(0, 100, 4469 - 1570 - height/2, 4469 - height/2);

    //一番手前右の曲がり角の当たり判定
    obj_kcl(600, 700, 319, 620);
    obj_kcl(600, 700, -1, 249);

    //一番億の右の曲がり角の当たり判定
    obj_kcl(600, 700, 4469 - 3450 - height/2, 4469 - 1670 - height/2);
    obj_kcl(600, 700, 4469 - 1570 - height/2, 4469 - height/2);

    //階段１
    obj_kcl(280, 410, 4469 - 3840 - height/2, 4469 - 3480 - height/2);

    //エレベーター1
    obj_kcl(300, 400, 4469 - 3400 - height/2, 4469 - 3290 - height/2);

    //いす１
    obj_kcl(300, 400, 4469 - 3080 - height/2, 1280);
    
    //謎のオブジェクト
    obj_kcl(300, 400, 4469 - 2770 - height/2, 4469 - 2450 - height/2);

    //いか
    obj_kcl(280, 420, 4469 - 2100 - height/2, 4469 - 1950 - height/2);

    //階段
    obj_kcl(280, 420, 4469 - 1600 - height/2, 4469 - 1250 - height/2);

    //机
    obj_kcl(300, 400, 4469 - 1080 - height/2, 4469 - 850 - height/2);

    //机
    obj_kcl(300, 400, 4469 - 720 - height/2, 4469 - 480 - height/2);
}

//3階左エリアの当たり判定
void floor3L_kcl()
{
    float wid = 1755 - width;
    float hei = 3758 - height/2;

    displayLimX(1755);
    displayLimY(3758);

    text(height - (3758 - 3630), 100, 100);

    //右端の壁の当たり判定
    pyobj_kcl(610, 700, height - (3758 - 3630), 1880);

    //階段の当たり判定
    pypyobj_kcl(-700, width - (1755 - 1540), height - (3758 - 3650), height - (3758 - 3640));

    //円卓の当たり判定
    pydxobj_kcl(-895, width - (1755 - 1540), height - (3758 - 3590), hei - 3340);

    //情報ライブラリーの当たり判定
    pypyobj_kcl(-(1755 - 1055), width - (1755 - 1755), height - (3758 - 3758), height - (3758 - 3710));

    //透明な薄いの当たり判定
    dydyobj_kcl(-750, width - (1755 - 1575), hei - 3250, hei - 3235);

    //机１の当たり判定
    dxdxobj_kcl(-750, -850, hei - 3120, hei - 3015);

    //机２の当たり判定
    dxdxobj_kcl(-750, -850, hei - 2960, hei - 2850);

    //机3の当たり判定
    dxdxobj_kcl(-750, -850, hei - 2790, hei - 2680);

    //机4の当たり判定
    dxdxobj_kcl(-750, -850, hei - 2560, hei - 2450);

    //机5の当たり判定
    dxdxobj_kcl(-750, -850, hei - 2390, hei - 2270);

    //机6の当たり判定
    dxdxobj_kcl(-750, -850, hei - 2245, hei - 2175);

    //机7の当たり判定
    dxdxobj_kcl(-750, -850, hei - 2080, hei - 1960);

    //机8の当たり判定
    dxdxobj_kcl(-750, -850, hei - 1910, hei - 1800);

    

}