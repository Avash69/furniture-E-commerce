// // import 'package:flutter/material.dart';

// // class ShoppingCartView extends StatefulWidget {
// //   const ShoppingCartView({super.key});

// //   @override
// //   State<ShoppingCartView> createState() => _ShoppingCartViewState();
// // }

// // class _ShoppingCartViewState extends State<ShoppingCartView> {
// //   // Dummy cart items
// //   List<Map<String, dynamic>> cartItems = [
// //     {
// //       "name": "Modern Sofa",
// //       "price": 499.99,
// //       "quantity": 1,
// //       "image": "assets/images/sofa.jpg"
// //     },
// //     {
// //       "name": "Wooden Chair",
// //       "price": 149.50,
// //       "quantity": 2,
// //       "image": "assets/images/chair.jpg"
// //     },
// //   ];

// //   double getTotalPrice() {
// //     return cartItems.fold(0.0, (total, item) => total + (item["price"] * item["quantity"]));
// //   }

// //   void increaseQuantity(int index) {
// //     setState(() {
// //       cartItems[index]["quantity"]++;
// //     });
// //   }

// //   void decreaseQuantity(int index) {
// //     setState(() {
// //       if (cartItems[index]["quantity"] > 1) {
// //         cartItems[index]["quantity"]--;
// //       }
// //     });
// //   }

// //   void removeItem(int index) {
// //     setState(() {
// //       cartItems.removeAt(index);
// //     });
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: const Text('Shopping Cart'),
// //         backgroundColor: Colors.brown.shade700,
// //         foregroundColor: Colors.white,
// //       ),
// //       body: Column(
// //         children: [
// //           Expanded(
// //             child: ListView.builder(
// //               itemCount: cartItems.length,
// //               itemBuilder: (context, index) {
// //                 final item = cartItems[index];
// //                 return Card(
// //                   margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
// //                   child: ListTile(
// //                     leading: Image.asset(
// //                       item["image"],
// //                       width: 60,
// //                       height: 60,
// //                       fit: BoxFit.cover,
// //                     ),
// //                     title: Text(item["name"]),
// //                     subtitle: Text("\$${item["price"].toStringAsFixed(2)}"),
// //                     trailing: Column(
// //                       mainAxisAlignment: MainAxisAlignment.center,
// //                       children: [
// //                         Row(
// //                           mainAxisSize: MainAxisSize.min,
// //                           children: [
// //                             IconButton(
// //                               icon: const Icon(Icons.remove),
// //                               onPressed: () => decreaseQuantity(index),
// //                             ),
// //                             Text('${item["quantity"]}'),
// //                             IconButton(
// //                               icon: const Icon(Icons.add),
// //                               onPressed: () => increaseQuantity(index),
// //                             ),
// //                           ],
// //                         ),
// //                         TextButton(
// //                           onPressed: () => removeItem(index),
// //                           child: const Text(
// //                             'Remove',
// //                             style: TextStyle(color: Colors.red),
// //                           ),
// //                         )
// //                       ],
// //                     ),
// //                   ),
// //                 );
// //               },
// //             ),
// //           ),
// //           Container(
// //             padding: const EdgeInsets.all(16),
// //             decoration: BoxDecoration(
// //               color: Colors.brown.shade100,
// //               borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
// //               boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 10)],
// //             ),
// //             child: Column(
// //               children: [
// //                 Row(
// //                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //                   children: [
// //                     const Text('Total:', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
// //                     Text('\$${getTotalPrice().toStringAsFixed(2)}',
// //                         style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
// //                   ],
// //                 ),
// //                 const SizedBox(height: 12),
// //                 SizedBox(
// //                   width: double.infinity,
// //                   child: ElevatedButton(
// //                     onPressed: () {
                    
// //                     },
// //                     style: ElevatedButton.styleFrom(
// //                       backgroundColor: Colors.brown.shade700,
// //                       padding: const EdgeInsets.symmetric(vertical: 14),
// //                       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
// //                     ),
// //                     child: const Text('Checkout', style: TextStyle(fontSize: 16)),
// //                   ),
// //                 )
// //               ],
// //             ),
// //           ),
// //         ],
// //       ),
// //     );
// //   }
// // }
// // import 'package:flutter/material.dart';
// // import 'package:furniture_ecommerce/themes/dashboard_theme.dart';

// // class ShoppingCartView extends StatelessWidget {
// //   const ShoppingCartView({super.key});

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
// //               Text('Your Cart', style: DashboardTheme.greetingStyle),
// //               const SizedBox(height: 10),
// //               Text('Items you selected', style: DashboardTheme.subGreetingStyle),
// //               const SizedBox(height: 30),

