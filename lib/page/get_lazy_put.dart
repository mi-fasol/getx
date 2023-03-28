import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/controller/dependency_controller.dart';

class GetLazyPut extends StatelessWidget {
  const GetLazyPut({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: ElevatedButton(
          child: Text(""),
          onPressed: () {
            Get.find<DependencyController>().increase;
          },
        ));
  }
}
