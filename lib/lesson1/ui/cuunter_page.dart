import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_project/lesson1/controller/counter_controller.dart';

import 'first_page.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final CounterController controller = Get.put(CounterController());
    return Scaffold(
      appBar: AppBar(
        title: const Text("GetX Counter Page"),
      ),
      body: Center(
        child: Column(
          children: [
            Obx(
              () => Text(
                "${controller.count}",
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
              ),
            ),
            TextButton(
                onPressed: () {
                  controller.deccrement();
                },
                child: const Text("Decrement")),
            IconButton(
                onPressed: () {
                  Get.to(const FirstPage());
                },
                icon: const Icon(Icons.next_plan_outlined))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.increment();
        },
      ),
    );
  }
}
