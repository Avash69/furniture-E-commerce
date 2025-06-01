import 'package:flutter/material.dart';

class DashboardView extends StatefulWidget {
   final Function(int) onTabSelected;
  final int currentIndex;
  
  const DashboardView ({
    super.key,
    required this.onTabSelected,
    required this.currentIndex,
  });

  @override
  State<DashboardView> createState() => _DashboardViewState();
}
class _DashboardViewState extends State<DashboardView> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: widget.currentIndex,
      onTap: widget.onTabSelected,
      selectedItemColor: Colors.brown.shade700,
      unselectedItemColor: Colors.grey,
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.white,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.crib),
          label: 'Categories',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_cart),
          label: 'Cart',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.usb),
          label: 'Profile',
        ),
      ],
    );
  }
}


