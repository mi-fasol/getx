import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/controller/dependency_controller.dart';
import 'package:getx/page/get_lazy_put.dart';

import 'get_put.dart';

class DependencyManagePage extends StatelessWidget {
  const DependencyManagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        ElevatedButton(
            onPressed: () {
              Get.to(const GetPut(), binding: BindingsBuilder(() {
                Get.put(DependencyController());
              }));
            },
            child: Text("Get.put")),
        ElevatedButton(
            onPressed: () {
              Get.to(const GetLazyPut(), binding: BindingsBuilder(() {
                Get.lazyPut<DependencyController>(() => DependencyController());
              }));
            },
            // 컨트롤러에 접근하려 할 때 메모리에 올림
            // 접근을 하려 할때 그제서야 intialized
            child: Text("Get.lazyPut")),
        // 바로 intialized
        // 페이지에 접근할 때 데이터에 가공을 하고 해야 할 때
        // 아래 코드는 5초 후에 initialized 해줌
        ElevatedButton(
            onPressed: () {
              Get.to(const GetPut(), binding: BindingsBuilder(() {
                Get.putAsync<DependencyController>(() async {
                  await Future.delayed(Duration(seconds: 5));
                  return DependencyController();
                });
              }));
            },
            child: Text("Get.putAsync")),
        // 위의 세 개는 싱글톤이었음, 한 번 생성하면 그 뒤로 생성 X
        // 버튼을 누를 때마다 인스턴스를 생성해줌
        ElevatedButton(
            onPressed: () {
              Get.to(const GetPut(), binding: BindingsBuilder(() {
                Get.create<DependencyController>(() => DependencyController());
              }));
            },
            child: Text("Get.create"))
      ]),
    ));
  }
}
