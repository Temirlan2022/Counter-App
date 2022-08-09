import 'package:flutter/material.dart';
import 'package:tapshyrma1/widgets/custom_container.dart';

class SecondaryScreen extends StatefulWidget {
  final int count;
  SecondaryScreen({this.count});

  @override
  _SecondaryScreenState createState() => _SecondaryScreenState(count);
}

class _SecondaryScreenState extends State<SecondaryScreen> {
  int count;
  _SecondaryScreenState(this.count);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Тапшырма 01'),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 104, 245, 108)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[custom_container(counter: count)],
        ),
      ),
    );
  }
}
