import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_2/Reg/log/MainPage.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent));

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        //primaryColor: Color.fromARGB(237, 109, 25, 219),
        scaffoldBackgroundColor: Color.fromARGB(0, 80, 47, 199),
      ),
      home: MainPage(),
    );
  }
}
