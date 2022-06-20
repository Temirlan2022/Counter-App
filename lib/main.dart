import 'package:flutter/material.dart';
import 'package:tapshyrma1/tapshyrma_1.dart';
import 'package:tapshyrma1/str_2.dart';

void main() => runApp(MaterialApp(
    theme: ThemeData(),
      initialRoute: 'Tapshyrma1' ,
      routes:{
        'Tapshyrma1': (context) => Tapshyrma1(),
        'Str2': (context) => Str2(),
      } 
),);
