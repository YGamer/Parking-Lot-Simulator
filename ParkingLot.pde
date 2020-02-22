class ParkingLot 
  { 
    ParkingStallSection [][] sections; 
    Gate enter; 
    Gate exit; 
    boolean gateo; 
     
    ParkingLot() 
    { 
      sections= new ParkingStallSection[3][2]; 
  
    } 
  void drawLot() 
   { 
     stroke(255); 
     fill(104, 106, 103); 
     rect(20,270,970,540); 
      
      
      
     float sectionX = 60; 
     float sectionY = 320; 
     for (int i=0;i<3;i++) 
     { 
       sectionX=60; 
       for(int j=0;j<2;j++) 
       { 
         sections[i][j] = new ParkingStallSection(sectionX,sectionY); 
         sections[i][j].drawSection(); 
         sectionX+=500; 
       } 
       sectionY+=160; 
     } 
     if(spaces!=0) 
     gateo = true; 
     if(spaces==0) 
     gateo = false; 
      
     enter = new Gate(gateo,385,265,"Entrance","Spaces" +spaces); 
     exit = new Gate(true,368,630,"Exit","Fee = $"+cost+"0"); 
 
   } 
  } 
 
 