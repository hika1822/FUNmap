void floor3_kcl()
{
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
    migi_kcl(100, 319, 620);

    //一番手前右の曲がり角の当たり判定
    hidari_kcl(600, 319, 620);
    

}