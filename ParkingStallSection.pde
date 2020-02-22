class ParkingStallSection 
 { 
   ParkingStall [][] stall; 
   float X; 
   float Y; 
  
   ParkingStallSection(float x,float y) 
   { 
     
    X= x; 
    Y= y; 
   } 
  void drawSection() 
  {  
    stall = new ParkingStall[2][5]; 
    float positionX=X; 
    float positionY=Y; 
    float sWidth = 80; 
    float sHeight = 60; 
    for(int i=0;i<2;i++) 
    { 
      positionX=X; 
      for(int j=0;j<5;j++) 
      { 
        stall[i][j] = new ParkingStall (positionX,positionY,sWidth,sHeight); 
        stall[i][j].drawStall(); 
        positionX+=80; 
      } 
      positionY+=60; 
    } 
   
  } 
} 