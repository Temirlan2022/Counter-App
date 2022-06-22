import 'package:flutter/material.dart';
import 'package:tapshyrma1/str_2.dart';

class Tapshyrma1 extends StatefulWidget {
  const Tapshyrma1({Key key}) : super(key: key);

  @override
  _Tapshyrma1State createState() => _Tapshyrma1State();
}

class _Tapshyrma1State extends State<Tapshyrma1> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key key, @required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  // int counter = 0;

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
              child: InkWell(
                child: Text('Сан: $_counter'),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => Str2(count: _counter))));
                },
              ),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
              //Минус кнопка//
              Container(
                child: ElevatedButton(
                  child: const Icon(Icons.remove),
                  onPressed: _decrementCounter,
                ),
              ),
              Container(
                child: ElevatedButton(
                  child: const Icon(Icons.add),
                  onPressed: _incrementCounter,
                ),
              ),
            ]),
          ],
        ),
      ),
    );
  }
}
