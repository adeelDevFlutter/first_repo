import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 100,
        width: 100,
        decoration: const BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadiusDirectional.only(
                topEnd: Radius.circular(21), bottomStart: Radius.circular(21))),
        child: const Text("0"),
      ),
    );
  }
}

class MyInheritedWidget extends InheritedWidget {
  const MyInheritedWidget({super.key, required super.child});

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return oldWidget != null ? true : false;
  }
}
