// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_playlist/widgets/alert.dart';
import 'package:flutter_playlist/widgets/dismissible.dart';
import 'package:flutter_playlist/widgets/drawer.dart';
import 'package:flutter_playlist/widgets/dropdown.dart';
import 'package:flutter_playlist/widgets/form.dart';
import 'package:flutter_playlist/widgets/rowscolumn.dart';
import 'package:flutter_playlist/widgets/snackbar.dart';

class Bottomnav extends StatefulWidget {
  const Bottomnav({super.key});

  @override
  State<Bottomnav> createState() => _BottomnavState();
}

class _BottomnavState extends State<Bottomnav> {
  int selectedindex = 0;
  PageController pageController = PageController();

  // List<Widget> widgets = {
//   Text('Home'),
//   Text('Search'),
//   Text('Add'),
//   Text('Profile'),
// };
  // @override
  // void initState() {
  //   super.initState();
  //   pageController.addListener(() {
  //     setState(() {
  //       (() {
  //         selectedindex = pageController.page!.round();
  //       });
  //     });
  //   });
  // }

  void onTapped(int index) {
    setState(() {
      selectedindex = index;
    });
    pageController.jumpToPage(index);
  }

  // @override
  // void dispose() {
  //   pageController.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Bottom Nav'),
      // ),
      body: PageView(
        controller: pageController,
        onPageChanged: (index) {
          setState(() {
            selectedindex = index;
          });
        },
        children: [
          DrawerWidget(),
          DropDownWidget(),
          DismissibleWidget(),
          //
          //RowsCols(),
          //SnackbarWidget()
          FormWidget()
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: 'My cart'),
          BottomNavigationBarItem(icon: Icon(Icons.feedback), label: 'Feedback'),
        ],
        currentIndex: selectedindex,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        onTap: onTapped,
      ),
    );
  }
}
