import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mvc/controller/homecontroller.dart';

//convert statfulwedget to StatelessWidget GETBuilder
class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MVC-1'),
        backgroundColor: Colors.pink[100],
        centerTitle: true,
      ),
      body: Center(
        //add GetBuilder<HomeController> (builder: (controller) => Row  GETBuilder
        //you have init  => HomeController()
        child: GetBuilder<HomeController>(
          init: HomeController(),
          builder: (controller) => Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                  onPressed: () {
                    controller.increment();
                  },
                  icon: const Icon(
                    Icons.add,
                    size: 40.0,
                  )),
              const SizedBox(width: 20.0),
              Text(
                '${controller.count}',
                style:
                    const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              const SizedBox(width: 20.0),
              Padding(
                padding: const EdgeInsets.only(bottom: 35.0),
                child: IconButton(
                    onPressed: () {
                      controller.decrement();
                    },
                    icon: const Icon(
                      Icons.minimize,
                      size: 40.0,
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
