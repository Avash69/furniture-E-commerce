// import 'package:flutter/material.dart';

// class CategoriesView extends StatelessWidget {
//   CategoriesView({super.key});

//   final List<Map<String, dynamic>> categories = [
//     {"name": "Chairs", "icon": Icons.chair},
//     {"name": "Tables", "icon": Icons.table_bar},
//     {"name": "Sofas", "icon": Icons.weekend},
//     {"name": "Beds", "icon": Icons.bed},
//     {"name": "Wardrobes", "icon": Icons.inventory_2},
//     {"name": "Lighting", "icon": Icons.lightbulb},
//     {"name": "Desks", "icon": Icons.desk},
//     {"name": "Outdoor", "icon": Icons.park},
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Categories'),
//         backgroundColor: Colors.brown.shade700,
//         foregroundColor: Colors.white,
//         elevation: 0,
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(12.0),
//         child: GridView.builder(
//           itemCount: categories.length,
//           gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//             crossAxisCount: 2,
//             crossAxisSpacing: 12,
//             mainAxisSpacing: 12,
//             childAspectRatio: 1.2,
//           ),
//           itemBuilder: (context, index) {
//             final category = categories[index];
//             return GestureDetector(
//               onTap: () {
              
          
//               },
//               child: Container(
//                 decoration: BoxDecoration(
//                   color: Colors.brown.shade100,
//                   borderRadius: BorderRadius.circular(16),
//                 ),
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Icon(
//                       category["icon"],
//                       size: 48,
//                       color: Colors.brown.shade700,
//                     ),
//                     const SizedBox(height: 10),
//                     Text(
//                       category["name"],
//                       style: const TextStyle(
//                         fontSize: 16,
//                         fontWeight: FontWeight.w600,
//                       ),
//                     )
//                   ],
//                 ),
//               ),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:furniture_ecommerce/themes/dashboard_theme.dart';

class CategoriesView extends StatelessWidget {
  const CategoriesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: DashboardTheme.backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: DashboardTheme.defaultPadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Browse Categories', style: DashboardTheme.greetingStyle),
              const SizedBox(height: 10),
              Text('Find furniture by category', style: DashboardTheme.subGreetingStyle),

              const SizedBox(height: 30),

              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  mainAxisSpacing: 16,
                  crossAxisSpacing: 16,
                  children: [
                    categoryTile(Icons.chair, 'Chairs'),
                    categoryTile(Icons.bed, 'Beds'),
                    categoryTile(Icons.table_chart, 'Tables'),
                    categoryTile(Icons.weekend, 'Sofas'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget categoryTile(IconData icon, String title) {
    return Container(
      decoration: BoxDecoration(
        // ignore: deprecated_member_use
        color: DashboardTheme.accentColor.withOpacity(0.1),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 40, color: DashboardTheme.primaryColor),
          const SizedBox(height: 10),
          Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}
