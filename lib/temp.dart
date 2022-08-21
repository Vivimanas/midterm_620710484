class temp{
  int celtofah(double input){
    return ((9/5)*input + 32).round();
  }
  int celtokel(double input){
    return (input + 273.15).round();
  }
int fahtocel(double input){
  return (5/9 *(input - 32)).round();
}
  int fahtokel(double input){
    return ((input + 459.67) / 1.8).round();
  }
  int keltocel(double input){
    return (input - 273.15).round();
  }
  int keltofah(double input){
    return ((input * 1.8) - 459.67).round();
  }
}