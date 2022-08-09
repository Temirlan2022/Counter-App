import 'package:flutter/material.dart';

class custom_container extends StatelessWidget {
  const custom_container({
    Key key,
    @required int counter,
    this.onTap
  })  : _counter = counter,
        super(key: key);

  final int _counter;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20.0),
      color: Colors.blue,
      padding: const EdgeInsets.all(30.0),
      child: Text('Сан: $_counter'),
    );
  }
}
