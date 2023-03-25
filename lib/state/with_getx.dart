import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/increase_controller.dart';

class WithGetX extends StatelessWidget {
  const WithGetX({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(IncreaseController());

    return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder<IncreaseController>(builder: (controller) {
              return Text(
                "${controller.count}",
                style: const TextStyle(
                  fontSize: 50,
                ),
              );
            }),
            ElevatedButton(
                onPressed:
                controller.increase,
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