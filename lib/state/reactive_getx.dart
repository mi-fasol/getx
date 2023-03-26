import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/controller/reactive_controller.dart';

class ReactiveGetX extends StatelessWidget {
  const ReactiveGetX({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ReactiveController());
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Obx(() => Text(
              "${controller.count.value}",
              style: const TextStyle(
                fontSize: 50,
              ),
            )),
        ElevatedButton(
            onPressed: () {
              controller.increase();
            },
            child: const Text(
              "+",
              style: TextStyle(
                fontSize: 30,
              ),
            )),
        ElevatedButton(
            onPressed: () {
              controller.makeIt();
            },
            child: const Text(
              "make it 0",
              style: TextStyle(
                fontSize: 30,
              ),
            ))
      ],
    ));
  }
}
