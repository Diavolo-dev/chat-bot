import 'package:flutter/material.dart';

void main() {
  runApp(SecondRoute());
}

class SecondRoute extends StatelessWidget {
  const SecondRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Landing Page App',
      home: Scaffold(
        body: ListView(
          children: [
            const Text(
              'Diva chat bot is a new way,a simple way,to access what you need,when you need it.',
              style: TextStyle(
                fontFamily: 'Source_Sans_Pro',
                fontWeight: FontWeight.bold,
                fontSize: 27,
              ),
            ),
            const SizedBox(height: 40),
            Container(
              height: 300,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/background_image.png'),
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  const SizedBox(height: 80),
                  const Center(
                    child: Text(
                      'If you\'re looking for a new house or a new job, even if you\'re selling your house or need an expert to hire,You Are One Click Away.',
                      style: TextStyle(
                        fontFamily: 'Source_Sans_Pro',
                        fontSize: 16,
                      ),
                    ),
                  ),
                  const SizedBox(height: 32),
                  ElevatedButton(
                    onPressed: () {},
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
                    child: const Text('Let\'s Talk'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
