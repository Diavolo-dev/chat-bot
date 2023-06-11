import 'package:flutter/material.dart';
import 'SecondRoute.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Named Routes Demo',
      // Start the app with the "/" named route. In this case, the app starts
      // on the FirstScreen widget.
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => const FirstRoute(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/second': (context) => const SecondRoute(),
      },
    ),
  );
}

class FirstRoute extends StatelessWidget {
  const FirstRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Landing Page App',
      home: Scaffold(
        body: ListView(
          children: [
            Container(
                height: 754,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/background_imagee.jpg'),
                    fit: BoxFit.fill,
                  ),
                ),
                child: Stack(
                  children: [
                    const Positioned(
                      left: 16,
                      right: 16,
                      top: 80,
                      child: Text(
                        'Diva chat bot is a new way,              a simple way,                                         to access what you need,          when you need it.',
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
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/second');
                        },
                        child: const Text(
                          'Next',
                          style: TextStyle(
                              fontFamily: 'Source_Sans_Pro',
                              fontSize: 27,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
