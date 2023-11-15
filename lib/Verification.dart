import 'package:first_demo/reusebale_widget.dart';
import 'package:flutter/material.dart';

class Verification extends StatefulWidget {
  const Verification({super.key});

  @override
  State<Verification> createState() => _VerificationState();
}

class _VerificationState extends State<Verification> {
  late int a;
  late int b;

  @override
  void initState() {
    super.initState();
    a = 10;
    b = 20;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text(a.toString()),
          Text(b.toString()),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const CustomButton()));
              },
              child: const Text("next")),
        ],
      ),
    );
  }
}
