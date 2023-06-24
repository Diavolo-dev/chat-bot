import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:url_launcher/url_launcher.dart';
// import 'package:page_transition/page_transition.dart';
// import 'package:shimmer_animation/shimmer_animation.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'First Screen',
    home: _OnboardingPageState(),
  ));
}

class _OnboardingPageState extends StatelessWidget {
  final controller = PageController();

  void dispose() {
    controller.dispose();
    // super.dispose;
  }

  Widget buildLastPage({
    required Color color,
    required String urlImage,
    required String title,
    required String subtitle,
  }) =>
      Container(
        color: color,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 80,
            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 40,
              ),
              child: Image.asset(
                urlImage,
                fit: BoxFit.cover,
                width: double.infinity,
              ),
            ),
            const SizedBox(
              height: 64,
            ),
            Text(
              title,
              style: TextStyle(
                fontFamily: "Gilroy-Bold",
                fontSize: 28.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 40,
              ),
              child: Text(
                textAlign: TextAlign.center,
                subtitle,
                style: const TextStyle(
                  fontFamily: "Gilroy-Regular",
                  fontSize: 14.0,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              height: 100,
            ),
            ElevatedButton(
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
                backgroundColor: Color(0xff5659DF),
                foregroundColor: Colors.white,
                elevation: 3,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32.0)),
                minimumSize: Size(250, 60),
              ),
            ),
          ],
        ),
      );

  Widget buildPage({
    required Color color,
    required String urlImage,
    required String title,
    required String subtitle,
  }) =>
      Container(
        color: color,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 40,
              ),
              child: Image.asset(
                urlImage,
                fit: BoxFit.cover,
                width: double.infinity,
              ),
            ),
            const SizedBox(
              height: 64,
            ),
            Text(
              title,
              style: TextStyle(
                fontFamily: "Gilroy-Bold",
                fontSize: 28.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 40,
              ),
              child: Text(
                textAlign: TextAlign.center,
                subtitle,
                style: const TextStyle(
                  fontFamily: "Gilroy-Regular",
                  fontSize: 14.0,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      );

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Container(
          padding: const EdgeInsets.only(bottom: 80),
          child: PageView(
            controller: controller,
            children: [
              buildPage(
                color: Color(0xff151419),
                urlImage: 'assets/image1.png',
                title: 'Looking for a Job?',
                subtitle:
                    'The standard method of getting new clients starts from marketing to the right people down to closing the deal.',
              ),
              buildPage(
                color: Color(0xff151419),
                urlImage: 'assets/image3.png',
                title: 'Hire Experts',
                subtitle: 'Hire a professional, get professional results.',
              ),
              buildPage(
                color: Color(0xff151419),
                urlImage: 'assets/image2.png',
                title: 'Buy or Sell Houses?',
                subtitle:
                    'Buying and Selling at the Same Time is not a Problem anymore.',
              ),
              buildLastPage(
                color: Color(0xff151419),
                urlImage: 'assets/image4.png',
                title: 'Chat With Us',
                subtitle:
                    'What you need is within your reach with just one click.',
              ),
            ],
          ),
        ),
        bottomSheet: Container(
          height: 80,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                child: const Text(
                  'SKIP',
                  style: TextStyle(
                    color: Color(0xff5659DF),
                  ),
                ),
                onPressed: () => controller.jumpToPage(3),
              ),
              Center(
                child: SmoothPageIndicator(
                  controller: controller,
                  count: 4,
                  effect: const WormEffect(
                    dotColor: Colors.grey,
                    activeDotColor: Color(0xff5659DF),
                    dotHeight: 16,
                    dotWidth: 16,
                    type: WormType.thinUnderground,
                  ),
                  onDotClicked: (index) => controller.animateToPage(index,
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeInOut),
                ),
              ),
              TextButton(
                child: const Text(
                  'NEXT',
                  style: TextStyle(
                    color: Color(0xff5659DF),
                  ),
                ),
                onPressed: () => controller.nextPage(
                    duration: const Duration(
                      milliseconds: 500,
                    ),
                    curve: Curves.easeInOut),
              ),
            ],
          ),
        ),
      );
}










