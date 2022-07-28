import 'package:flutter/material.dart';

class ContainerClass extends StatelessWidget {
  const ContainerClass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ContainerHomepage(),
    );
  }
}

class ContainerHomepage extends StatelessWidget {
  const ContainerHomepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MediaQueryData _mediaData = MediaQuery.of(context);
    //_mediaData.
    return Scaffold(
      appBar: AppBar(
        title: const Text("Container Demo"),
      ),
      body: Center(
          child: Container(
        color: Colors.blue,
        height: _mediaData.size.height*0.4,
        width: 300,
        alignment: Alignment.center,
        padding: const EdgeInsets.all(20),
        margin: const EdgeInsets.all(50),
        child: Container(
          height: 100,
          width: 100,
          decoration: const BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.vertical(top: Radius.circular(40)),
              boxShadow:  [BoxShadow(blurRadius: 10, spreadRadius: 10)]),
        ),
      )),
    );
  }
}
