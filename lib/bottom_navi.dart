import 'package:flutter/material.dart';

class BottomNavi extends StatelessWidget {
  const BottomNavi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: BottomNaviStateful(),
    );
  }
}

class BottomNaviStateful extends StatefulWidget {
  const BottomNaviStateful({Key? key}) : super(key: key);

  @override
  State<BottomNaviStateful> createState() => _BottomNaviStatefulState();
}

class _BottomNaviStatefulState extends State<BottomNaviStateful> {
  int currentIndex = 0;
  static const style = TextStyle(fontWeight: FontWeight.bold, fontSize: 30);
  static const List<Widget> _options = [
    Text("Home", style: style,),
    Text("Business", style: style,),
    Text("School", style: style,),
    Text("Settings", style: style,)
  ];

  void _onTap(int index){
    setState(() {
      currentIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Bottom Navigation Bar Demo")),
      body: Center(child:_options[currentIndex]),
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
            color: Colors.red,
            size: 30,
          ),
          label: "Home",
        ),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.business,
              color: Colors.blue,
              size: 30,
            ),
            label: "Bussiness"),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.school,
              color: Colors.purple,
              size: 30,
            ),
            label: "School"),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
              color: Colors.black,
              size: 30,
            ),
            label: "Settings"),
      ],
      currentIndex: currentIndex,
      onTap: _onTap ,
      selectedItemColor: Colors.blue,
      ),
    );
  }
}
