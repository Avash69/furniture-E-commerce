// // import 'package:flutter/material.dart';
// // import 'signin_view.dart';

// // class SignUpView extends StatefulWidget {
// //   const SignUpView({super.key});

// //   @override
// //   State<SignUpView> createState() => _SignUpViewState();
// // }

// // class _SignUpViewState extends State<SignUpView> {
// //   String fullName = '';
// //   String email = '';
// //   String password = '';
// //   String confirmPassword = '';
// //   String? error;

// //   void _signup() {
// //     // Basic validation
// //     if (password != confirmPassword) {
// //       setState(() {
// //         error = 'Passwords do not match';
// //       });
// //       return;
// //     }
// //     if (fullName.isEmpty || email.isEmpty || password.isEmpty) {
// //       setState(() {
// //         error = 'Please fill all fields';
// //       });
// //       return;
// //     }
// //     // Proceed with signup logic (e.g., API call, navigation, etc.)
// //     Navigator.pushReplacement(
// //       context,
// //       MaterialPageRoute(builder: (context) => const SignInView()),
// //     );
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       backgroundColor: const Color(0xFF1A3C34), // Transit-inspired dark teal background
// //       body: Padding(
// //         padding: const EdgeInsets.all(24.0),
// //         child: Center(
// //           child: SingleChildScrollView(
// //             child: Column(
// //               mainAxisAlignment: MainAxisAlignment.center,
// //               children: [
// //                 // Logo and Title
// //                 const Padding(
// //                   padding: EdgeInsets.only(bottom: 40),
// //                   child: Column(
// //                     children: [
// //                       Icon(Icons.directions_bus, size: 50, color: Colors.white),
// //                       Text(
// //                         'YATRA',
// //                         style: TextStyle(
// //                           fontSize: 24,
// //                           color: Colors.white,
// //                           fontWeight: FontWeight.bold,
// //                         ),
// //                       ),
// //                       SizedBox(height: 8),
// //                       Text(
// //                         'Create Your Account',
// //                         style: TextStyle(
// //                           fontSize: 20,
// //                           color: Colors.white70,
// //                         ),
// //                       ),
// //                     ],
// //                   ),
// //                 ),
// //                 // Full Name Field
// //                 TextField(
// //                   onChanged: (value) => fullName = value,
// //                   decoration: InputDecoration(
// //                     hintText: 'Full Name',
// //                     filled: true,
// //                     fillColor: Colors.white,
// //                     border: OutlineInputBorder(
// //                       borderRadius: BorderRadius.circular(8),
// //                     ),
// //                     prefixIcon: const Icon(Icons.person, color: Colors.grey),
// //                   ),
// //                 ),
// //                 const SizedBox(height: 16),
// //                 // Email Field
// //                 TextField(
// //                   onChanged: (value) => email = value,
// //                   decoration: InputDecoration(
// //                     hintText: 'Phone or Gmail',
// //                     filled: true,
// //                     fillColor: Colors.white,
// //                     border: OutlineInputBorder(
// //                       borderRadius: BorderRadius.circular(8),
// //                     ),
// //                     prefixIcon: const Icon(Icons.email, color: Colors.grey),
// //                   ),
// //                 ),
// //                 const SizedBox(height: 16),
// //                 // Password Field
// //                 TextField(
// //                   onChanged: (value) => password = value,
// //                   obscureText: true,
// //                   decoration: InputDecoration(
// //                     hintText: 'Password',
// //                     filled: true,
// //                     fillColor: Colors.white,
// //                     border: OutlineInputBorder(
// //                       borderRadius: BorderRadius.circular(8),
// //                     ),
// //                     prefixIcon: const Icon(Icons.lock, color: Colors.grey),
// //                     suffixIcon: const Icon(Icons.visibility_off, color: Colors.grey),
// //                   ),
// //                 ),
// //                 const SizedBox(height: 16),
// //                 // Confirm Password Field
// //                 TextField(
// //                   onChanged: (value) => confirmPassword = value,
// //                   obscureText: true,
// //                   decoration: InputDecoration(
// //                     hintText: 'Confirm Password',
// //                     filled: true,
// //                     fillColor: Colors.white,
// //                     border: OutlineInputBorder(
// //                       borderRadius: BorderRadius.circular(8),
// //                     ),
// //                     prefixIcon: const Icon(Icons.lock, color: Colors.grey),
// //                     suffixIcon: const Icon(Icons.visibility_off, color: Colors.grey),
// //                   ),
// //                 ),
// //                 if (error != null) ...[
// //                   const SizedBox(height: 12),
// //                   Text(error!, style: const TextStyle(color: Colors.white)),
// //                 ],
// //                 const SizedBox(height: 24),
// //                 // Sign Up Button
// //                 ElevatedButton(
// //                   style: ElevatedButton.styleFrom(
// //                     backgroundColor: const Color(0xFF00C853), // Transit-inspired green button
// //                     foregroundColor: Colors.white,
// //                     minimumSize: const Size(double.infinity, 48),
// //                     shape: RoundedRectangleBorder(
// //                       borderRadius: BorderRadius.circular(24),
// //                     ),
// //                   ),
// //                   onPressed: _signup,
// //                   child: const Text("SIGN UP", style: TextStyle(fontSize: 16)),
// //                 ),
// //                 const SizedBox(height: 16),
// //                 // Sign In Link
// //                 TextButton(
// //                   onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const SignInView())),
// //                   child: const Text(
// //                     "Already have an account? Sign In",
// //                     style: TextStyle(color: Colors.white70),
// //                   ),
// //                 ),
// //               ],
// //             ),
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }

