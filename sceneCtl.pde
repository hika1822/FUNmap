//エリア遷移用変数
int areaNum = 32;

//エリアの移動を制御する関数
void sceneCtl()
{
    //3階中央エリアから3階左エリアへ
    if((areaNum == 32 && dy >= 249 && dy <= 319 && px <= 100) || (dy >= 4469 - 1670 - height/2 && dy <= 4469 - 1570 - height/2 && px <= 100))
    {
        areaNum = 31;
        px = width/2;//プレイヤーの位置
        py = height;//プレイヤーの位置  
        dx = -1255;  
    }
}