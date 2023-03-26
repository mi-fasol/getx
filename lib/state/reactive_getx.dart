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
        GetBuilder<ReactiveController>(builder: (controller) {
          return Obx(() => Text(
                "${controller.count}",
                style: const TextStyle(
                  fontSize: 50,
                ),
              ));
        }),
        ElevatedButton(
            onPressed: controller.increase,
            child: const Text(
              "+",
              style: TextStyle(
                fontSize: 30,
              ),
            ))
      ],
    ));
  }
}
