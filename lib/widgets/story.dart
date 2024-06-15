import 'package:flutter/material.dart';

class Story extends StatelessWidget {
  final String name;
  const Story({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Column(
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: const BoxDecoration(
              color: Colors.grey,
              shape: BoxShape.circle,
            ),
          ),
          Text(name, style: const TextStyle(fontWeight: FontWeight.w400),),
        ],
      ),
    );
  }
}