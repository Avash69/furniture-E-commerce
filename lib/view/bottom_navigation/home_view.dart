// // import 'package:flutter/material.dart';
// // import 'package:furniture_ecommerce/themes/dashboard_theme.dart';

// // class HomeView extends StatelessWidget {
// //   const HomeView({super.key});

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       backgroundColor: DashboardTheme.backgroundColor,
// //       body: SafeArea(
// //         child: Padding(
// //           padding: DashboardTheme.defaultPadding,
// //           child: Column(
// //             crossAxisAlignment: CrossAxisAlignment.start,
// //             children: [
// //               // Header
// //               Text('Welcome to Furniture  ', style: DashboardTheme.greetingStyle),
// //               const SizedBox(height: 10),
// //               Text('Enjoy Shopping', style: DashboardTheme.subGreetingStyle),

// //               const SizedBox(height: 30),

// //               // Large Transit Illustration or Logo
// //               Center(
// //                 child: Container(
// //                   width: 220,
// //                   height: 220,
// //                   decoration: BoxDecoration(
// //                     shape: BoxShape.circle,
// //                     // ignore: deprecated_member_use
// //                     color: DashboardTheme.accentColor.withOpacity(0.2),
// //                   ),
// //                   child: Padding(
// //                     padding: const EdgeInsets.all(1),
// //                     child: ClipOval(
// //                       ),
// //                     ),
// //                   ),
// //                 ),

// //               const SizedBox(height: 30),

// //               // Navigation Buttons
// //               Expanded(
// //                 child: Center(
// //                   child: Column(
// //                     mainAxisSize: MainAxisSize.min,
// //                     children: [
// //                       dashboardButton(context, 'View Routes', Icons.map,),
// //                       const SizedBox(height: 16),
// //                       dashboardButton(context, 'Nearby Stops', Icons.location_on),
// //                     ],
// //                   ),
// //                 ),
// //               ),
// //             ],
// //           ),
// //         ),
// //       ),
// //     );
// //   }

// //   Widget dashboardButton(BuildContext context, String label, IconData icon) {
// //     return SizedBox(
// //       width: double.infinity,
// //       child: ElevatedButton.icon(
// //         onPressed: () {
// //           // Navigate if needed
// //         },
// //         icon: Icon(icon, size: 24, color: Colors.white),
// //         label: Text(
// //           label,
// //           style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
// //         ),
// //         style: ElevatedButton.styleFrom(
// //           backgroundColor: DashboardTheme.primaryColor,
// //           padding: const EdgeInsets.symmetric(vertical: 16),
// //           shape: RoundedRectangleBorder(
// //             borderRadius: BorderRadius.circular(16),
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }
// import 'package:flutter/material.dart';
// import 'package:furniture_ecommerce/themes/dashboard_theme.dart';

// class HomeView extends StatelessWidget {
//   const HomeView({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: DashboardTheme.backgroundColor,
//       body: SafeArea(
//         child: Padding(
//           padding: DashboardTheme.defaultPadding,
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               // Header
//               Text(
//                 'Welcome to Furniture Store',
//                 style: DashboardTheme.greetingStyle,
//               ),
//               const SizedBox(height: 10),
//               Text(
//                 'Find your perfect furniture',
//                 style: DashboardTheme.subGreetingStyle,
//               ),

//               const SizedBox(height: 30),

//               // Furniture Logo or Illustration
//               Center(
//                 child: Container(
//                   width: 220,
//                   height: 220,
//                   decoration: BoxDecoration(
//                     shape: BoxShape.circle,
//                     color: DashboardTheme.accentColor.withOpacity(0.2),
//                   ),
//                   child: const Padding(
//                     padding: EdgeInsets.all(10),
//                     child: Icon(
//                       Icons.chair_alt,
//                       size: 100,
//                       color: Colors.brown,
//                     ),
//                   ),
//                 ),
//               ),

//               const SizedBox(height: 30),

//               // Buttons: Browse, Categories, Offers
//               Expanded(
//                 child: Center(
//                   child: Column(
//                     mainAxisSize: MainAxisSize.min,
//                     children: [
//                       dashboardButton(
//                         context,
//                         'Browse Products',
//                         Icons.chair_outlined,
//                       ),
//                       const SizedBox(height: 16),
//                       dashboardButton(
//                         context,
//                         'Categories',
//                         Icons.category_outlined,
//                       ),
//                       const SizedBox(height: 16),
//                       dashboardButton(
//                         context,
//                         'Best Deals',
//                         Icons.local_offer_outlined,
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   Widget dashboardButton(BuildContext context, String label, IconData icon) {
//     return SizedBox(
//       width: double.infinity,
//       child: ElevatedButton.icon(
//         onPressed: () {
//           // TODO: Add navigation to corresponding screens
//         },
//         icon: Icon(icon, size: 24, color: Colors.white),
//         label: Text(
//           label,
//           style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//         ),
//         style: ElevatedButton.styleFrom(
//           backgroundColor: DashboardTheme.primaryColor,
//           padding: const EdgeInsets.symmetric(vertical: 16),
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(16),
//           ),
//         ),
//       ),
//     );
//   }
// }