// //               Expanded(
// //                 child: ListView.separated(
// //                   itemCount: 3, // Replace with dynamic cart item count
// //                   separatorBuilder: (context, index) => const SizedBox(height: 16),
// //                   itemBuilder: (context, index) => cartItem(),
// //                 ),
// //               ),

// //               ElevatedButton(
// //                 onPressed: () {},
// //                 style: ElevatedButton.styleFrom(
// //                   backgroundColor: DashboardTheme.primaryColor,
// //                   padding: const EdgeInsets.symmetric(vertical: 16),
// //                   shape: RoundedRectangleBorder(
// //                     borderRadius: BorderRadius.circular(16),
// //                   ),
// //                 ),
// //                 child: const Center(
// //                   child: Text('Proceed to Checkout', style: TextStyle(fontWeight: FontWeight.bold)),
// //                 ),
// //               )
// //             ],
// //           ),
// //         ),
// //       ),
// //     );
// //   }

// //   Widget cartItem() {
// //     return Container(
// //       padding: const EdgeInsets.all(12),
// //       decoration: BoxDecoration(
// //         color: Colors.white,
// //         borderRadius: BorderRadius.circular(16),
// //         boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 4)],
// //       ),
// //       child: Row(
// //         children: [
// //           Container(
// //             width: 70,
// //             height: 70,
// //             decoration: BoxDecoration(
// //               // ignore: deprecated_member_use
// //               color: DashboardTheme.accentColor.withOpacity(0.1),
// //               borderRadius: BorderRadius.circular(12),
// //             ),
// //             child: const Icon(Icons.chair, size: 40),
// //           ),
// //           const SizedBox(width: 12),
// //           Expanded(
// //             child: Column(
// //               crossAxisAlignment: CrossAxisAlignment.start,
// //               children: const [
// //                 Text('Modern Chair', style: TextStyle(fontWeight: FontWeight.bold)),
// //                 Text('\$120', style: TextStyle(color: Colors.grey)),
// //               ],
// //             ),
// //           ),
// //           const Text('1x', style: TextStyle(fontWeight: FontWeight.bold)),
// //         ],
// //       ),
// //     );
// //   }
// // }

// import 'package:flutter/material.dart';
// import 'package:furniture_ecommerce/themes/dashboard_theme.dart';

// class ShoppingCartView extends StatelessWidget {
//   const ShoppingCartView({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: DashboardTheme.backgroundColor,
//       appBar: AppBar(
//         backgroundColor: DashboardTheme.backgroundColor,
//         elevation: 0,
//         title: const Text('Shopping Cart'),
//         centerTitle: true,
//       ),
//       body: SafeArea(
//         child: Padding(
//           padding: DashboardTheme.defaultPadding,
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text('Your Items', style: DashboardTheme.greetingStyle),
//               const SizedBox(height: 20),

//               // Cart Items List
//               Expanded(
//                 child: ListView.separated(
//                   itemCount: 3, // Replace with your cart data length
//                   separatorBuilder: (context, index) => const SizedBox(height: 16),
//                   itemBuilder: (context, index) => cartItem(),
//                 ),
//               ),

//               // Total + Checkout
//               const SizedBox(height: 16),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: const [
//                   Text('Total:', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
//                   Text('\$360', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
//                 ],
//               ),
//               const SizedBox(height: 16),
//               SizedBox(
//                 width: double.infinity,
//                 child: ElevatedButton(
//                   onPressed: () {
//                     // Handle checkout
//                   },
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: DashboardTheme.primaryColor,
//                     padding: const EdgeInsets.symmetric(vertical: 16),
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(16),
//                     ),
//                   ),
//                   child: const Text('Proceed to Checkout', style: TextStyle(fontSize: 16)),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   Widget cartItem() {
//     return Container(
//       padding: const EdgeInsets.all(12),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(16),
//         boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 4)],
//       ),
//       child: Row(
//         children: [
//           // Product Image
//           Container(
//             width: 70,
//             height: 70,
//             decoration: BoxDecoration(
//               // ignore: deprecated_member_use
//               color: DashboardTheme.accentColor.withOpacity(0.1),
//               borderRadius: BorderRadius.circular(12),
//             ),
//             child: const Icon(Icons.chair_alt_outlined, size: 40),
//           ),
//           const SizedBox(width: 12),

//           // Product Details
//           Expanded(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: const [
//                 Text('Modern Chair', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
//                 Text('\$120', style: TextStyle(color: Colors.grey)),
//               ],
//             ),
//           ),

//           // Quantity
//           const Text('1x', style: TextStyle(fontSize: 16)),
//         ],
//       ),
//     );
//   }
// }
