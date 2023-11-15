import 'package:flutter/material.dart';

class ScreenSix extends StatelessWidget {
  const ScreenSix({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController feildController = TextEditingController();
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              child: TextFormField(
                decoration: InputDecoration(
                  constraints: const BoxConstraints(
                    minHeight: 300,
                    maxHeight: 300,
                    maxWidth: 300,
                    minWidth: 100,
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                ),
                controller: feildController,
              ),
            ),
            ElevatedButton(
                onPressed: () {}, child: const Text("click me to get value"))
          ],
        ),
      ),
    );
  }
}
