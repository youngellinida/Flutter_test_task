// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

// ignore_for_file: use_function_type_syntax_for_parameters

import 'dart:core';
import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  runApp(
    MaterialApp(
      home: MyApp(),
    ),
  );
}
class MyApp extends StatefulWidget {
  _MyAppState createState() => _MyAppState();
}
class _MyAppState extends State<MyApp> {
Color((math.Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);
  Random random = new Random();
  int index = 0;
  void changeIndex() {
    setState(() => index = random.nextInt(3));
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: RaisedButton(
        onPressed: () => changeIndex(),
        child: Text('Click'),
        color: colors[index],
      ),
    );
  }
  @override  
  Widget build(BuildContext context) {  
    return MaterialApp(  
      home: Scaffold(  
          appBar: AppBar(  
            title: Text('Flutter FlatButton Example'),  
          ),  
          body: Center(child: Column(children: <Widget>[  
            Container(  
              margin: EdgeInsets.all(25),  
              child: FlatButton(  
                child: Text('SignUp', style: TextStyle(fontSize: 20.0),),  
                onPressed: () {},  
              ),  
            ),  
            Container(  
              margin: EdgeInsets.all(25),  
              child: FlatButton(  
                child: Text('LogIn', style: TextStyle(fontSize: 20.0),),  
                color: Colors.blueAccent,  
                textColor: Colors.white,  
                onPressed: () {},  
              ),  
            ),  
          ]  
         ))  
      ),  
    );  
  }  
}  

