// import 'package:flutter/material.dart';

// class DropDownWidget extends StatefulWidget {
//   const DropDownWidget({super.key});

//   @override
//   State<DropDownWidget> createState() => _DropDownWidgetState();
// }

// class _DropDownWidgetState extends State<DropDownWidget> {
//   String selectedvalue = 'Deluxe thali';
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Check out about food items'),
//       ),
//       body: Center(
//         child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
//           Container(
//               margin: EdgeInsets.all(10),
//               height: 70,
//               width: MediaQuery.of(context).size.width,
//               child: DropdownButton<String>(
//                   dropdownColor: Colors.grey,
//                   isExpanded: true,
//                   value: selectedvalue,
//                   icon: Icon(Icons.arrow_circle_down_rounded),
//                   onChanged: (String? newvalue) {
//                     setState(() {
//                       selectedvalue = newvalue!;
//                     });
//                   },
//                   items: <String>[
//                     'Deluxe thali',
//                     'Sweet corn Pizza ',
//                     'Hot dog',
//                     'veg Biryani',
//                     'Sushi'
//                   ].map<DropdownMenuItem<String>>((String value) {
//                     return DropdownMenuItem<String>(
//                         value: value, child: Text(value));
//                   }).toList()))
//         ]),
//       ),

//     );
//   }
// }
import 'package:flutter/material.dart';

class DropDownWidget extends StatefulWidget {
  const DropDownWidget({super.key});

  @override
  State<DropDownWidget> createState() => _DropDownWidgetState();
}

class _DropDownWidgetState extends State<DropDownWidget> {
  String selectedValue = 'Deluxe thali';

  // A map of images and descriptions for each food item
  final Map<String, String> foodImages = {
    'Deluxe thali': 'assets/Deluxe thali.jpeg',
    'Sweet corn Pizza': 'assets/sweet corn pizza.jpeg',
    'Hot dog': 'assets/Hot dog.jpeg',
    'veg Biryani': 'assets/veg Biryani.jpeg',
    'Sushi': 'assets/sushi.jpeg',
  };

  final Map<String, String> foodDescriptions = {
    'Deluxe thali': 'A platter of assorted Indian dishes served with rice, roti, sabzi and some sweet.',
    'Sweet corn Pizza': 'A pizza topped with sweet corn and fresh veggies.',
    'Hot dog': 'A grilled sausage served in a sliced bun with toppings.',
    'veg Biryani': 'A fragrant rice dish cooked with vegetables and spices.',
    'Sushi': 'A Japanese dish of vinegared rice accompanied by fish or vegetables.',
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Look at the items you selected'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.all(10),
              height: 70,
              width: MediaQuery.of(context).size.width,
              child: DropdownButton<String>(
                dropdownColor: Colors.grey,
                isExpanded: true,
                value: selectedValue,
                icon: Icon(Icons.arrow_circle_down_rounded),
                onChanged: (String? newValue) {
                  setState(() {
                    selectedValue = newValue!;
                  });
                },
                items: <String>[
                  'Deluxe thali',
                  'Sweet corn Pizza',
                  'Hot dog',
                  'veg Biryani',
                  'Sushi'
                ].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ),
            SizedBox(height: 20),
            // Display the image based on selected value
            Image.asset(
              foodImages[selectedValue]!,
              height: 200,
              width: 200,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 20),
            // Display the description of the selected food item
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                foodDescriptions[selectedValue]!,
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
