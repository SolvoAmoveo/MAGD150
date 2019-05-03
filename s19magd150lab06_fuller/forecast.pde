class Forecast{
  int temperature = 0;
  int windspeed = 0;
  boolean sunny = false;
  boolean rain = false;
  boolean snow = false;

Forecast(){
    temperature = (int) random(-15, 100);
    windspeed = (int) random(30);
    //1.99 is used here to give a 50/50 chance that the event will happen, as the cast rounds the number down.
    if((int)random(0, 1.99) == 1){
      sunny = true;
    }
    if(sunny != true && (int)random(1.99) == 1){
      rain = true;
    }
    if(sunny != true && (int)random(0, 1.99) == 1 && temperature <= 0){
      snow = true;
    }
  }
}
