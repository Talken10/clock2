float angle = 0;
void setup()
{
 size(800,800);
}

void draw()
{
  
  //change position of screen so circle can be at (0,0)
   translate(width/2,height/2);

 //Clock Face
 pushMatrix();
  fill(color(255,255,255));
  circle(0,0,600);
  popMatrix();

 
 //centerCircle 
   pushMatrix();
   fill(0);
   circle(0,0,10);
   popMatrix();
  
  //second hand
    pushMatrix();
    rotate(radians(angle/10));
    fill(0);
    strokeWeight(2);
    line(0, 0, 200, 200);
    popMatrix(); 
    
    angle = angle+1;
    
    //min hand
    pushMatrix();
    rotate(radians(angle/40));
    fill(0);
    strokeWeight(4);
    line(0, 0, 150, 150);
    popMatrix();
    
    //hour hand
    pushMatrix();
    rotate(radians(angle/120));
    fill(0);
    strokeWeight(7);
    line(0, 0, 50, 50);
    popMatrix();  
    
    angle = angle+1;
  
 String[] numbers = {"12","1","2","3","4","5","6","7","8","9","10","11"};
  for (int i = 0; i <12; i = i + 1)
    {
     pushMatrix();
     rotate(radians(i*30));
     translate(0,-260);
     rotate(radians(-i*30));
     fill(0);
     textSize(60);
     textAlign(CENTER,CENTER);
     text(numbers[i],0,0);
     popMatrix();
    }

}
