import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/home_controller.dart';

class DetailsPage extends StatelessWidget {
   DetailsPage({Key? key}) : super(key: key);

   HomeController controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Details Page'),
      ),
      body:  Center(
        child: Column(
          children: [
            Text(controller.counter.toString()),
            Text('Details Page'),
            MaterialButton(onPressed: () {
              Get.back();

            }, child: Text("back"),
            )
          ],
        ),
      ),
      );
  }
}
