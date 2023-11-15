import 'dart:ui';

import 'package:flutter/material.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});
  @override
  State<ForgetPassword> createState() => _log();
}

class _log extends State<ForgetPassword> {
  GlobalKey<FormFieldState> key = GlobalKey<FormFieldState>();

  late TextEditingController firstController;
  late TextEditingController secondController;
  bool isSwitched = false;
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
        elevation: 100,
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_sharp),
          tooltip: 'Menu Icon',
          onPressed: () => {},
        ),
        centerTitle: true,
        title: Text(
          'Forget Password',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(150),
        child: SizedBox(
          height: MediaQuery.sizeOf(context).height,
          width: MediaQuery.sizeOf(context).width,
          child: Column(
            children: [
              Flexible(
                  child: TextFormField(
                decoration: InputDecoration(
                    labelText: "User Name",
                    hintText: 'Email or Phone',
                    prefixIcon: Icon(Icons.email),
                    prefixIconColor: Colors.purple,
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
                maxLength: 30,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Enter Something";
                  } else {
                    return "";
                  }
                },
                controller: firstController,
              )),
              SizedBox(
                width: 1100,
                height: 50,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.redAccent,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    onPressed: () {
                      if (key.currentState!.validate()) {
                        log("Accepted in sthosklasjfklsa;jf");
                      } else {
                        log("Error in sthosklasjfklsa;jf");
                      }
                    },
                    child: const Text("Send Verification Code")),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                alignment: Alignment.center,
                height: 50,
                width: 1150,
                child: RichText(
                  text: TextSpan(
                    style: TextStyle(color: Colors.grey, fontSize: 25),
                    children: [
                      TextSpan(
                        text: 'Password reset link has been sent to',
                      ),
                      TextSpan(
                        text: '\nname123@gmail.com',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                      TextSpan(
                        text: 'registerd in the system',
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void log(String s) {}
}
