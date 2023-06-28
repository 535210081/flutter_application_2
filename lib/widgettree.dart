import 'package:flutter_application_2/Reg/log/MainPage.dart';
import 'package:flutter_application_2/auth.dart';
import 'package:flutter_application_2/Reg/log/Login.dart';
import 'package:flutter_application_2/Reg/log/Register.dart';
import 'package:flutter/material.dart';

class WidgetTree extends StatefulWidget {
  const WidgetTree({Key? key}) : super(key: key);

  @override
  State<WidgetTree> createState() => _WidgetTreeState();
}

class _WidgetTreeState extends State<WidgetTree> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: Auth().authStateChanges,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return MainPage();
        } else {
          return const Login();
        }
      },
    );
  }
}