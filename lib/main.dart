import 'package:flutter/material.dart';
import 'package:travelapp/Baga.dart';
import 'package:travelapp/HomeScreen.dart';
import 'Kuta.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'The ACM Manipal App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DestPage(),


    );
  }
}