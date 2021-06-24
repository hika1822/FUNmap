int menujudge = 0;//メニューを表示するかどうかの判別

void menuBars()
{
    //メニューのアイコン表皮
    fill(255, 138, 0);
    circle(60, 60, 80);
    image (img2, 20, 20);

    //メニューのアイコンをクリックすると
    if(mousePressed)
    {
        if(mouseX >= 20 && mouseX <= 100 && mouseY >= 20 && mouseY <= 100)
        {
            menujudge = 1;
        }
    }

    if(menujudge == 1)
    {
        fill(255);
        rect(0, 0, 200, height);
    }
}