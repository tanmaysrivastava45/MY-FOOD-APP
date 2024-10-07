import 'package:flutter/material.dart';

class RowsCols extends StatelessWidget {
  const RowsCols({super.key});

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(title: Text('Rows and column') ),
      body: Container(
        height: h, //h
        width: w,  //w
        color:Colors.yellow ,
        // child: Wrap( //Row
        //  // mainAxisAlignment:MainAxisAlignment.start,
        //  // crossAxisAlignment: CrossAxisAlignment.center,
        //  direction: Axis.vertical,
        //  alignment: WrapAlignment.center,
        //   children: [
        //   Container(height: 50,width: 50,color: Colors.orange,),
        //   Container(height: 50,width: 50,color: Colors.red,),
        //   Container(height: 50,width: 50,color: Colors.purple,),
        //   Container(height: 50,width: 50,color: Colors.black,),
        // ],)
        child: 
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          Container(height: 50,width: 50,color: Colors.orange,),
           Container(height: 50,width: 50,color: Colors.red,),
          Container(height: 50,width: 50,color: Colors.purple,),
          Container(height: 50,width: 50,color: Colors.black,),
        ],)
      ),
    );
  }
} 