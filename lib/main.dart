import 'package:flutter/material.dart';
import 'package:flutter_task/pdf_converter.dart';
import 'package:flutter_task/webview.dart';

import 'homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentIndex = 0;

  final Screen = [
    MyHomePage(),
    PdfPage(),
  ];

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Screen[_currentIndex],
          bottomNavigationBar: BottomNavigationBar(
            //showUnselectedLabels: false,
            onTap: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            currentIndex: _currentIndex,
            // ignore: prefer_const_literals_to_create_immutables
            items: [
              // ignore: prefer_const_constructors
              BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: 'Serach Keyword',
                backgroundColor: Colors.blue,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.picture_as_pdf_sharp),
                label: 'Pdf Converter',
                backgroundColor: Colors.red,
              ),
            ],
          )),
    );
  }
}


//MaterialApp(
//    debugShowCheckedModeBanner: false,
//   title: 'Flutter Demo',
//   theme: ThemeData(
//     primarySwatch: Colors.blue,
//   ),
//   home: const MyHomePage(),
// )