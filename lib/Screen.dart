import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Landing Page App',
      home: Scaffold(
        body: ListView(
          children: [
            Text(
              'Diva chat bot is a new way,a simple way,to access what you need,when you need it.',
              style: TextStyle(
                fontFamily: 'Source_Sans_Pro',
                fontWeight: FontWeight.bold,
                fontSize: 27,
              ),
            ),
            SizedBox(height: 40),
            Container(
              height: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/background_image.png'),
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                children: [
                  SizedBox(height: 80),
                  Center(
                    child: Text(
                      'If you\'re looking for a new house or a new job, even if you\'re selling your house or need an expert to hire,You Are One Click Away.',
                      style: TextStyle(
                        fontFamily: 'Source_Sans_Pro',
                        fontSize: 16,
                      ),
                    ),
                  ),
                  SizedBox(height: 32),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('Let\'s Talk'),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blue.shade900,
                      padding: EdgeInsets.only(
                          left: 120, right: 120, top: 20, bottom: 20),
                      textStyle:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                      ),
                    ),
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
