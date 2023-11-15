import 'package:first_demo/Verification.dart';
import 'package:flutter/material.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  late TextEditingController firstController;
  late TextEditingController secondController;

  //read about global keys and from state and form widget , validator

  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  GlobalKey<FormState> formTwoKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    firstController = TextEditingController();
    secondController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form validations'),
      ),
      body: Form(
        key: formKey,
        child: Column(
          children: [
            TextFormField(
              controller: firstController,
              validator: (value) {
                if (value!.isEmpty) {
                  return "Feild is empty";
                }
                return null;
              },
            ),
            TextFormField(
              controller: secondController,
              validator: (value) {
                if (value!.contains("a")) {
                  return "type Without a";
                }
                return null;
              },
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Verification(),
                      ));
                },
                child: const Text("check")),
          ],
        ),
      ),
    );
  }
}
