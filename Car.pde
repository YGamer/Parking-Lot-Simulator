class Car 
{ 
  float x; 
  float y; 
  int tSunday; 
  int tS; 
  int tOther; 
  int skytimer; 
  int q,w,e,k; 
  float speed = 10; 
  PriceCalculator Calc; 
   
  Car(PImage o) 
  { 
    x = 0; 
    y = 180; 
    Car0 = o; 
    skytimer = millis(); 
  } 
   
   
  void drawCara() 
  { 
    image(Car0,x,y,40,30); 
    x += speed; 
  } 
   
  void drawCarb() 
  { 
   int r = int(random(500));      
   if(x<480) 
   { 
    image(Car0,x,y,40,30); 
    x+= speed;     
   }      
   if(x == 480) 
    {        
     if(y < 250) 
   {   
    image(Car0,x,y,40,30);          
    y+= speed;    
   }   
 }      
  if(y == 250) 
  { 
    customers++;        
    tS= ellapsed;        
    tSunday = 0;        
    spaces--;               
    while(true) 
    {          
      if (d.today ==6) 
      {            
        if(millis() > skytimer+600) 
        { 
          tSunday++; 
          skytimer = millis();     
        } 
      } 
      q=int(random(3)); 
      w=int(random(2));  
      e=int(random(2)); 
      k=int(random(5)); 
      if(p.sections[q][w].stall[e][k].occupied == false) 
      break; 
    } 
    y++; 
  } 
   if (y == 251) 
   {        
     p.sections[q][w].stall[e][k].setStatus(true,d); 
     p.sections[q][w].stall[e][k].drawStall(); 
     if (r==7) 
     {      
       p.sections[q][w].stall[e][k].setStatus(false,d);  
       p.sections[q][w].stall[e][k].drawStall(); 
       tOther = ellapsed;   
       PriceCalculator Calc = new PriceCalculator(tS,tOther,tSunday); 
       spaces++; 
       y = 880;       
     }  
   }      
   if(x<1000 && y == 880) 
    { 
     image(Car0,x,y,40,30); 
     x += speed;    
    }  
  } 
} 
