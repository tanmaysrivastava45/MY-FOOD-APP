// import 'package:flutter/material.dart';

// class DismissibleWidget extends StatefulWidget {
//   const DismissibleWidget({Key? key}) : super(key: key);

//   @override
//   _DismissibleWidgetState createState() => _DismissibleWidgetState();
// }

// class _DismissibleWidgetState extends State<DismissibleWidget> {
//   List<String> fruits = ['Deluxe thali', 'Hot dog', 'Sushi', 'veg Biryani', 'Sweet corn Pizza'];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('My Cart')),// app bar creation 
//       body: ListView.builder( // in order to make list dynamic we use .builder function
//         itemCount: fruits.length,
//         itemBuilder: (context, index) {
//           final fruit = fruits[index];
//           return Dismissible(  
//               onDismissed: (direction) {                            
//                 if (direction == DismissDirection.startToEnd) {    /// if swiping right
//                   ScaffoldMessenger.of(context).showSnackBar(SnackBar(
//                     content: Text(fruits[index]),
//                     backgroundColor: Colors.red,
//                   ));
//                 } else {
//                   ScaffoldMessenger.of(context).showSnackBar(SnackBar(
//                     content: Text(fruits[index]),
//                     backgroundColor: Colors.green,
//                   ));
//                 }
//               },
//               key: Key(fruit),
//               background: Container(           // for background when swiping
//                 color: Colors.red,
//               ),
//               secondaryBackground: Container(  // for left swiping background
//                 color: Colors.green,
//               ),
//               child: Card(
//                 child: ListTile(
//                   title: Text(fruits[index]),
//                 ),
//               ));
//         },
//       ),
      
//     );
//   }
// }

import 'package:flutter/material.dart';

class DismissibleWidget extends StatefulWidget {
  const DismissibleWidget({Key? key}) : super(key: key);

  @override
  _DismissibleWidgetState createState() => _DismissibleWidgetState();
}

class _DismissibleWidgetState extends State<DismissibleWidget> {
  List<String> fruits = ['Deluxe thali', 'Hot dog', 'Sushi', 'veg Biryani', 'Sweet corn Pizza'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('My Cart')), // App bar creation
      body: Column(
        children: [
          // The ListView with Dismissible items
          Expanded(
            child: ListView.builder(
              itemCount: fruits.length,
              itemBuilder: (context, index) {
                final fruit = fruits[index];
                return Dismissible(
                  onDismissed: (direction) {
                    setState(() {
                      fruits.removeAt(index); // Remove item from list
                    });

                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text('$fruit dismissed'),
                      backgroundColor: direction == DismissDirection.startToEnd ? Colors.red : Colors.green,
                    ));
                  },
                  key: Key(fruit),
                  background: Container(
                    color: Colors.red,
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.only(left: 20),
                    child: Icon(Icons.delete, color: Colors.white),
                  ),
                  secondaryBackground: Container(
                    color: Colors.green,
                    alignment: Alignment.centerRight,
                    padding: EdgeInsets.only(right: 20),
                    child: Icon(Icons.check, color: Colors.white),
                  ),
                  child: Card(
                    child: ListTile(
                      title: Text(fruit),
                    ),
                  ),
                );
              },
            ),
          ),

          // Checkout and Order Button
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              onPressed: () {
                // Add your checkout logic here
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Order placed successfully!'),
                    backgroundColor: Colors.green,
                  ),
                );
              },
              child: Text('Checkout and Order'),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 16, horizontal: 24),
                textStyle: TextStyle(fontSize: 18),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
