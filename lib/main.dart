import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:page_transition/page_transition.dart';

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
                left: 16,
                right: 16,
                top: 40,
                child: Text(
                  'Diva chat bot is a new way, a simple way, to access what you need, when you need it.',
                  style: TextStyle(
                    fontFamily: 'Source_Sans_Pro',
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Positioned(
                  left: 260,
                  right: 40,
                  bottom: 50,
                  child: TextButton(
                      child: Text(
                        'Next',
                        style: TextStyle(
                            fontFamily: 'Source_Sans_Pro',
                            fontSize: 27,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          PageTransition(
                              child: SecondScreen(),
                              type: PageTransitionType.rightToLeftWithFade),
                        );
                      }))
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
                image: AssetImage('assets/background_image.png'),
                fit: BoxFit.fill,
              ),
            ),
            child: Stack(
              children: [
                const Positioned(
                  left: 16,
                  right: 16,
                  top: 40,
                  child: Text(
                    'What you need is within your reach with just one click.',
                    style: TextStyle(
                      fontFamily: 'Source_Sans_Pro',
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const Positioned(
                  left: 16,
                  right: 16,
                  bottom: 110,
                  child: Text(
                    'If you\'re looking for a new house or a new job, even if you\'re selling your house or need an expert to hire,    You Are One Click Away.',
                    style: TextStyle(
                      fontFamily: 'Source_Sans_Pro',
                      fontSize: 16,
                    ),
                  ),
                ),
                Positioned(
                  left: 30,
                  right: 30,
                  bottom: 20,
                  child: ElevatedButton(
                    onPressed: () async {
                      const url = 'https://hansa-tile.de/test10/';
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                    child: Text('Let\'s Talk'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue.shade900,
                      padding: const EdgeInsets.only(
                          left: 120, right: 120, top: 20, bottom: 20),
                      textStyle: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30)),
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
