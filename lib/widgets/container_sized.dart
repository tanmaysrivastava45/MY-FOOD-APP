//jai shree ganesh
import 'package:flutter/material.dart';

class Container_Sized extends StatelessWidget {
  const Container_Sized({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('Radhe Radhe'),
      ),
       body: Center(
      child: Container(
        //padding: EdgeInsets.all(10),
        margin: EdgeInsets.all(10),
         height: 100,width:100,
        decoration:  BoxDecoration( color: Colors.orange,
        //shape: BoxShape.circle
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [
        BoxShadow(
            blurRadius: 20,
            spreadRadius: 10,
          )
        ]
        ),
        child :  Center(
          child: Container(
            margin: EdgeInsets.all(10),
            color: Colors.red,)
          //Text("Shyam",style:TextStyle(fontSize: 15)),
        )
      //const Center(
      //   child: SizedBox(
      //      height: 50,
      //     width: 50,
      //     child: Text('Shyam')
      //   )
      // )
       )
       )
    );
    
  }
}