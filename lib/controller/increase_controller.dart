import 'package:get/get.dart';

class IncreaseController extends GetxController{
  int count = 0;

  void increase(){
    count++;
    update();
  }
}