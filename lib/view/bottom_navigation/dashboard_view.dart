import 'package:flutter/material.dart';
import 'package:furniture_ecommerce/view/bottom_navigation/profile.dart';
import 'home_view.dart';
import 'categories_view.dart';
import 'shopping_cart_view.dart';
// import 'profile_view.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardView();
}

class _DashboardView extends State<DashboardView> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const HomeView(),
    CategoriesView(),
    const ShoppingCartView(),
    const ProfileView(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<BottomNavigationBarItem> _bottomItems = [
    const BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
    const BottomNavigationBarItem(icon: Icon(Icons.chair), label: 'Categories'),
    const BottomNavigationBarItem(
      icon: Icon(Icons.shopping_cart),
      label: 'Cart',
    ),
    const BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: _bottomItems,
        selectedItemColor: Colors.brown.shade800,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
