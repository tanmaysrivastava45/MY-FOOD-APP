import 'package:flutter/material.dart';

class TabbarWidget extends StatelessWidget {
  const TabbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Whatsapp'),
          bottom: const TabBar(
           // indicatorWeight: 10,
            tabs: [
            Tab(
              icon: Icon(Icons.chat),
              text: 'CHATS',
            ),
            Tab(
              icon: Icon(Icons.chat_bubble_sharp ),
              text: 'STATUS',
            ),
            Tab(
              icon: Icon(Icons.call),
              text: 'CALLS',
            ),
          ]),
        ),
        body: TabBarView(children: [
          Container(child: const Center(
             child: Text('CHATS',style: TextStyle(fontSize: 30)),
          )),
          Container(child: const Center(
           child:  Text('STATUS',style: TextStyle(fontSize: 30)),
          )),
          Container(child: const Center(
            child: Text('CALLS',style: TextStyle(fontSize: 30)),
          )),
        ]),
      ),
    );
  }
}