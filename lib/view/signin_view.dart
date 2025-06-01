// import 'package:flutter/material.dart';
// import '../model/signin_model.dart';
// import 'dashboard_view.dart';
// import 'signup_view.dart';

// class SignInView extends StatefulWidget {
//   const SignInView({super.key});

//   @override
//   State<SignInView> createState() => _SignInViewState();
// }

// class _SignInViewState extends State<SignInView> {
//   final SignInModel model = SignInModel();
//   String email = '';
//   String password = '';
//   String? error;

//   void _login() {
//     if (model.validateCredentials(email.trim(), password.trim())) {
//       Navigator.pushReplacement(
//         context,
//         MaterialPageRoute(builder: (context) => const DashboardView()),
//       );
//     } else {
//       setState(() {
//         error = 'Invalid credentials';
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color(0xFF1A3C34), // Transit-inspired dark teal background
//       body: Padding(
//         padding: const EdgeInsets.all(24.0),
//         child: Center(
//           child: SingleChildScrollView(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 // Logo and Welcome Text
//                 const Padding(
//                   padding: EdgeInsets.only(bottom: 40),
//                   child: Column(
//                     children: [
//                       Icon(Icons.directions_bus, size: 50, color: Colors.white),
//                       Text(
//                         'YATRA',
//                         style: TextStyle(
//                           fontSize: 24,
//                           color: Colors.white,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                       SizedBox(height: 8),
//                       Text(
//                         'Welcome Back',
//                         style: TextStyle(
//                           fontSize: 20,
//                           color: Colors.white70,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 // Email Field
//                 TextField(
//                   onChanged: (value) => email = value,
//                   decoration: InputDecoration(
//                     hintText: 'Username',
//                     filled: true,
//                     fillColor: Colors.white,
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(8),
//                     ),
//                     prefixIcon: const Icon(Icons.email, color: Colors.grey),
//                   ),
//                 ),
//                 const SizedBox(height: 16),
//                 // Password Field
//                 TextField(
//                   onChanged: (value) => password = value,
//                   obscureText: true,
//                   decoration: InputDecoration(
//                     hintText: 'Password',
//                     filled: true,
//                     fillColor: Colors.white,
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(8),
//                     ),
//                     prefixIcon: const Icon(Icons.lock, color: Colors.grey),
//                   ),
//                 ),
//                 // Forgot Password
//                 Padding(
//                   padding: const EdgeInsets.only(top: 8.0),
//                   child: Align(
//                     alignment: Alignment.centerRight,
//                     child: TextButton(
//                       onPressed: () {},
//                       child: const Text(
//                         'Forgot password?',
//                         style: TextStyle(color: Colors.white70),
//                       ),
//                     ),
//                   ),
//                 ),
//                 if (error != null) ...[
//                   const SizedBox(height: 12),
//                   Text(error!, style: const TextStyle(color: Colors.white)),
//                 ],
//                 const SizedBox(height: 24),
//                 // Sign In Button
//                 ElevatedButton(
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: const Color(0xFF00C853), // Transit-inspired green button
//                     foregroundColor: Colors.white,
//                     minimumSize: const Size(double.infinity, 48),
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(24),
//                     ),
//                   ),
//                   onPressed: _login,
//                   child: const Text("SIGN IN", style: TextStyle(fontSize: 16)),
//                 ),
//                 const SizedBox(height: 16),
//                 // Sign Up Link
//                 TextButton(
//                   onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const SignUpView())),
//                   child: const Text(
//                     "Don't have an account? Sign up",
//                     style: TextStyle(color: Colors.white70),
//                   ),
//                 ),
//                 const SizedBox(height: 16),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
// import 'package:flutter/material.dart';

// void main() {
//   runApp(SignInApp());
// }

// class SignInApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: SignInPage(),
//       debugShowCheckedModeBanner: false,
//     );
//   }
// }

// class SignInPage extends StatefulWidget {
//   @override
//   _SignInPageState createState() => _SignInPageState();
// }

// class _SignInPageState extends State<SignInPage> {
//   bool _obscurePassword = true;
//   final TextEditingController _emailController = TextEditingController();
//   final TextEditingController _passwordController = TextEditingController();

//   void _signIn() {
//     final email = _emailController.text.trim();
//     final password = _passwordController.text.trim();

//     if (email.isEmpty || password.isEmpty) {
//       _showSnackBar('Please fill in all fields');
//     } else if (email == "user@example.com" && password == "123456") {
//       _showSnackBar('Login successful', isSuccess: true);
//       // Navigate or perform other success logic here
//     } else {
//       _showSnackBar('Invalid credentials');
//     }
//   }

