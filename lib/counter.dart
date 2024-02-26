class Counter {
  late int _counter;
  late int _x;

  Counter() {
    _counter = 0;
    _x = 1;
  }
//test okay

  int get count => _counter; //getter

  void incrementCount() {
    _counter = _counter + _x++;
  }

  void decrementCount() {
    _counter > 0 ? _counter-- : 0;
  }

  void reset() {
    _counter = 0;
  }
}
