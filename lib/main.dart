import 'package:flutter/material.dart';
import 'package:flutter_widgets/bottom_navi.dart';
import 'package:flutter_widgets/containerClass.dart';
import 'package:flutter_widgets/dynamic_box.dart';
import 'package:flutter_widgets/text.dart';
import 'package:flutter_widgets/textforms.dart';

import 'column_row.dart';


void main() {
  runApp(const  TextForms());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Flutter Demo"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 100, width: 100, color: Colors.blue,
                // ignore: prefer_const_constructors
                child: Center(
                    child: const Text(
                  "Static",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                )),
              ),const SizedBox(height: 40,),
              const DynamicBox()
            ],
          ),
        ),
      ),
    );
  }
}
