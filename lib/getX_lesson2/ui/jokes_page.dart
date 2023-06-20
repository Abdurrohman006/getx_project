import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_project/getX_lesson2/controller/jokes_controller.dart';

class JokesPage extends StatelessWidget {
  const JokesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(JokesController());
    return Scaffold(
      appBar: AppBar(
        title: const Text("Jokes Page"),
      ),
      body: Obx(
        () {
          if (controller.isloading.value) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return ListView.builder(
              itemCount: controller.jokes.length ?? 1,
              itemBuilder: (context, index) => ListTile(
                title: Text(controller.jokes[index].setup),
                subtitle: Text(controller.jokes[index].punchline),
              ),
            );
          }
        },
      ),
    );
  }
}
