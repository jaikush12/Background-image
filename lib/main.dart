import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool click = true;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: (click == false) ? Colors.amber : Colors.white,
        appBar: AppBar(
          title: Text('BG Color')
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Center(
          child: ElevatedButton(
            onPressed: (){
              setState((){
                click = !click ;
            });
            },
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Icon(Icons.change_circle, size: 60,),
              ),
            ),
          ),
        ),
      )
    );
  } 
}