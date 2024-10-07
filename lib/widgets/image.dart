// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Doreamon Image')),
      body: Center(
        child: Container(
          height: 300, width: 250,
          decoration: BoxDecoration(
            boxShadow: [BoxShadow(blurRadius: 50,color: const Color.fromARGB(255, 241, 221, 7)),],
            image: DecorationImage(image: NetworkImage('https://m.media-amazon.com/images/M/MV5BMGIzZmQ4YmUtZGQ4NC00OTkyLWE1MGUtMTQ3N2Y3N2E2NWEyXkEyXkFqcGdeQXVyODAzNzAwOTU@._V1_UY1200_CR85,0,630,1200_AL_.jpg',),
             fit: BoxFit.cover,
          ),
         color: Colors.yellow,
         borderRadius: BorderRadius.circular(20)
          ),
        ),
      ),
    );
  }
}