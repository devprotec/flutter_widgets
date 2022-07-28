import 'package:flutter/material.dart';

class ColumnRow extends StatelessWidget {
  const ColumnRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Column and Row Demo"),
        ),
        body: SizedBox.expand(
          child: Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
             crossAxisAlignment: CrossAxisAlignment.stretch,

            children: [
            Container(
              height: 100,
              width: 50,
              color: Colors.red,
            ),
            Container(
              height: 100,
              width: 50,
              color: Colors.black,
            ),
            Container(
              height: 100,
              width: 50,
              color: Colors.blue,
            ),
          ]),
          // child: Column(
          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //   crossAxisAlignment: CrossAxisAlignment.start,

          //   children: [
          //   Container(
          //     height: 100,
          //     width: 50,
          //     color: Colors.red,
          //   ),
          //   Container(
          //     height: 100,
          //     width: 50,
          //     color: Colors.black,
          //   ),
          //   Container(
          //     height: 100,
          //     width: 50,
          //     color: Colors.blue,
          //   ),
          // ]),
        ),
      ),
    );
  }
}
