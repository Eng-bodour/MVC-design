import 'package:get/get.dart';

//you have put update with GETBuilder
class HomeController extends GetxController {
  int count = 0;

  void increment() {
    count++;
    update();
  }

  void decrement() {
    count--;
    update();
  }
}
