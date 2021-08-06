import 'dart:async';

import 'package:flutter/material.dart';

import 'main.dart';

bool isLoggedIn = true;

class SplashDisplay extends StatefulWidget {
  final Color backgroundColor;
  final dynamic onClick;
  final ImageProvider imageBackground;
  final Gradient gradientBackground;
  SplashDisplay(
      {this.onClick,
      this.backgroundColor = Colors.white,
      this.imageBackground,
      this.gradientBackground});

  static const String id = 'splash_page';

  @override
  _SplashDisplayState createState() => _SplashDisplayState();
}

class _SplashDisplayState extends State<SplashDisplay> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), () {
      // It's fairly safe to assume this is using the in-built material
      // named route component

      Navigator.of(context).pushReplacement(
          new MaterialPageRoute(builder: (BuildContext context) => HomePage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new InkWell(
        onTap: widget.onClick,
        child: new Stack(
          fit: StackFit.expand,
          children: <Widget>[
            new Container(
              decoration: new BoxDecoration(
                image: widget.imageBackground == null
                    ? null
                    : new DecorationImage(
                        fit: BoxFit.cover,
                        image: widget.imageBackground,
                      ),
                gradient: widget.gradientBackground,
                color: widget.backgroundColor,
              ),
            ),
            new Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                new Expanded(
                  flex: 2,
                  child: new Container(
                      child: new Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      new CircleAvatar(
                        backgroundColor: Colors.transparent,
                        child: new Container(
                          child: Image.asset(
                            'images/love.gif',
//                  height: 60,
                          ),
                        ),
                        radius: 150.0,
                      ),
                      new Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                      ),
                      Text(
                        'I Know Ni',
                        style: new TextStyle(
                          color: Colors.red,
                          fontFamily: 'Acme',
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                        ),
                      ),
                    ],
                  )),
                ),
                Expanded(
                  flex: 1,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CircularProgressIndicator(
                        valueColor:
                            new AlwaysStoppedAnimation<Color>(Colors.red),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                      ),
                      Text(
                        'SWEET KO',
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'Acme',
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:splashscreen/splashscreen.dart';
//
// import 'Styles.dart';
// import 'main.dart';
//
// class SplashScreenPage extends StatefulWidget {
//   SplashScreenPage({Key key}) : super(key: key);
//
//   @override
//   _SplashScreenPageState createState() => _SplashScreenPageState();
// }
//
// class _SplashScreenPageState extends State<SplashScreenPage> {
//   @override
//   void initState() {
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return new SplashScreen(
//       seconds: 2,
//       navigateAfterSeconds: HomePage(),
//       title: new Text(
//         '\nI know ni',
//         style: new TextStyle(
//             fontWeight: FontWeight.bold,
//             fontSize: 25.0,
//             color: Styles.foregroundColor),
//       ),
//       image: new Image.asset('assets/icon/love.gif'),
//       photoSize: 50,
//       backgroundColor: Styles.primaryBackgroundColor,
//       loaderColor: Styles.primaryColor,
//       loadingText: Text(
//         'Hajur ko',
//         style: TextStyle(color: Colors.grey),
//       ),
//     );
//   }
// }
