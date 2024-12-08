

import 'package:flutter/material.dart';
import 'package:flutter_application_25/home.dart';
// import 'package:flutter_application_25/practical.dart';


void main() => runApp(MyAapp());


class MyAapp extends StatelessWidget {
  const MyAapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
    home: homescreen(),);
  }
}

