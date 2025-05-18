// import 'package:flutter/material.dart';

// class LoginPageView extends StatefulWidget {
//   const LoginPageView({Key? key}) : super(key: key);

//   @override
//   State<LoginPageView> createState() => _LoginPageState();
// }

// class _LoginPageState extends State<LoginPageView> {
//   bool _obscurePassword = true;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: SafeArea(
//         child: Center(
//           child: SingleChildScrollView(
//             padding: const EdgeInsets.symmetric(horizontal: 30),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 // Logo
//                 const Icon(Icons.chair, size: 60),

//                 const SizedBox(height: 40),

//                 // Welcome Text
//                 const Align(
//                   alignment: Alignment.centerLeft,
//                   child: Text(
//                     "Hello !",
//                     style: TextStyle(fontSize: 24, fontWeight: FontWeight.w300),
//                   ),
//                 ),
//                 const Align(
//                   alignment: Alignment.centerLeft,
//                   child: Text(
//                     "WELCOME BACK",
//                     style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
//                   ),
//                 ),

//                 const SizedBox(height: 30),

//                 // Email TextField
//                 const TextField(
//                   decoration: InputDecoration(
//                     labelText: 'Email',
//                     border: UnderlineInputBorder(),
//                   ),
//                 ),

//                 const SizedBox(height: 20),

//                 // Password TextField
//                 TextField(
//                   obscureText: _obscurePassword,
//                   decoration: InputDecoration(
//                     labelText: 'Password',
//                     border: const UnderlineInputBorder(),
//                     suffixIcon: IconButton(
//                       icon: Icon(
//                         _obscurePassword ? Icons.visibility : Icons.visibility_off,
//                       ),
//                       onPressed: () {
//                         setState(() {
//                           _obscurePassword = !_obscurePassword;
//                         });
//                       },
//                     ),
//                   ),
//                 ),

//                 const SizedBox(height: 10),

//                 // Forgot Password
//                 Align(
//                   alignment: Alignment.centerRight,
//                   child: TextButton(
//                     onPressed: () {
//                       // Forgot password logic
//                     },
//                     child: const Text('Forgot Password'),
//                   ),
//                 ),

//                 const SizedBox(height: 10),

//                 // Login Button
//                 SizedBox(
//                   width: double.infinity,
//                   child: ElevatedButton(
//                     style: ElevatedButton.styleFrom(
//                       backgroundColor: Colors.black,
//                       padding: const EdgeInsets.symmetric(vertical: 15),
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(10),
//                       ),
//                     ),
//                     onPressed: () {
//                       // Login logic
//                     },
//                     child: const Text(
//                       'Log in',
//                       style: TextStyle(color: Colors.white),
//                     ),
//                   ),
//                 ),

//                 const SizedBox(height: 15),

//                 // Sign Up
//                 TextButton(
//                   onPressed: () {
//                     // Navigate to sign up page
//                   },
//                   child: const Text('SIGN UP'),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
// import 'package:flutter/material.dart';

// class LoginPage extends StatefulWidget {
//   const LoginPage({Key? key}) : super(key: key);

//   @override
//   State<LoginPage> createState() => _LoginPageState();
// }

// class _LoginPageState extends State<LoginPage> {
//   bool _obscurePassword = true;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: SafeArea(
//         child: Center(
//           child: SingleChildScrollView(
//             padding: const EdgeInsets.symmetric(horizontal: 30),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 // Logo
//                 const Icon(Icons.chair, size: 60),

//                 const SizedBox(height: 40),

//                 // Welcome Text
//                 const Align(
//                   alignment: Alignment.centerLeft,
//                   child: Text(
//                     "Hello !",
//                     style: TextStyle(fontSize: 24, fontWeight: FontWeight.w300),
//                   ),
//                 ),
//                 const Align(
//                   alignment: Alignment.centerLeft,
//                   child: Text(
//                     "WELCOME BACK",
//                     style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
//                   ),
//                 ),

//                 const SizedBox(height: 30),

//                 // Email TextField
//                 const TextField(
//                   decoration: InputDecoration(
//                     labelText: 'Email',
//                     border: UnderlineInputBorder(),
//                   ),
//                 ),

//                 const SizedBox(height: 20),

//                 // Password TextField
//                 TextField(
//                   obscureText: _obscurePassword,
//                   decoration: InputDecoration(
//                     labelText: 'Password',
//                     border: const UnderlineInputBorder(),
//                     suffixIcon: IconButton(
//                       icon: Icon(
//                         _obscurePassword ? Icons.visibility : Icons.visibility_off,
//                       ),
//                       onPressed: () {
//                         setState(() {
//                           _obscurePassword = !_obscurePassword;
//                         });
//                       },
//                     ),
//                   ),
//                 ),

//                 const SizedBox(height: 10),

//                 // Forgot Password
//                 Align(
//                   alignment: Alignment.centerRight,
//                   child: TextButton(
//                     onPressed: () {
//                       // Forgot password logic
//                     },
//                     child: const Text('Forgot Password'),
//                   ),
//                 ),

//                 const SizedBox(height: 10),

//                 // Login Button
//                 SizedBox(
//                   width: double.infinity,
//                   child: ElevatedButton(
//                     style: ElevatedButton.styleFrom(
//                       backgroundColor: Colors.black,
//                       padding: const EdgeInsets.symmetric(vertical: 15),
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(10),
//                       ),
//                     ),
//                     onPressed: () {
//                       // Login logic
//                     },
//                     child: const Text(
//                       'Log in',
//                       style: TextStyle(color: Colors.white),
//                     ),
//                   ),
//                 ),

//                 const SizedBox(height: 15),

//                 // Sign Up
//                 TextButton(
//                   onPressed: () {
//                     // Navigate to sign up page
//                   },
//                   child: const Text('SIGN UP'),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
