import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "learn getX",
      home: Scaffold(
        backgroundColor: Colors.green,
        appBar: AppBar(
          title: const Text("Hey this is getX learning"),
          backgroundColor: Colors.grey,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const EBOne(),
              const EBTwo(),
              const EBThree(),
              const EBFour(),
            ],
          ),
        ),
      ),
    );
  }
}

class EBFour extends StatelessWidget {
  const EBFour({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: const Text("Hello there!"),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.amber),
      ),
    );
  }
}

class EBThree extends StatelessWidget {
  const EBThree({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: const Text("Hello there"),
    );
  }
}

class EBTwo extends StatelessWidget {
  const EBTwo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Get.snackbar(
          "Hello",
          "There",
          backgroundColor: Colors.purple,
        );
      },
      style: ButtonStyle(
        backgroundColor:
            MaterialStateProperty.all(Colors.lightGreenAccent),
      ),
      child: const Text("hello there!"),
    );
  }
}

class EBOne extends StatelessWidget {
  const EBOne({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.redAccent),
      ),
      onPressed: () {
        Get.snackbar(
          "Hello There!",
          "Welcome to GetX!",
          colorText: Colors.white,
          backgroundColor: Colors.orange,
          dismissDirection: SnackDismissDirection.HORIZONTAL,
          snackStyle: SnackStyle.FLOATING,
          snackPosition: SnackPosition.TOP,
        );
      },
      child: const Text(
        "Hey, show getX",
      ),
    );
  }
}
