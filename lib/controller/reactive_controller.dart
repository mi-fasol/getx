import "package:get/get.dart";

class ReactiveController extends GetxController {
  RxInt count = 0.obs;
  void increase() {
    count++;
  }
}
