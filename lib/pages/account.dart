import 'package:flutter/material.dart';
import '/widgets/story.dart';
import '/widgets/grids.dart';


class Account extends StatelessWidget {
  Account({super.key});
  final List<String> friends = ['Peter', 'Jhon', 'Counsel', 'Divine', 'Calistus', 'Tunubu', 'Ane', 'Christian', 'Mary', 'Joseph', 'Jacob', 'Noaga', 'Tenga'];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //user prefered picture
            Row(children: [
              Container(
                width: 80,
                height: 80,
                margin: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Colors.grey[400],
                  shape: BoxShape.circle,
                ),
              ),
              const Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly ,
                  children: [
                    Column(children: [
                      Text('200', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                      Text('Posts'),
                    ]),
                    Column(children: [
                      Text('200', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                      Text('Followers'),
                    ]),
                    Column(children: [
                      Text('200', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                      Text('Following'),
                    ]),
                  ],
                ),
              ),
            ],),
            // user info
            const Padding(
              padding:  EdgeInsets.only(left: 20, bottom: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Text('Ivan', style: TextStyle(fontWeight: FontWeight.bold)),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 2),
                  child: Text('I creat apps and games')
                ),
                Text('ivan@gmail.com', style: TextStyle(color: Colors.blue)),
              ],)),
            // user button
             Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
               child: Row(children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(2),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.grey),
                    ),
                    child: const Center(child: Text('Edit Profile')),
                    ))
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(2),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.grey),
                    ),
                    child: const Center(child: Text('Edit Profile')),
                    ))
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(2),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.grey),
                    ),
                    child: const Center(child: Text('Edit Profile')),
                    ))
                ),
               ],),
             ),
            //user stories
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
              child: SizedBox(
                height: 80,
                child: ListView( 
                  scrollDirection: Axis.horizontal,
                  children: [
                    for(String element in friends)
                      Story(name: element),
                    
                  ],
                ),
              ),
            ),
            //user tab
            const TabBar(
              tabs: [
                Tab(
                  child: Icon(Icons.grid_3x3_outlined),
                ),
                Tab(
                  child: Icon(Icons.video_call_outlined),
                ),
                Tab(
                  child: Icon(Icons.shop),
                ),
                Tab(
                  child: Icon(Icons.person),
                ),
              ],
            ),

            Expanded(
              child: TabBarView(children: [
                MyGrids(customColor:  Colors.pink[100]!),
                MyGrids(customColor:  Colors.blue[100]!),
                MyGrids(customColor:  Colors.purple[100]!),
                MyGrids(customColor:  Colors.orange[100]!),
              ],),
            )
          ],
        ),
      ),
    );
  }
}