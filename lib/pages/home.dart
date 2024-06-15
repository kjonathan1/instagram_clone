import 'package:flutter/material.dart';
import '../widgets/story.dart';


class Home extends StatelessWidget {
  
  Home({super.key});
  final List<String> friends = ['Peter', 'Jhon', 'Counsel', 'Divine', 'Calistus', 'Tunubu', 'Ane', 'Christian', 'Mary', 'Joseph', 'Jacob', 'Noaga', 'Tenga'];
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        elevation: 5,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Instagram', style: TextStyle(color: Colors.black),),
            Row(
              children: [
                Icon(Icons.add),
                Padding(
                  padding: EdgeInsets.all(24),
                  child: Icon(Icons.search),
                ),
                Icon(Icons.share),
              ],
            )
          ],
        )
      ),
      body: Column(
          children: [
            // Stories
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SizedBox(
                height: 80,
                width: double.infinity,
                child: ListView( 
                  scrollDirection: Axis.horizontal,
                  children:  [
                    for(String element in friends)
                      Story(name: element),
                ],),
              ),
            ),
            

            //posts
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(5),
                child: ListView(
                  children: [
                    _listViewBuilder('Ivan'),
                    _listViewBuilder('Moussa'),
                    _listViewBuilder('Alias_NG'),
                    _listViewBuilder('David'),
                    _listViewBuilder('National_Hub'),
                    _listViewBuilder('Isma'),
                  ]),
              )
                
              )
          ],
                  
      ));
  }


  Widget _listViewBuilder(String name){
    return  Padding(
            padding: const EdgeInsets.all(15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                         Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Story(name: name),
                          const Icon(Icons.menu)
                        ],
                      ),
                      //post card
                      const SizedBox(
                        height: 270,
                        child: Card(child: Center(child: Text('Post'),)),
                      ), 
                      // post bottom icons
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:  [
                          Row(children: [
                            Icon(Icons.favorite),
                            Padding(padding: EdgeInsets.all(10), child: Icon(Icons.message)),
                            Icon(Icons.share),
                          ],),
                          Icon(Icons.bookmark)
                        ],
                      ),
                      RichText(
                        text: const TextSpan(
                          children: [
                            TextSpan(text: 'Liked by '),
                            TextSpan(text: 'Ivan', style: TextStyle(fontWeight: FontWeight.bold, ) ),
                            TextSpan(text: ' and '),
                            TextSpan(text: 'others', style: TextStyle(fontWeight: FontWeight.bold) ),
                            //TextSpan(text: 'Lorum text, Lorum text, Lorum text, Lorum text, Lorum text, Lorum text. '),                 
                          ]
                        ),
                      ),
                      RichText(
                        text: const TextSpan(text: 'Lorum text, Lorum text, Lorum text, Lorum text, Lorum text, Lorum text. '),
                      ),
                        ],
                      )
                    );
  }
}