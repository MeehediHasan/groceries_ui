import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:groceries/widgets/groceris_slider.dart';
import 'package:groceries/widgets/search_text_field.dart';

import '../utils/asset_paths.dart';
import '../widgets/fruit_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              CupertinoIcons.location_solid,
            ),
            Text(
              ' Dhaka, Banassre',
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SearchTextField(
                textEditingController: TextEditingController(),
                hintText: 'Search Store',
              ),
              const SizedBox(height: 16),
              const GroceriesImageSlider(),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Exclusive Offers",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 20,
                          letterSpacing: 1),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "See all",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.green,
                          fontSize: 16,
                          letterSpacing: 1),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 250,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      FruitCard(
                        fruitImg: AssetPaths.appleImg,
                        fruitName: 'Red Apple',
                        weight: '1kg, 10 Pieces',
                      ),
                      FruitCard(
                        fruitImg: AssetPaths.bananaImg,
                        fruitName: 'Banana',
                        weight: '1kg, 10 Pieces',
                      ),
                      FruitCard(
                        fruitImg: AssetPaths.appleImg,
                        fruitName: 'Red Apple',
                        weight: '1kg, 10 Pieces',
                      ),
                      FruitCard(
                        fruitImg: AssetPaths.bananaImg,
                        fruitName: 'Banana',
                        weight: '1kg, 10 Pieces',
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Best Selling",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 20,
                          letterSpacing: 1),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "See all",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.green,
                          fontSize: 16,
                          letterSpacing: 1),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              const SizedBox(
                height: 220,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      FruitCard(
                          fruitName: "Red Chillis",
                          weight: "2kilo",
                          fruitImg: AssetPaths.capsicumImg),
                      FruitCard(
                          fruitName: "BD Ginger",
                          weight: "2kilo,  24 pieces",
                          fruitImg: AssetPaths.gingerImg),
                      FruitCard(
                          fruitName: "BD Ginger",
                          weight: "2kilo,  24 pieces",
                          fruitImg: AssetPaths.gingerImg),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
