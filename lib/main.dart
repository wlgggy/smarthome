import 'package:flutter/material.dart';
import 'package:smarthome/ui/splash_screen.dart';
import 'package:smarthome/ui/view/home/home_view.dart';
import 'package:smarthome/ui/view/tab_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  bool darkState = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Color.fromARGB(255, 112, 112, 112),
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blueAccent,
          error: darkState ? Colors.black : Colors.white,


        ),
      ),
      home: LayoutView(),
    );
  }
}
