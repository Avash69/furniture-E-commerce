// import 'package:flutter/material.dart';

// class ProfileView extends StatefulWidget {
//   const ProfileView({super.key});

//   @override
//   State<ProfileView> createState() => _ProfileViewState();
// }

// class _ProfileViewState extends State<ProfileView> {
//   @override
//   Widget build(BuildContext context) {
//     return Center(child: Text('PRofile PAGE'));
//   }
// }
import 'package:flutter/material.dart';
import 'package:furniture_ecommerce/themes/dashboard_theme.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 231, 241, 236),
      body: SafeArea(
        child: Padding(
          padding: DashboardTheme.defaultPadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('My Profile', style: DashboardTheme.greetingStyle),
              const SizedBox(height: 10),
              Text('Manage your account', style: DashboardTheme.subGreetingStyle),

              const SizedBox(height: 30),

              Center(
                child: CircleAvatar(
                  radius: 50,
                  // ignore: deprecated_member_use
                  backgroundColor: DashboardTheme.accentColor.withOpacity(0.3),
                  child: const Icon(Icons.person, size: 50, color: Colors.white),
                ),
              ),
              const SizedBox(height: 16),
              const Center(
                child: Text('John Doe', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
              ),
              const SizedBox(height: 30),

              ListTile(
                leading: const Icon(Icons.settings),
                title: const Text('Account Settings'),
                trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.shopping_bag),
                title: const Text('My Orders'),
                trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.logout),
                title: const Text('Log Out'),
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
