import 'package:get/get.dart';

//you have put update with GETBuilder
class HomeController extends GetxController {
  //you have obs with GetX and Rxint
  RxInt count = 0.obs;

  void increment() {
    count++;
    // update();
  }

  void decrement() {
    count--;
    // update();
  }
}
