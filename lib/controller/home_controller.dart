import 'package:get/get.dart';

class HomeController extends GetxController {
  var counter = 1.obs;
  var list1 = [].obs;
  void increment() {
    counter++;

    print(counter);
  }

  void decrement() {
    counter--;
    print(counter);

  }
}