import 'package:flutter/material.dart';

class Str2 extends StatefulWidget {
  final int count;
  Str2({this.count});

  @override
  _Str2State createState() => _Str2State(count);
}

class _Str2State extends State<Str2> {
  int count;
  _Str2State(this.count);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text('Тапшырма 01'),
            centerTitle: true,
            backgroundColor: Color.fromARGB(255, 104, 245, 108)),
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.all(20.0),
                  color: Colors.blue,
                  padding: EdgeInsets.all(30.0),
                  child: Text('Сан: $count'),
                ),
              ]),
        ));
  }
}
