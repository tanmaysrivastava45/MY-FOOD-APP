// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Button'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          
          children: [
              TextButton(
                style: ButtonStyle(
                  padding: WidgetStatePropertyAll(EdgeInsets.all(50)),
                  overlayColor: WidgetStatePropertyAll(Colors.black),
                  elevation: WidgetStateProperty.all(20),
                  backgroundColor:  WidgetStateProperty.all(Colors.yellow)
                ) ,
            
                onPressed: (){}, child: Text(
                  'press', 
                  style: TextStyle(fontSize: 20,color:Colors.black),
                  ),),
                  SizedBox(height: 20),
                  Container(
                    height: 50,
                    width: 300,
                    child: ElevatedButton(
                      style:ButtonStyle(
                      backgroundColor:
                      WidgetStatePropertyAll(Theme.of(context).primaryColor),
                      shape: WidgetStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(40))))
                     , onPressed: ()
                      {
                        print('LIKE');
                      },
                       child: Text(
                        'press me',style: TextStyle(fontSize: 20,color: Colors.white),
                       )),
                  )
          ],
        ),
      ),
    );
  }
}