import 'package:flutter/material.dart';

import '../ui/groceries_item_details_screen.dart';

class FruitCard extends StatelessWidget {
  const FruitCard({
    super.key,
    required this.fruitName,
    required this.weight,
    required this.fruitImg,
  });

  final String fruitName;
  final String weight;
  final String fruitImg;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const GroceriesItemDetailsScreen(),
          ),
        );
      },
      child: SingleChildScrollView(
        child: Card(
          borderOnForeground: true,
          surfaceTintColor: Colors.white,
          shadowColor: Colors.black,
          color: Colors.white,
          elevation: 6,
          child: SizedBox(
            width: 160, // Width set explicitly
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Image Section
                Container(
                  width: double.infinity, // Take up full width
                  height: 100,
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(8),
                      topRight: Radius.circular(8),
                    ),
                    image: DecorationImage(
                      image: AssetImage(fruitImg),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                // Text Section
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        fruitName,
                        maxLines: 1,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(height: 3), // Adjusted spacing
                      Text(
                        weight,
                        maxLines: 1,
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey.shade500,
                        ),
                      ),
                      const SizedBox(height: 5), // Adjusted spacing
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // Price
                          const Text(
                            '\$4.99',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                              fontSize: 22,
                            ),
                          ),
                          // Add Button
                          Card(
                            surfaceTintColor: Colors.red,
                            color: Colors.green.shade500,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.all(4.0),
                              child: Icon(
                                Icons.add,
                                size: 26,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
