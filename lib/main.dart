
import 'package:flutter/material.dart';
import 'package:world_timeapp/pages/home.dart';
import 'package:world_timeapp/pages/loading.dart';
import 'package:world_timeapp/pages/choose_location.dart';

void main() => runApp(MaterialApp(
      initialRoute: '/',
      routes:
      {
        '/' : (context) => Loading(),
        '/home' : (context) => Home(),
        '/location' : (context) => ChooseLocation(),
      },
    ));
