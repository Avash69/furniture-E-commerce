// // import 'package:animated_splash_screen/animated_splash_screen.dart';
// // import 'package:flutter/material.dart';
// // import 'package:lottie/lottie.dart';
// // import 'package:furniture_app/model/splash_model.dart';
// // import 'package:furniture_app/view/signinpage.dart';
// // // ignore: depend_on_referenced_packages
// // import 'package:page_transition/page_transition.dart';

// // class SplashScreenView extends StatelessWidget {
// //   final SplashModel _viewmodel = SplashModel();

// //   SplashScreenView({super.key});

// //   @override
// //   Widget build(BuildContext context) {
// //     return FutureBuilder(
// //       future: _viewmodel.initApp(),
// //       builder: (context, snapshot) {
// //         if (snapshot.connectionState == ConnectionState.done) {
// //           return AnimatedSplashScreen(
// //             splash: Lottie.asset('assets/animation/furniture_animation.json', height: 200),
// //             splashIconSize: 200,
// //             backgroundColor: Colors.white,
// //             splashTransition: SplashTransition.fadeTransition,
// //             duration: 2500,
// //             nextScreen: const SignInView(), // Your login screen
// //             pageTransitionType: PageTransitionType.bottomToTop,
// //           );
// //         } else {
// //           return Scaffold(
// //             backgroundColor: Colors.white,
// //             body: Center(
// //               child: CircularProgressIndicator(color: Color(0xFF8B4513)), // Brown tone for furniture
// //             ),
// //           );
// //         }
// //       },
// //     );
// //   }
// // }
// import 'package:flutter/material.dart';
// import 'package:furniture_ecommerce/view/signin_view.dart'; // Adjust based on your project structure


// class SplashScreenView extends StatelessWidget {
//   const SplashScreenView({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         padding: const EdgeInsets.symmetric(horizontal: 24),
//         decoration: const BoxDecoration(
//           image: DecorationImage(
//             image: AssetImage('assets/images/splash_background.png'), // Replace with your image
//             fit: BoxFit.cover,
//           ),
//         ),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             const SizedBox(height: 100),
//             const Text(
//               "MAKE YOUR",
//               style: TextStyle(
//                 fontSize: 20,
//                 color: Colors.black87,
//                 letterSpacing: 1.2,
//               ),
//             ),
//             const SizedBox(height: 4),
//             const Text(
//               "HOME BEAUTIFUL",
//               style: TextStyle(
//                 fontSize: 26,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.black,
//                 letterSpacing: 1.5,
//               ),
//             ),
//             const SizedBox(height: 16),
//             const Text(
//               "The best simple place where you\ndiscover most wonderful furnitures\nand make your home beautiful",
//               style: TextStyle(
//                 fontSize: 14,
//                 color: Colors.black54,
//                 height: 1.5,
//               ),
//             ),
//             const SizedBox(height: 40),
//             ElevatedButton(
//               onPressed: () {
//                 Navigator.pushReplacement(
//                   context,
//                   MaterialPageRoute(builder: (context) =>  SignInView()),
//                 );
//               },
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: Colors.black,
//                 padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 14),
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(8),
//                 ),
//               ),
//               child: const Text(
//                 "Get Started",
//                 style: TextStyle(color: Colors.white),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

