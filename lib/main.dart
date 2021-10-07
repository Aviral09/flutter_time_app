// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_weather/pages/choose_location.dart';
import 'package:flutter_weather/pages/loading.dart';
import 'package:flutter_weather/pages/home.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/home',
  routes: {
    '/': (content) => Loading(),
    '/home': (content) => Home(),
    '/location': (content) => ChooseLocation(),
  },
));

