import 'package:flutter/material.dart';
import 'package:x_toast/x_toast.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
          child: RaisedButton(
            child: Text('show toast'),
            onPressed: () {
              XToast.showToast('hello x',
                  duration: 'short', textColor: 0xffffffff, textSize: 20.0);
            },
          ),
        ),
      ),
    );
  }
}
