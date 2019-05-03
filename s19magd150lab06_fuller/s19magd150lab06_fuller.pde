//Declaring a new variable of the Forecast class.
Forecast todaysForecast;

//Setting up the size of the window, and the new forecast object to be displayed.
void setup(){
  size(500, 500);
  todaysForecast = new Forecast();
  
  //Declaring local Strings to be used in the println function, by casting the ints from the object to a String primitive.
  String temp = str(todaysForecast.temperature);
  String wind = str(todaysForecast.windspeed);
  println("Today's temperature is: " + temp);
  println("The wind will be blowing at " + wind + " miles per hour today.");
  
  //If the variable for sunny weather in the Forecast object is true or false, then it prints it will be sunny or not 
  if(todaysForecast.sunny){
    println("Today will also be bright and sunny");
  } else {
    println("Today will also be cloudy.");
  }
  
  if(todaysForecast.rain){
    println("There is a good chance of rain showers today.");
  } else {
    println("There is no chance of rain today.");
  }
  
  if(todaysForecast.snow){
    println("There is a good chance of snow today.");
  } else {
    println("There won't be any snow today.");
  }
}

//Writes to the console what the forecast is for the day.
//Not used since it repeatedly outputs to the console instead of once.
//void draw(){
//  
//}
