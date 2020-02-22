class Date{ 
  final String [] days = {"Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"}; 
  int today; 
  int hour; 
  int hour1; 
  int minute; 
  boolean before_noon;  
    
   
  Date (int d, int h, int m, boolean beforeNoon) 
  { 
   if(d>6) 
   { 
     today = d%7; 
   } 
   else 
   { 
     today=d; 
   } 
    
     
    if (h>12) 
    { 
      hour = h%12; 
    } 
    else 
    { 
      hour=h; 
    } 
     
    if (m>59) 
    { 
      minute=m%60; 
      h++; 
    } 
    else 
    { 
      minute = m; 
    } 
    if(beforeNoon == false) 
    { 
      before_noon = false; 
    } 
    else 
    { 
      before_noon = true; 
    } 
    if (today==6) 
     
      rate = 1.5; 
     
    if (today!=6) 
     
      rate = 3.0; 
     
  } 
  Date(Date d) 
  { 
    today = d.today; 
    hour = d.hour; 
    minute = d.minute; 
    before_noon = d.before_noon; 
  } 
   
  void addHour() 
  { 
    hour = hour+1; 
    ellapsed++; 
    if(hour>12) 
    { 
      hour = hour%12; 
    } 
  } 
   
  void addDay() 
  { 
    today = today+1; 
    if (today>6) 
    { 
      today = today%7; 
    } 
    if(today == 6) 
    rate = 1.5; 
    if(today!=6) 
    rate=3.0; 
  } 

 
  void addsHour() 
  { 
    hour1 = hour1 + 1; 
    if(hour1>24) 
    { 
      hour1 = hour1%24; 
    } 
    if(hour1 == 12) 
    { 
      before_noon = false; 
    } 
    if(hour1==24) 
    { 
      before_noon = true; 
      addDay(); 
    } 
  } 
   
  void addMinute() 
  { 
    minute=minute+1; 
    if(minute>59) 
    { 
      minute = minute%60; 
      addsHour(); 
      addHour(); 
    } 
  } 
   
  
    String toString() 
    { 
  String date = days[today]; 
   
  if (hour<10) 
  { 
  date += " 0" + hour; 
  } 
  else 
  date += " " + hour; 
   
   
  if(minute < 10) 
  date += ":0" + minute; 
  else 
  date += ":" + minute; 
   
  if(before_noon) 
  date += "AM"; 
  else 
  date += "PM"; 
  return date; 
    } 
    boolean equal (Date date) 
    { 
      if((today == date.today) && (hour == date.hour) && (minute == date.minute) && (before_noon == true)) 
      { 
        return true; 
      } 
      else  
      { 
        return false; 
      } 
    } 
} 
 