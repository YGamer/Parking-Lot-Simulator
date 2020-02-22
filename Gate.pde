class Gate 
{ 
   
  float X; 
  float Y; 
  String gate; 
  String function; 
  double cost; 
  
  Gate(boolean open,float x, float y, String g, String f) 
  { 
    X=x; 
    Y=y; 
    gate = g; 
    function = f; 
    if(open==true) 
    openGate(); 
    if (open==false) 
    closeGate(); 
  } 
 
  void openGate() 
  {  
    line(480,250,520,220); 
    line(480,850,520,820); 
    fill(74, 229, 51); 
    stroke(0); 
    fill(74, 229, 51); 
    ellipse(480,250,6,6); 
    ellipse(480,850,6,6); 
    fill(255); 
    rect(369,250,100,20); 
    rect(369,835,100,20); 
    fill(98, 87, 232); 
    rect(369,230,100,20); 
    rect(369,815,100,20); 
    fill(255); 
    text("ENTRANCE",385,245); 
    text("EXIT", 385,830); 
    fill(0); 
    text("Spaces = "+spaces, 385,265); 
     
    text(function,385,850); 
     
 } 
 void closeGate() 
 { 
   line(X+115,Y+30,X+150,Y+5); 
   fill(74, 229, 51); 
   stroke(0); 
   text("No More Space", X, Y); 
    ellipse(X+115,Y+30,6,6); 
    fill(255); 
    rect(369,Y+185,100,20); 
    fill(#6257E8); 
    rect(369,Y+205,100,20); 
    fill(0); 
    text("NO ENTRY",385,245); 
    text("EXIT", 385,830); 
    fill(0); 
    fill(219, 29, 29); 
    text("No More Space", 385,265); 
     
 } 
} 