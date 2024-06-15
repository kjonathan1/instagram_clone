import 'package:flutter/material.dart';
import '/widgets/grids.dart';

class Shop extends StatelessWidget {
  const Shop({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Container(
            padding: const EdgeInsets.all(5),
            color: Colors.grey[300],
            child:  Row(
              children: [
                Icon(Icons.search, color: Colors.grey[100],),
                Text('Search', style: TextStyle(color: Colors.grey[100],),),
              ],
            )
          ),
        ),
      ),
      body: MyGrids(customColor:  Colors.purple[100]!),
    );
  }

}