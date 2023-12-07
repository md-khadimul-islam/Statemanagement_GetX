import 'package:get/get.dart';

class CounterController extends GetxController {
  RxInt counter = 1.obs;
  RxDouble opacity = .4.obs;

  IncrementCounter () {
    counter.value++;
    // print(counter.value);
  }

  IncrementOpacity (double value) {
    opacity.value = value;
  }
}