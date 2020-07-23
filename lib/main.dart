import 'package:flutter/material.dart';
import 'package:bottlesapp/Home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFF1C1F24),
        primaryColor: Color(0xFF1C1F24),
        textTheme: Theme.of(context).textTheme.apply(bodyColor: Color(0xFF1C1F24),),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Home(),
    );
  }
}
