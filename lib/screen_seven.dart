import 'dart:developer';

import 'package:flutter/material.dart';

class FormExample extends StatefulWidget {
  const FormExample({super.key});

  @override
  State<FormExample> createState() => _FormExampleState();
}

class _FormExampleState extends State<FormExample> {
  GlobalKey<FormFieldState> key = GlobalKey<FormFieldState>();

  late TextEditingController firstController;
  late TextEditingController secondController;

  @override
  void initState() {
    super.initState();
    firstController = TextEditingController();
    secondController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.sizeOf(context).height,
        width: MediaQuery.sizeOf(context).width,
        child: Column(
          children: [
            Flexible(
                child: TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Enter Something";
                } else {
                  return "";
                }
              },
              controller: firstController,
            )),
            Flexible(
                child: TextFormField(
              key: key,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Your field is empty";
                }
                return null;
              },
              controller: secondController,
            )),
            ElevatedButton(
                onPressed: () {
                  if (key.currentState!.validate()) {
                    log("Accepted in sthosklasjfklsa;jf");
                  } else {
                    log("Error in sthosklasjfklsa;jf");
                  }
                },
                child: const Text("Done"))
          ],
        ),
      ),
    );
  }
}
