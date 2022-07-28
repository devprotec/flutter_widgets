import 'package:flutter/material.dart';

class DynamicBox extends StatefulWidget {
  const DynamicBox({Key? key}) : super(key: key);

  @override
  State<DynamicBox> createState() => _DynamicBoxState();
}

class _DynamicBoxState extends State<DynamicBox> {
  final colors = [
    Colors.red,
    Colors.black,
    Colors.yellow,
    Colors.pink,
    Colors.blue
  ];
  int colorInt = 0;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
       changeColor(); 
      },
      child: Container(
        height: 100,
        width: 100,
        color:  colors[colorInt],
        child: const Center(
          child:  Text(
            "Dynamic",
            style: TextStyle(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
  void changeColor(){
    setState(() {
      colorInt == 4 ? colorInt = 0: colorInt ++;
    });
  }
}
