//4階右エリアの当たり判定
void floor4R_kcl()
{
    float wid = 1755 - width;
    float hei = 2658 - height/2;

    displayLimX(810);
    displayLimY(2658);

    //左壁の当たり判定
    pyobj_kcl(0, 100, height - (2658 - 2511), (2658 - 2260) - height/2);

    //真ん中の壁の当たり判定
    pyobj_kcl(200, 320, height - (2658 - 2511), (2658 - 2260) - height/2);

    //椅子の当たり判定
    pydxobj_kcl(-84, 611 - 110, height - (2658 - 2465), (2658 - 2260) - height/2);

    //会議室の当たり判定
    pyobj_kcl(670 - 110, 700 - 110, height - (2658 - 2511), (2658 - 2245) - height/2);

    //右側の教室の当たり判定
    pydobj_kcl(200, 700 - 110, hei - 2220, 130);

    //左側の教室の当たり判定
    pydobj_kcl(0, 100, hei - 2220, 130);
}

//4階中央エリアの当たり判定
void floor4M_kcl()
{
    displayLimY(4469);

    //階段の当たり判定
    obj_kcl(274, 404, 4469 - 4106 - height/2, 4469 - 3905 - height/2);

    //エレベーターの当たり判定
    obj_kcl(253, 436, 4469 - 3798 - height/2, 4469 - 1671 - height/2);

    //エレベーターのとなりの柵の当たり判定
    obj_kcl(153, 253, 4469 - 3798 - height/2, 4469 - 1671 - height/2);
    obj_kcl(436, 548, 4469 - 3798 - height/2, 4469 - 1671 - height/2);

    //階段のとなりの柵の当たり判定
    obj_kcl(100, 274, 4469 - 4106 - height/2, 4469 - 3905 - height/2);
    obj_kcl(404, 600, 4469 - 4106 - height/2, 4469 - 3905 - height/2);

    //一番手前右の壁の当たり判定
    obj_kcl(600, 700, 4469 - 4469 - height/2, 4469 - 3866 - height/2);

    //一番手前左の壁の当たり判定
    obj_kcl(0, 100, 4469 - 4469 - height/2, 4469 - 3905 - height/2);

    //真ん中の左の壁の当たり判定
    obj_kcl(0, 100, 4469 - 3798 - height/2, 4469 - 1671 - height/2);

    //真ん中の右の壁の当たり判定
    obj_kcl(600, 700, 4469 - 3798 - height/2, 4469 - 1671 - height/2);

    //最奥の右の壁の当たり判定
    obj_kcl(600, 700, 4469 - 1566 - height/2, 4469 - 0 - height/2);

    //最奥の左の壁の当たり判定
    obj_kcl(0, 100, 4469 - 1566 - height/2, 4469 - 0 - height/2);

    //最奥の左の壁の当たり判定
    obj_kcl(152, 547, 4469 - 1566 - height/2, 4469 - 0 - height/2);
}

//4階左エリアの当たり判定
void floor4L_kcl()
{
    float hei = 3644 - height/2;


    displayLimX(1955);
    displayLimY(3644);

    //研究室横の机の当たり判定
    dxdxobj_kcl(-960, -1038, hei - 3117, hei - 1663);

    //真ん中の空間の当たり判定
    dxdxobj_kcl(-422, -900, 52, 2223);

    //左下空間の当たり判定
    dxpxobj_kcl(345, -900, 700, 1);

    //真ん中の空間の当たり判定
    dxpxdobj_kcl(195, -363, 52, 0);

    //一番上の空間の当たり判定
    dxpxdobj_kcl(195, -900, 2322, 0);

    //一番左側の空間の当たり判定
    pxpxobj_kcl(0, 195, 700, 0);

    //下の研究室の当たり判定
    dydyobj_kcl(-700 - (1471 - 1055), 518, hei - 3011, hei - 1648);

    //研究室と廊下の間のやつの当たり判定
    dydyobj_kcl(-700 - (1255 - 1255), 600, hei - 1599, 2217);

    //右端の壁の当たり判定
    pyobj_kcl(610, 700, height, 2217);

    //薄い壁の当たり判定
    dydyobj_kcl(-700 - (1304 - 1055), width - (1755 - 1521), hei - 3242, hei - 3212);

    //奥の方の右端の壁の当たり判定
    pydobj_kcl(600, 700, 2328, 0);

    //上の研究室の当たり判定
    pydxxobj_kcl(-700 - (1316 - 1055), width - (1755 - 1619) - 100, hei - 960, 0);
    dydyobj_kcl(-700 - (1316 - 1055), width - (1755 - 1619) - 100, hei - 960, hei - 940);

    //円卓の当たり判定
    pypyobj_kcl(-946, 510, 581, 393);

}
