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
