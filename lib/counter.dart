class Counter{
late int _counter;

Counter(){
  _counter = 0;
}
//test okay

int get count => _counter;  //getter

void incrementCount(){
  _counter++;
}
}