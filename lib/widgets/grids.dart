import 'package:flutter/material.dart';

class MyGrids extends StatelessWidget {
  final Color customColor;
  const MyGrids({super.key, required this.customColor});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3), 
      itemCount: 20,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(5),
          child: Container(
            width: 50,
            height: 50,
            color: customColor,
          ),
        );
      });
  }
}