// class SecondScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final screenHeight = MediaQuery.of(context).size.height;
//     final statusBarHeight = MediaQuery.of(context).padding.top;
//     return Scaffold(
//       body: ListView(
//         children: [
//           Container(
//             height: (screenHeight - statusBarHeight),
//             decoration: const BoxDecoration(
//               image: DecorationImage(
//                 image: AssetImage('assets/background_image.jpg'),
//                 fit: BoxFit.fill,
//               ),
//             ),
//             child: Stack(
//               children: [
//                 const Positioned(
//                   left: 40,
//                   right: 40,
//                   bottom: 180,
//                   child: Text(
//                     'Hire a professional, get professional results.',
//                     textAlign: TextAlign.center,
//                     style: TextStyle(
//                       fontFamily: "Gilroy-Regular",
//                       fontSize: 14.0,
//                       color: Colors.white,
//                     ),
//                   ),
//                 ),
//                 Positioned(
//                   left: 50,
//                   right: 50,
//                   bottom: 50,
//                   child: ElevatedButton(
//                     onPressed: () {
//                       Navigator.push(
//                         context,
//                         PageTransition(
//                             duration: Duration(milliseconds: 400),
//                             child: ThirdScreen(),
//                             type: PageTransitionType.rightToLeftWithFade),
//                       );
//                     },
//                     child: Text(
//                       'NEXT',
//                       style: TextStyle(
//                           fontFamily: 'Source_Sans_Pro',
//                           fontSize: 25,
//                           fontWeight: FontWeight.bold,
//                           color: Colors.white),
//                     ),
//                     style: ElevatedButton.styleFrom(
//                       backgroundColor: Color(0xff302E38),
//                       foregroundColor: Colors.white,
//                       elevation: 3,
//                       shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(32.0)),
//                       minimumSize: Size(300, 65),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }

// class ThirdScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final screenHeight = MediaQuery.of(context).size.height;
//     final statusBarHeight = MediaQuery.of(context).padding.top;
//     return Scaffold(
//       body: ListView(
//         children: [
//           Container(
//             height: (screenHeight - statusBarHeight),
//             decoration: const BoxDecoration(
//               image: DecorationImage(
//                 image: AssetImage('assets/background_imageee.jpg'),
//                 fit: BoxFit.fill,
//               ),
//             ),
//             child: Stack(
//               children: [
//                 const Positioned(
//                   left: 40,
//                   right: 40,
//                   bottom: 180,
//                   child: Text(
//                     'Buying and Selling at the Same Time.',
//                     textAlign: TextAlign.center,
//                     style: TextStyle(
//                       fontFamily: "Gilroy-Regular",
//                       fontSize: 14.0,
//                       color: Colors.white,
//                     ),
//                   ),
//                 ),
//                 Positioned(
//                   left: 50,
//                   right: 50,
//                   bottom: 50,
//                   child: ElevatedButton(
//                     onPressed: () async {
//                       const url = 'https://hansa-tile.de/test10/';
//                       if (await canLaunch(url)) {
//                         await launch(url);
//                       } else {
//                         throw 'Could not launch $url';
//                       }
//                     },
//                     child: Text(
//                       'Let\'s Chat',
//                       style: TextStyle(
//                           fontFamily: 'Source_Sans_Pro',
//                           fontSize: 25,
//                           fontWeight: FontWeight.bold,
//                           color: Colors.white),
//                     ),
//                     style: ElevatedButton.styleFrom(
//                       backgroundColor: Color(0xff302E38),
//                       foregroundColor: Colors.white,
//                       elevation: 3,
//                       shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(32.0)),
//                       minimumSize: Size(300, 65),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
