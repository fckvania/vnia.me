import 'package:page_transition/page_transition.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'package:flutter/material.dart';

import 'pages/home.dart';
import 'pages/notfound.dart';

void main() {
  setUrlStrategy(PathUrlStrategy());
  runApp(const Vnia());
}

class Vnia extends StatefulWidget {
  const Vnia({Key? key}) : super(key: key);

  @override
  State<Vnia> createState() => _VniaState();
}

class _VniaState extends State<Vnia> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case '/':
            return PageTransition(child: const Home(), type: PageTransitionType.size, alignment: Alignment.bottomCenter, settings: settings);
          default:
            return PageTransition(child: const NotFound(), type: PageTransitionType.rotate, alignment: Alignment.bottomCenter, duration: const Duration(seconds: 1), settings: settings);
        }
      },
    );
  }
}