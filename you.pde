import g4p_controls.*;

GStick joystick;
int facing = 6;
int dirX, dirY;
float px, py;
float dx=0;
float dy=0;
float speed;

//オブジェクトの右側の当たり判定を定める関数
void migi_kcl(float wid, float sita, float ue)
{
  if(px <= wid && dy > sita && dy < ue)
  {
    if((px <= wid && dy > sita))
    {
        if((dy - 3) <= sita + 1)
        {
            dy = dy - 3;
        }
    }
    if((px <= wid && dy < ue))
    {
        if((dy + 3) >= ue - 1)
        {
            dy = dy + 3;
        }
    }
    if(px + 3 > wid)
    {
      px = px + 3;
    }
  }
}

//オブジェクトの左側の当たり判定を定める関数
void hidari_kcl(float wid, float sita, float ue)
{
  if(px >= wid && dy > sita && dy < ue)
  {
    if((px >= wid && dy > sita))
    {
        if((dy - 3) <= sita + 1)
        {
            dy = dy - 3;
        }
    }
    if((px >= wid && dy < ue))
    {
        if((dy + 3) >= ue - 1)
        {
            dy = dy + 3;
        }
    }
    if(px - 3 < wid)
    {
      px = px - 3;
    }
  }
}

void playerMake()
{
    // Draw arrow in current position and rotation
    pushMatrix();
    strokeWeight(1);
    translate(px, py);
    rotate(facing * PI/4);
    fill(255, 200, 200);
    stroke(160, 32, 32);
    beginShape();
    vertex(-20, -10);
    vertex(-20, 10);
    vertex(30, 0);
    endShape(CLOSE);
    fill(160, 32, 32);
    noStroke();
    ellipse(-6, 0, 10, 10);
    popMatrix();
}

public void handleStickEvents(GStick stick, GEvent event) 
{ 
  if (joystick == stick) 
  {
    int pos = stick.getPosition();
    if (pos < 0) // Stick is in rest position?
      speed = 0;
    else 
    { // The stick is not at rest 
      facing = pos;
      dirX = stick.getStickX();
      dirY = stick.getStickY();
      speed = 2.5;
    }
  }
}