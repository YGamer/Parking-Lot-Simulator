class ControlPanel 
{ 
  String A; 
  ControlPanel(Date d) 
  { 
    A = d.toString(); 
  } 
  void drawTime() 
  { 
    strokeWeight(2); 
    fill(104, 106, 103); 
    rect(875,20,120,20); 
    fill(255); 
    d.addMinute(); 
    String S=d.toString(); 
    text(S,875,30); 
  } 
   
  void dControlPanel() 
  { 
    fill(104, 106, 103); 
    rect(0,0,270,90); 
    fill(255); 
    text("Parking Rates:", 15,25); 
    text("$3.00 / Hour   Monday - Saturday", 15, 50); 
    text("$1.50 / Hour   Sunday",15,80); 
     
    fill(104, 106, 103); 
    rect(370,0,200,90); 
    stroke(0); 
    noFill(); 
    ellipse(420,45,70,70); 
    ellipse(520,45,70,70); 
    fill(#21E82C); 
    triangle(400,20,400,70,450,45); 
    fill(232, 23, 23); 
    rect(505,20,10,50); 
    rect(525,20,10,50); 
    fill(104, 106, 103); 
    rect(600,0,160,90); 
    fill(255); 
    text("Financial Values:",630,25); 
    text("Net Profits:  $"+totalProfit+"0",615,45); 
    text("Customers:  "+customers,615,65); 
    text("Time Elapsed:  "+ellapsed+"hours",615,85); 
   } 
}