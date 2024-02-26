import "package:flutter_test/flutter_test.dart";
import "package:fluttertestexample/counter.dart";

main() {
  late Counter counter;

  setUp(() {
    counter = Counter();
  });

  //INSTANTIATION
  group('Counter class', () {
    test('Given Counter class, when instantiated, them count = 0', () {
      counter = Counter();
      int count = counter.count;

      expect(count, 0);
    });

    //INCREMENT
    group('Increment ', () {
      late Counter counter;

      setUpAll(() {
        //using setUpAll to implement shared resource counter
        counter = Counter();
      });

      test(
        'Given Counter class is instantiated, when incrementCount is called once, then count++',
        () {
          counter.incrementCount();
          expect(counter.count, 1);
        },
      );

      test(
        'Given Counter class is instantiated, when incrementCount is called twice, then count++',
        () {
          counter.incrementCount();
          counter.incrementCount();
          expect(counter.count, 3);
        },
      );

      test(
        'Given Counter class is instantiated, when incrementCount is called twice, then count++',
        () {
          counter.incrementCount();
          counter.incrementCount();
          counter.incrementCount();
          expect(counter.count, 6);
        },
      );

      test(
        'Given Counter class is instantiated, when incrementCount is called twice, then count++',
        () {
          counter.incrementCount();
          counter.incrementCount();
          counter.incrementCount();
          counter.incrementCount();
          expect(counter.count, 10);
        },
      );

      tearDownAll(() {
        counter = Counter();
      });
    });

    //DECREMENT
    group('Decrement', () {
      test(
          'given Counter class is instantiated, when increment then decrementCount is called, then count = 0',
          () {
        counter.decrementCount();

        expect(counter.count, 0);
      });
      test(
          'given Counter class is instantiated, when decrementCount is called directly, then count = 0',
          () {
        counter.decrementCount();

        expect(counter.count, 0);
      });
    });

    //RESET
    test(
        'given Counter class is instantiated,and  when increament is called, and reset is called,  then count = 0',
        () {
      counter.incrementCount();
      counter.reset();

      expect(counter.count, 0);
    });
  });
}
