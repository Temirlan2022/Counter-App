import 'package:flutter/material.dart';
import 'package:tapshyrma1/screens/my_home_page_screen.dart';
import 'package:tapshyrma1/screens/secondary_screen.dart';

void main() => runApp(
      MaterialApp(theme: ThemeData(), initialRoute: 'MyHomePage', routes: {
        'MyHomePage': (context) => MyHomePage(),
        'secondary_screen': (context) => SecondaryScreen(),
      }),
    );
