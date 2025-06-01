import 'package:flutter/material.dart';

class ShoppingCartView extends StatefulWidget {
  const ShoppingCartView({super.key});

  @override
  State<ShoppingCartView> createState() => _ShoppingCartViewState();
}

class _ShoppingCartViewState extends State<ShoppingCartView> {
  // Dummy cart items
  List<Map<String, dynamic>> cartItems = [
    {
      "name": "Modern Sofa",
      "price": 499.99,
      "quantity": 1,
      "image": "assets/images/sofa.jpg"
    },
    {
      "name": "Wooden Chair",
      "price": 149.50,
      "quantity": 2,
      "image": "assets/images/chair.jpg"
    },
  ];

  double getTotalPrice() {
    return cartItems.fold(0.0, (total, item) => total + (item["price"] * item["quantity"]));
  }

  void increaseQuantity(int index) {
    setState(() {
      cartItems[index]["quantity"]++;
    });
  }

  void decreaseQuantity(int index) {
    setState(() {
      if (cartItems[index]["quantity"] > 1) {
        cartItems[index]["quantity"]--;
      }
    });
  }

  void removeItem(int index) {
    setState(() {
      cartItems.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shopping Cart'),
        backgroundColor: Colors.brown.shade700,
        foregroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: cartItems.length,
              itemBuilder: (context, index) {
                final item = cartItems[index];
                return Card(
                  margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  child: ListTile(
                    leading: Image.asset(
                      item["image"],
                      width: 60,
                      height: 60,
                      fit: BoxFit.cover,
                    ),
                    title: Text(item["name"]),
                    subtitle: Text("\$${item["price"].toStringAsFixed(2)}"),
                    trailing: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            IconButton(
                              icon: const Icon(Icons.remove),
                              onPressed: () => decreaseQuantity(index),
                            ),
                            Text('${item["quantity"]}'),
                            IconButton(
                              icon: const Icon(Icons.add),
                              onPressed: () => increaseQuantity(index),
                            ),
                          ],
                        ),
                        TextButton(
                          onPressed: () => removeItem(index),
                          child: const Text(
                            'Remove',
                            style: TextStyle(color: Colors.red),
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.brown.shade100,
              borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
              boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 10)],
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('Total:', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                    Text('\$${getTotalPrice().toStringAsFixed(2)}',
                        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  ],
                ),
                const SizedBox(height: 12),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      // TODO: Add checkout logic
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.brown.shade700,
                      padding: const EdgeInsets.symmetric(vertical: 14),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                    ),
                    child: const Text('Checkout', style: TextStyle(fontSize: 16)),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
