import 'package:flutter/material.dart';
import 'package:tapshyrma1/screens/secondary_screen.dart';
import 'package:tapshyrma1/widgets/add_remove_button_widget.dart';

import '../widgets/custom_container.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key key,
  }) : super(key: key);
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    if (_counter < 1) {
      return;
    }
    setState(() {
      _counter--;
    });
  }

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
          children: <Widget>[
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: ((context) => SecondaryScreen(count: _counter)),
                  ),
                );
              },
              child: custom_container(
                counter: _counter,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                AddRemoveButtonWidget(onPressed: _decrementCounter),
                AddRemoveButtonWidget(onPressed: _incrementCounter)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
