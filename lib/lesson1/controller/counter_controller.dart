import 'package:get/get.dart';

class CounterController extends GetxController {
  var count = 0.obs;

  void increment() {
    count++;
    print("counter qoshildi: $count");
  }

  void deccrement() {
    count--;
    print("counter ayrildi: $count");
  }
}
