// jai shree ganesh
import 'package:flutter/material.dart';
import 'package:flutter_playlist/widgets/alert.dart';
import 'package:flutter_playlist/widgets/bottomnav.dart';
import 'package:flutter_playlist/widgets/bottomsheet.dart';
import 'package:flutter_playlist/widgets/button.dart';
import 'package:flutter_playlist/widgets/container_sized.dart';
import 'package:flutter_playlist/widgets/dismissible.dart';
import 'package:flutter_playlist/widgets/drawer.dart';
import 'package:flutter_playlist/widgets/dropdown.dart';
import 'package:flutter_playlist/widgets/form.dart';
import 'package:flutter_playlist/widgets/image.dart';
import 'package:flutter_playlist/widgets/list_grid.dart';
import 'package:flutter_playlist/widgets/rowscolumn.dart';
import 'package:flutter_playlist/widgets/snackbar.dart';
import 'package:flutter_playlist/widgets/stack.dart';
import 'package:flutter_playlist/widgets/tabbar.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme:ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.deepOrange
      ),
      home: Bottomnav(),
    );
  }
}
