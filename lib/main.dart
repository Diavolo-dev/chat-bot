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
                bottom: 180,
                child: Text(
                  'The standard method of getting new clients starts from marketing to the right people down to closing the deal.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: "Gilroy-Regular",
                    fontSize: 14.0,
                    color: Colors.white,
                  ),
                ),
              ),
              Positioned(
                left: 50,
                right: 50,
                bottom: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff302E38),
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
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      PageTransition(
                          duration: Duration(milliseconds: 400),
                          child: SecondScreen(),
                          type: PageTransitionType.fade),
                    );
                  },
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
                const Positioned(
                  left: 40,
                  right: 40,
                  bottom: 180,
                  child: Text(
                    'Hire a professional, get professional results.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: "Gilroy-Regular",
                      fontSize: 14.0,
                      color: Colors.white,
                    ),
                  ),
                ),
                Positioned(
                  left: 50,
                  right: 50,
                  bottom: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        PageTransition(
                            duration: Duration(milliseconds: 400),
                            child: ThirdScreen(),
                            type: PageTransitionType.fade),
                      );
                    },
                    child: Text(
                      'NEXT',
                      style: TextStyle(
                          fontFamily: 'Source_Sans_Pro',
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff302E38),
                      foregroundColor: Colors.white,
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32.0)),
                      minimumSize: Size(300, 65),
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

class ThirdScreen extends StatelessWidget {
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
                image: AssetImage('assets/background_imageee.jpg'),
                fit: BoxFit.fill,
              ),
            ),
            child: Stack(
              children: [
                const Positioned(
                  left: 40,
                  right: 40,
                  bottom: 180,
                  child: Text(
                    'Buying and Selling at the Same Time.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: "Gilroy-Regular",
                      fontSize: 14.0,
                      color: Colors.white,
                    ),
                  ),
                ),
                Positioned(
                  left: 50,
                  right: 50,
                  bottom: 50,
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
                      'Let\'s Chat',
                      style: TextStyle(
                          fontFamily: 'Source_Sans_Pro',
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff302E38),
                      foregroundColor: Colors.white,
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32.0)),
                      minimumSize: Size(300, 65),
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
