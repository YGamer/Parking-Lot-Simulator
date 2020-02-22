class Street 
{  
  float x; 
  float y; 
  String StN; 
  String StS; 
  Street(float a, float b) 
  { 
    x=a; 
    y=b; 
    StN= "North Street"; 
    StS= "South Street"; 
  } 
   
  void drawSt() 
  { 
    strokeWeight(4); 
    fill(104, 106, 103); 
    stroke(255); 
    rect(x,y+4,1000,65); 
    fill(255); 
    text("North Street",455,160); 
    text("South Street",455,935); 
    fill(104, 106, 103); 
    stroke(104, 106, 103); 
    rect(480,225,45,50); 
    fill(104, 106, 103); 
    stroke(104, 106, 103); 
    rect(480,815,45,50); 
  } 
} 
     
 