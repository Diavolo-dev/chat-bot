import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:page_transition/page_transition.dart';
import 'package:shimmer_animation/shimmer_animation.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'First Screen',
    home: FirstScreen(),
  ));
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final statusBarHeight = MediaQuery.of(context).padding.top;
    return Scaffold(
      body: ListView(
        children: [
          Container(
            height: (screenHeight - statusBarHeight),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/background_imagee.jpg'),
                fit: BoxFit.fill,
              ),
            ),
            child: Stack(children: [
              const Positioned(
                left: 40,
                right: 40,
                top: 60,
                child: Text(
                  'Diva chat bot is a new way,    a simple way,                               to access what you need, when you need it.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Source_Sans_Pro',
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Positioned(
                left: 50,
                right: 50,
                bottom: 50,
                child: Shimmer(
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff5659DF),
                        foregroundColor: Colors.white,
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(32.0)),
                        minimumSize: Size(300, 65),
                      ),
                      child: Text(
                        'Next',
                        style: TextStyle(
                            fontFamily: 'Source_Sans_Pro',
                            fontSize: 27,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      onPressed: () {
                        // Navigator.push(
                        //   context,
                        //   PageRouteBuilder(
                        //     pageBuilder: (_, __, ___) => SecondScreen(),
                        //     transitionDuration: Duration(seconds: 1),
                        //     transitionsBuilder: (_, a, __, c) =>
                        //         FadeTransition(opacity: a, child: c),
                        //   ),
                        // );
                        Navigator.push(
                          context,
                          PageTransition(
                              duration: Duration(milliseconds: 400),
                              child: SecondScreen(),
                              type: PageTransitionType.bottomToTop),
                        );
                      }),
                ),
              )
            ]),
          ),
        ],
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final statusBarHeight = MediaQuery.of(context).padding.top;
    return Scaffold(
      body: ListView(
        children: [
          Container(
            height: (screenHeight - statusBarHeight),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/background_image.jpg'),
                fit: BoxFit.fill,
              ),
            ),
            child: Stack(
              children: [
                // const Positioned(
                //   left: 16,
                //   right: 16,
                //   top: 40,
                //   child: Text(
                //     'What you need is within your reach with just one click.',
                //     style: TextStyle(
                //       fontFamily: 'Source_Sans_Pro',
                //       fontSize: 24,
                //       fontWeight: FontWeight.bold,
                //     ),
                //   ),
                // ),
                const Positioned(
                  left: 40,
                  right: 40,
                  bottom: 250,
                  child: Text(
                    'If you\'re looking for a new house or a new job, even if you\'re selling your house or need an expert to hire,     You Are One Click Away.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Source_Sans_Pro',
                      fontSize: 20,
                    ),
                  ),
                ),
                Positioned(
                  left: 50,
                  right: 50,
                  bottom: 50,
                  child: Shimmer(
                    child: ElevatedButton(
                      onPressed: () async {
                        const url = 'https://hansa-tile.de/test10/';
                        if (await canLaunch(url)) {
                          await launch(url);
                        } else {
                          throw 'Could not launch $url';
                        }
                      },
                      child: Text(
                        'Let\'s Talk',
                        style: TextStyle(
                            fontFamily: 'Source_Sans_Pro',
                            fontSize: 27,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff171E41),
                        foregroundColor: Colors.white,
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(32.0)),
                        minimumSize: Size(300, 65),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
