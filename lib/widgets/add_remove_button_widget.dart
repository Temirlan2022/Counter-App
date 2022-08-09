import 'package:flutter/material.dart';

class AddRemoveButtonWidget extends StatelessWidget {
  const AddRemoveButtonWidget({Key key, @required this.onPressed}) : super(key: key);
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(child: Icon(Icons.remove), onPressed: onPressed);
  }
}
