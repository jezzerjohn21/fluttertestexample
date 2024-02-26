import "package:flutter_test/flutter_test.dart";
import "package:fluttertestexample/counter.dart";


main() {
 late Counter counter = Counter(); 


 group('Counter class', () { 

 setUp(()=>
 counter = Counter());
  
  test('Given Counter class, when instantiated, them count = 0', () {
//arrange

//act
    int count = counter.count;
//assert
    expect(count, 0);
  });


  test('Given Counter class is instantiated, when increamentCount is called, then count = 1', (){
//arrange

//act
counter.incrementCount();
//assert
expect(counter.count, 1);

  });


test('given Counter class is instantiated, when icreamentCount is called, then count = -1', (){

//arrange

//act
counter.decrementCount();
//assert
expect(counter.count, -1);
});

});


test('given Counter class is instantiated, when reset is called, then count = 0',(){

counter.reset();


expect(counter.count, 0);


});


}

