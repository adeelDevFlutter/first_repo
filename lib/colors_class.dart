import 'package:flutter/material.dart';

class ColorsClass extends StatelessWidget {
  const ColorsClass({super.key, required this.color});

  final Color color;

  @override
  build(BuildContext context) {
    return Center(
        child: Container(
      height: 100,
      width: 100,
      color: color,
    ));
  }
}