// // import 'package:flutter/material.dart';

// // void main() {
// //   runApp(SignUpApp());
// // }

// // class SignUpApp extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(home: SignUpPage(), debugShowCheckedModeBanner: false);
// //   }
// // }

// // class SignUpPage extends StatefulWidget {
// //   @override
// //   _SignUpPageState createState() => _SignUpPageState();
// // }

// // class _SignUpPageState extends State<SignUpPage> {
// //   bool _obscurePassword = true;
// //   bool _obscureConfirmPassword = true;

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       backgroundColor: Colors.white,
// //       body: SafeArea(
// //         child: SingleChildScrollView(
// //           padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 40.0),
// //           child: Column(
// //             crossAxisAlignment: CrossAxisAlignment.center,
// //             children: [
// //               const Icon(
// //                 Icons.chair,
// //                 size: 60,
// //               ), // Replace with custom image if needed
// //               const SizedBox(height: 20),
// //               const Text(
// //                 'WELCOME',
// //                 style: TextStyle(
// //                   fontSize: 24,
// //                   fontWeight: FontWeight.bold,
// //                   letterSpacing: 1.2,
// //                 ),
// //               ),
// //               const SizedBox(height: 30),
// //               _buildTextField(label: 'Name'),
// //               const SizedBox(height: 15),
// //               _buildTextField(label: 'Email'),
// //               const SizedBox(height: 15),
// //               _buildTextField(
// //                 label: 'Password',
// //                 obscureText: _obscurePassword,
// //                 toggleVisibility: () {
// //                   setState(() {
// //                     _obscurePassword = !_obscurePassword;
// //                   });
// //                 },
// //               ),
// //               const SizedBox(height: 15),
// //               _buildTextField(
// //                 label: 'Confirm Password',
// //                 obscureText: _obscureConfirmPassword,
// //                 toggleVisibility: () {
// //                   setState(() {
// //                     _obscureConfirmPassword = !_obscureConfirmPassword;
// //                   });
// //                 },
// //               ),
// //               const SizedBox(height: 30),
// //               ElevatedButton(
// //                 style: ElevatedButton.styleFrom(
// //                   backgroundColor: Colors.black,
// //                   padding: const EdgeInsets.symmetric(
// //                     horizontal: 80,
// //                     vertical: 15,
// //                   ),
// //                   elevation: 5,
// //                 ),
// //                 onPressed: () {},
// //                 child: const Text(
// //                   'SIGN UP',
// //                   style: TextStyle(color: Colors.white),
// //                 ),
// //               ),
// //               const SizedBox(height: 20),
// //               Row(
// //                 mainAxisAlignment: MainAxisAlignment.center,
// //                 children: const [
// //                   Text("Already have account? "),
// //                   Text(
// //                     "SIGN IN",
// //                     style: TextStyle(
// //                       fontWeight: FontWeight.bold,
// //                       decoration: TextDecoration.underline,
// //                     ),
// //                   ),
// //                 ],
// //               ),
// //             ],
// //           ),
// //         ),
// //       ),
// //     );
// //   }

// //   Widget _buildTextField({
// //     required String label,
// //     bool obscureText = false,
// //     VoidCallback? toggleVisibility,
// //   }) {
// //     return TextField(
// //       obscureText: obscureText,
// //       decoration: InputDecoration(
// //         labelText: label,
// //         suffixIcon:
// //             toggleVisibility != null
// //                 ? IconButton(
// //                   icon: Icon(
// //                     obscureText ? Icons.visibility_off : Icons.visibility,
// //                   ),
// //                   onPressed: toggleVisibility,
// //                 )
// //                 : null,
// //         border: const UnderlineInputBorder(),
// //       ),
// //     );
// //   }
// // }
// import 'package:flutter/material.dart';
// import 'signin_view.dart';

// class SignUpView extends StatefulWidget {
//   const SignUpView({super.key});

//   @override
//   State<SignUpView> createState() => _SignUpViewState();
// }

