import 'package:flutter/material.dart';

class NotFound extends StatelessWidget {
  const NotFound({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [const Color(0xff213A50), const Color(0xff071930)],
        )),
        child: ListView(
          shrinkWrap: true,
          children: const [
            Center(child: Text('404', style: TextStyle(fontSize: 120, fontWeight: FontWeight.w800, color: Color.fromARGB(255, 80, 192, 144)),)),
            Center(child: Text('Not Found', style: TextStyle(fontSize: 35, fontWeight: FontWeight.w600),)),
          ]
        ),
      ),
    );
  }
}