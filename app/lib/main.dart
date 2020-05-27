import 'package:flutter/material.dart';
import 'package:quizzzit/pages/home_page.dart';

import 'package:quizzzit/pages/root_page.dart';

void main() => runApp(MaterialApp(
      title: "Quizzzit",
      initialRoute: '/home',
      routes: {'/': (ctx) => RootPage(), '/home': (ctx) => HomePage()},
    ));