// class _SignUpViewState extends State<SignUpView> {
//   String fullName = '';
//   String email = '';
//   String password = '';
//   String confirmPassword = '';
//   String? error;
//   bool _obscurePassword = true;
//   bool _obscureConfirmPassword = true;

//   void _signup() {
//     if (password != confirmPassword) {
//       setState(() {
//         error = 'Passwords do not match';
//       });
//       return;
//     }
//     if (fullName.isEmpty || email.isEmpty || password.isEmpty) {
//       setState(() {
//         error = 'Please fill all fields';
//       });
//       return;
//     }
//     Navigator.pushReplacement(
//       context,
//       MaterialPageRoute(builder: (context) => const SignInView()),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: SafeArea(
//         child: Center(
//           child: SingleChildScrollView(
//             padding: const EdgeInsets.symmetric(horizontal: 24),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 // Logo with lines
//                 Row(
//                   children: [
//                     const Expanded(
//                       child: Divider(thickness: 1, color: Colors.black26),
//                     ),
//                     Container(
//                       margin: const EdgeInsets.symmetric(horizontal: 12),
//                       padding: const EdgeInsets.all(12),
//                       decoration: BoxDecoration(
//                         shape: BoxShape.circle,
//                         border: Border.all(color: Colors.black26),
//                       ),
//                       child: const Icon(Icons.chair_alt, size: 28),
//                     ),
//                     const Expanded(
//                       child: Divider(thickness: 1, color: Colors.black26),
//                     ),
//                   ],
//                 ),
//                 const SizedBox(height: 24),
//                 const Text(
//                   'WELCOME',
//                   style: TextStyle(
//                     fontSize: 22,
//                     fontWeight: FontWeight.bold,
//                     letterSpacing: 1.5,
//                   ),
//                 ),
//                 const SizedBox(height: 24),
//                 // Name field
//                 TextField(
//                   onChanged: (value) => fullName = value,
//                   decoration: const InputDecoration(
//                     hintText: 'Name',
//                     border: UnderlineInputBorder(),
//                   ),
//                 ),
//                 const SizedBox(height: 16),
//                 // Email field
//                 TextField(
//                   onChanged: (value) => email = value,
//                   decoration: const InputDecoration(
//                     hintText: 'Email',
//                     border: UnderlineInputBorder(),
//                   ),
//                 ),
//                 const SizedBox(height: 16),
//                 // Password field
//                 TextField(
//                   onChanged: (value) => password = value,
//                   obscureText: _obscurePassword,
//                   decoration: InputDecoration(
//                     hintText: 'Password',
//                     border: const UnderlineInputBorder(),
//                     suffixIcon: IconButton(
//                       icon: Icon(
//                         _obscurePassword
//                             ? Icons.visibility
//                             : Icons.visibility_off,
//                       ),
//                       onPressed: () {
//                         setState(() {
//                           _obscurePassword = !_obscurePassword;
//                         });
//                       },
//                     ),
//                   ),
//                 ),
//                 const SizedBox(height: 16),
//                 // Confirm Password field
//                 TextField(
//                   onChanged: (value) => confirmPassword = value,
//                   obscureText: _obscureConfirmPassword,
//                   decoration: InputDecoration(
//                     hintText: 'Confirm Password',
//                     border: const UnderlineInputBorder(),
//                     suffixIcon: IconButton(
//                       icon: Icon(
//                         _obscureConfirmPassword
//                             ? Icons.visibility
//                             : Icons.visibility_off,
//                       ),
//                       onPressed: () {
//                         setState(() {
//                           _obscureConfirmPassword = !_obscureConfirmPassword;
//                         });
//                       },
//                     ),
//                   ),
//                 ),
//                 if (error != null) ...[
//                   const SizedBox(height: 12),
//                   Text(error!, style: const TextStyle(color: Colors.red)),
//                 ],
//                 const SizedBox(height: 32),
//                 // Sign Up Button
//                 SizedBox(
//                   width: double.infinity,
//                   height: 48,
//                   child: ElevatedButton(
//                     style: ElevatedButton.styleFrom(
//                       backgroundColor: Colors.black,
//                       foregroundColor: Colors.white,
//                       elevation: 6,
//                       shadowColor: Colors.black38,
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(8),
//                       ),
//                     ),
//                     onPressed: _signup,
//                     child: const Text(
//                       "SIGN UP",
//                       style: TextStyle(fontSize: 16, letterSpacing: 1),
//                     ),
//                   ),
//                 ),
//                 const SizedBox(height: 16),
//                 // Sign In Link
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     const Text("Already have account? "),
//                     GestureDetector(
//                       onTap: () {
//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(builder: (_) => const SignInView()),
//                         );
//                       },
//                       child: const Text(
//                         "SIGN IN",
//                         style: TextStyle(
//                           fontWeight: FontWeight.bold,
//                           color: Colors.black,
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//                 const SizedBox(height: 24),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
