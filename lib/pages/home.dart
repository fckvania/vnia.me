import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: [const Color(0xff213A50), const Color(0xff071930)],
        )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(80)),
                child: Image.asset(
                  "assets/profilepic.jpeg",
                  width: 150,
                  height: 150,
                )),
            SizedBox(
              height: 12,
            ),
            Text(
              "Vania Nakano",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 13,
            ),
            Text("Connect with me", style: TextStyle(
              color: Colors.white,
              fontSize: 14
            ),),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                


                GestureDetector(
                  onTap: (){
                    _launchURL("https://t.me/vnia666");
                  },
                    child: Image.asset("assets/telegram.png", width: 23,height: 23,)
                ),
                SizedBox(
                  width: 16,
                ),
                GestureDetector(
                  onTap: (){
                    _launchURL("https://github.com/fckvania");
                  },
                    child: Image.asset("assets/github.png", width: 23,height: 23,)
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