//   void _showSnackBar(String message, {bool isSuccess = false}) {
//     ScaffoldMessenger.of(context).showSnackBar(
//       SnackBar(
//         content: Text(message),
//         backgroundColor: isSuccess ? Colors.green : Colors.red,
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: SafeArea(
//         child: SingleChildScrollView(
//           padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 40.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               const Icon(Icons.chair, size: 60),
//               const SizedBox(height: 20),
//               const Text(
//                 'WELCOME BACK',
//                 style: TextStyle(
//                   fontSize: 24,
//                   fontWeight: FontWeight.bold,
//                   letterSpacing: 1.2,
//                 ),
//               ),
//               const SizedBox(height: 30),
//               _buildTextField(
//                 label: 'Email',
//                 controller: _emailController,
//               ),
//               const SizedBox(height: 15),
//               _buildTextField(
//                 label: 'Password',
//                 controller: _passwordController,
//                 obscureText: _obscurePassword,
//                 toggleVisibility: () {
//                   setState(() {
//                     _obscurePassword = !_obscurePassword;
//                   });
//                 },
//               ),
//               const SizedBox(height: 30),
//               ElevatedButton(
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: Colors.black,
//                   padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 15),
//                   elevation: 5,
//                 ),
//                 onPressed: _signIn,
//                 child: const Text(
//                   'SIGN IN',
//                   style: TextStyle(color: Colors.white),
//                 ),
//               ),
//               const SizedBox(height: 20),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: const [
//                   Text("Don't have an account? "),
//                   Text(
//                     "SIGN UP",
//                     style: TextStyle(
//                       fontWeight: FontWeight.bold,
//                       decoration: TextDecoration.underline,
//                     ),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _buildTextField({
//     required String label,
//     required TextEditingController controller,
//     bool obscureText = false,
//     VoidCallback? toggleVisibility,
//   }) {
//     return TextField(
//       controller: controller,
//       obscureText: obscureText,
//       decoration: InputDecoration(
//         labelText: label,
//         suffixIcon: toggleVisibility != null
//             ? IconButton(
//                 icon: Icon(
//                   obscureText ? Icons.visibility_off : Icons.visibility,
//                 ),
//                 onPressed: toggleVisibility,
//               )
//             : null,
//         border: const UnderlineInputBorder(),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import '../model/signin_model.dart';
import 'dashboard_view.dart';
import 'signup_view.dart';

class SignInView extends StatefulWidget {
  const SignInView({super.key});

  @override
  State<SignInView> createState() => _SignInViewState();
}

class _SignInViewState extends State<SignInView> {
  final SignInModel model = SignInModel();
  String email = '';
  String password = '';
  String? error;
  bool _obscurePassword = true;

  void _login() {
    final isValid = model.validateCredentials(email.trim(), password.trim());

    final snackBar = SnackBar(
      content: Text(
        isValid ? 'Login successful' : 'Invalid credentials',
        style: const TextStyle(
          fontFamily: 'OpenSans-Bold',
          color: Colors.white
          ),
      ),
      backgroundColor: isValid ? Colors.green : Colors.red,
      behavior: SnackBarBehavior.floating,
      margin: const EdgeInsets.all(16),
      duration: const Duration(seconds: 2),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);

    if (isValid) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => const Dashboard()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Top Logo
              const Column(
                children: [
                  SizedBox(height: 40),
                  CircleAvatar(
                    radius: 32,
                    backgroundColor: Colors.black12,
                    child: Icon(Icons.chair_alt, size: 32, color: Colors.black),
                  ),
                  SizedBox(height: 16),
                  Divider(thickness: 1, color: Colors.black12),
                ],
              ),

              const SizedBox(height: 24),

              // Welcome Text
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Hello !',
                  style: TextStyle(fontSize: 24, color: Colors.black54),
                ),
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'WELCOME BACK',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 32),

              // Email Field
              TextField(
                onChanged: (value) => email = value,
                decoration: const InputDecoration(
                  hintText: 'Email',
                  border: UnderlineInputBorder(),
                ),
              ),
              const SizedBox(height: 24),

              // Password Field
              TextField(
                onChanged: (value) => password = value,
                obscureText: _obscurePassword,
                decoration: InputDecoration(
                  hintText: 'Password',
                  border: const UnderlineInputBorder(),
                  suffixIcon: IconButton(
                    icon: Icon(
                      _obscurePassword
                          ? Icons.visibility
                          : Icons.visibility_off,
                      color: Colors.grey,
                    ),
                    onPressed: () {
                      setState(() => _obscurePassword = !_obscurePassword);
                    },
                  ),
                ),
              ),

              const SizedBox(height: 16),

              // Forgot Password
              Align(
                alignment: Alignment.centerLeft,
                child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(padding: EdgeInsets.zero),
                  child: const Text(
                    'Forgot Password',
                    style: TextStyle(color: Colors.black54),
                  ),
                ),
              ),

              if (error != null) ...[
                const SizedBox(height: 12),
                Text(error!, style: const TextStyle(color: Colors.red)),
              ],

              const SizedBox(height: 24),

              // Login Button
              ElevatedButton(
                onPressed: _login,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                  minimumSize: const Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  elevation: 4,
                ),
                child: const Text('Log in'),
              ),

              const SizedBox(height: 16),

              // Sign Up Button (Secondary)
              OutlinedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const SignUpView()),
                  );
                },
                style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.black87,
                  side: const BorderSide(color: Colors.transparent),
                  minimumSize: const Size(double.infinity, 50),
                ),
                child: const Text("SIGN UP"),
              ),
              const SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }
}
