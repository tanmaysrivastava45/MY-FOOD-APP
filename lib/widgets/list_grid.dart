// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class ListGrid extends StatefulWidget {
  const ListGrid({super.key});

  @override
  State<ListGrid> createState() => _ListGridState();
}

class _ListGridState extends State<ListGrid> {
  List<String> fruits = ['orange', 'apple', 'mango', 'banana'];
  Map fruits_person = {
    'fruits': ['orange', 'apple', 'mango', 'banana'],
    'names': ['karan', 'tanmay', 'shivam', 'rudra']
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('List and Grid'),
          backgroundColor: Colors.red,
          elevation: 0,
        ),
        body: Container(
          // child: ListView.builder(
          //     itemCount: fruits.length,
          //     itemBuilder: (context, index) {
          //       return Card(
          //         child: ListTile(
          //           onTap: () {
          //             print((fruits_person['fruits'][index]));
          //           },
          //           leading: Icon(Icons.account_tree),
          //           title: Text(fruits_person['fruits'][index]),
          //           subtitle: Text(fruits_person['names'][index]),

          //         ),
          //       );
          //     }),

          child: GridView(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
            childAspectRatio: 2/3),
            children: [
              Card(
                child: Center(child: Text('Orange')),
              ),
              Card(
                child: Center(child: Text('Orange')),
              ),
              Card(
                child: Center(child: Text('Orange')),
              ),
              Card(
                child: Center(child: Text('Orange')),
              ),
              Card(
                child: Center(child: Text('Orange')),
              ),
              Card(
                child: Center(child: Text('Orange')),
              ),
              Card(
                child: Center(child: Text('Orange')),
              ),

            ],
          ),

          // child: GridView.builder(
          //     itemCount: fruits.length,
          //     gridDelegate:
          //         SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
          //     itemBuilder: (context, index) {
          //       return Card(
          //         child: Center(
          //           child: Text(fruits[index]),
          //         ),
          //       );
          //     }),
        ));
  }
}
