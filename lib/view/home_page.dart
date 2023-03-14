import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled8/controller/home_controller.dart';
import 'package:untitled8/view/details_page.dart';

class HomePage extends StatelessWidget {
   HomePage({Key? key}) : super(key: key);

 HomeController controller = Get.put(HomeController());

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body:  Center(
        child: Column(
          children: [
         Obx(() => Text("Counter: ${controller.counter.value}") ),
            MaterialButton(
              onPressed: () {
                controller.increment();
              },
              child: Text("add"),
            ),
            MaterialButton(
              onPressed: () {
                controller.decrement();
              },
              child: Text("minus"),
            ),
            MaterialButton(
              onPressed: () {
                Get.to(() => DetailsPage());

                Get.toNamed("datails");
              },

              child: Text("go to details"),
            ),
          ],
        ),
      ),
    );
  }
}
