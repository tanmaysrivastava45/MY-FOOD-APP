// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class BottomsheetWidget extends StatelessWidget {
  const BottomsheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bottom Sheet'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Show bottomsheet'),
          onPressed: () {
            showModalBottomSheet(
                context: context,
                builder: (context) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ListTile(
                        title: Text('Orange'),
                        subtitle: Text('Ram'),
                      ),
                      ListTile(
                        title: Text('Orange'),
                        subtitle: Text('Ram'),
                      ),
                      ListTile(
                        title: Text('Orange'),
                        subtitle: Text('Ram'),
                      ),
                      ListTile(
                        title: Text('Orange'),
                        subtitle: Text('Ram'),
                      ),
                      ListTile(
                        title: Text('Orange'),
                        subtitle: Text('Ram'),
                      ),
                    ],
                  );
                });
          },
        ),
      ),
    );
  }
}
