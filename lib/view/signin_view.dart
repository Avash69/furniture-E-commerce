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
import 'package:flutter/material.dart';

void main() {
  runApp(SignInApp());
}

class SignInApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SignInPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  bool _obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 40.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Icon(Icons.chair, size: 60), // Replace with custom image if needed
              const SizedBox(height: 20),
              const Text(
                'WELCOME BACK',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.2,
                ),
              ),
              const SizedBox(height: 30),
              _buildTextField(label: 'Email'),
              const SizedBox(height: 15),
              _buildTextField(
                label: 'Password',
                obscureText: _obscurePassword,
                toggleVisibility: () {
                  setState(() {
                    _obscurePassword = !_obscurePassword;
                  });
                },
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 15),
                  elevation: 5,
                ),
                onPressed: () {},
                child: const Text(
                  'SIGN IN',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text("Don't have an account? "),
                  Text(
                    "SIGN UP",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextField({
    required String label,
    bool obscureText = false,
    VoidCallback? toggleVisibility,
  }) {
    return TextField(
      obscureText: obscureText,
      decoration: InputDecoration(
        labelText: label,
        suffixIcon: toggleVisibility != null
            ? IconButton(
                icon: Icon(
                  obscureText ? Icons.visibility_off : Icons.visibility,
                ),
                onPressed: toggleVisibility,
              )
            : null,
        border: const UnderlineInputBorder(),
      ),
    );
  }
}
