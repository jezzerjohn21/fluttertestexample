import "package:flutter_test/flutter_test.dart";
import "package:fluttertestexample/counter.dart";

main() {
  test('Given Counter class, when instantiated, them count = 0', () {
//arrange
    Counter counter;
//act
    counter = Counter();
    int count = counter.count;
//assert
    expect(count, 0);
  });



  test('Given Counter class is instantiated, when increamentCount is called, then count =1', (){
//arrange
Counter counter = Counter(); 
//act
counter.incrementCount();
//assert
expect(counter.count, 1);

  });
}
