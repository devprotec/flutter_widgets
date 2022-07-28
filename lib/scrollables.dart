import 'package:flutter/material.dart';
class Scrollables extends StatelessWidget {
  const Scrollables({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: ScrollablesHomepage(),
    );
  }
}

class ScrollablesHomepage extends StatelessWidget {
  final apha = ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"];
   ScrollablesHomepage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Scrollables Demo")),
      // body: ListView.builder(
      //   itemCount: apha.length,
      //   itemBuilder: (context, index){
      //   return ListTile(
      //     title: Text(apha[index]),
      //     subtitle: Text(index.toString()),
      //   );
      // }),
      
      // body: SingleChildScrollView(child: Center(child: Column(
      //   children: [
      //     Container(height: 100, width: 100, color: Colors.red,),
      //     Container(height: 100, width: 100, color: Colors.purple,),
      //     Container(height: 100, width: 100, color: Colors.green,),
      //     Container(height: 100, width: 100, color: Colors.black,),
      //     Container(height: 100, width: 100, color: Colors.blue,),
      //     Container(height: 100, width: 100, color: Colors.pink,),
      //     Container(height: 100, width: 100, color: Colors.indigo,),
      //     Container(height: 100, width: 100, color: Colors.teal),
      //     Container(height: 100, width: 100, color: Colors.deepPurpleAccent,),
      //     Container(height: 100, width: 100, color: Colors.amber,),
      //     Container(height: 100, width: 100, color: Colors.red,),
      //     Container(height: 100, width: 100, color: Colors.purple,),
      //     Container(height: 100, width: 100, color: Colors.green,),
      //     Container(height: 100, width: 100, color: Colors.black,),
      //     Container(height: 100, width: 100, color: Colors.blue,),
      //     Container(height: 100, width: 100, color: Colors.pink,),
      //     Container(height: 100, width: 100, color: Colors.indigo,),
      //     Container(height: 100, width: 100, color: Colors.teal),
      //     Container(height: 100, width: 100, color: Colors.deepPurpleAccent,),
      //     Container(height: 100, width: 100, color: Colors.amber,),
      //   ],
      // ),),),

      body: GridView.count(
        crossAxisCount: 3,
        crossAxisSpacing: 5.0,
        mainAxisSpacing: 5.0,
      children: [
        Container(height: 100, width: 100, color: Colors.red,),
          Container(height: 100, width: 100, color: Colors.purple,),
          Container(height: 100, width: 100, color: Colors.green,),
          Container(height: 100, width: 100, color: Colors.black,),
          Container(height: 100, width: 100, color: Colors.blue,),
          Container(height: 100, width: 100, color: Colors.pink,),
          Container(height: 100, width: 100, color: Colors.indigo,),
          Container(height: 100, width: 100, color: Colors.teal),
          Container(height: 100, width: 100, color: Colors.deepPurpleAccent,),
          Container(height: 100, width: 100, color: Colors.amber,),
          Container(height: 100, width: 100, color: Colors.red,),
          Container(height: 100, width: 100, color: Colors.purple,),
          Container(height: 100, width: 100, color: Colors.green,),
          Container(height: 100, width: 100, color: Colors.black,),
          Container(height: 100, width: 100, color: Colors.blue,),
          Container(height: 100, width: 100, color: Colors.pink,),
          Container(height: 100, width: 100, color: Colors.indigo,),
          Container(height: 100, width: 100, color: Colors.teal),
          Container(height: 100, width: 100, color: Colors.deepPurpleAccent,),
          Container(height: 100, width: 100, color: Colors.amber,),
      ],
      ),
    );
  }
}