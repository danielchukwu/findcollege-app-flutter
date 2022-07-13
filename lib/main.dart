import 'dart:js';

import 'package:findcollege/pages/collegeslistscreen.dart';
import 'package:findcollege/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:findcollege/pages/loading.dart';

void main() {
  runApp(MaterialApp(
    // initialRoute: '/colleges',
    home: CollegesListScreen(), // Remove this and uncomment the rest when done
    // routes: {
    //   '/': (context) => const Loading(),
    //   '/home': (context) => const Home(),
    //   '/colleges': (context) => const CollegesListScreen(),
    // },
  ));
}
