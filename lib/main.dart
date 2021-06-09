import 'package:flutter/material.dart';
import 'login_screen.dart';
import 'package:flutter/cupertino.dart';
import 'new_password.dart';
import 'changePassword.dart';
import 'login_screen.dart';
import 'home.dart';
void main(){
  runApp(
    MaterialApp(
      home: HomePage(),
    )
  );
}
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:HomeScreen() ,
    );
  }
}
