class PriceCalculator 
{ 
    int timeStart; 
    int timeEnd; 
    int Sunday; 
    int NotSunday; 
    PriceCalculator(int x, int y, int z) 
    {      
      timeStart = x;      
      timeEnd = y;      
      Sunday = z;      
      NotSunday = timeEnd - timeStart - Sunday;      
      cost = NotSunday*3.0 + Sunday*1.5;      
      totalProfit += cost; 
    } 
} 