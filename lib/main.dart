import 'package:findcollege/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:findcollege/pages/loading.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => const Loading(),
      '/home': (context) => const Home(),
    },
  ));
}
