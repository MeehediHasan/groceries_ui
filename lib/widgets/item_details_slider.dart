import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../utils/asset_paths.dart';

class ItemDetailsSlider extends StatefulWidget {
  const ItemDetailsSlider({
    super.key,
  });

  @override
  State<ItemDetailsSlider> createState() => _ItemDetailsSliderState();
}

class _ItemDetailsSliderState extends State<ItemDetailsSlider> {
  final ValueNotifier<int> _selectedIndex = ValueNotifier(0);
  List<String> images = [
    AssetPaths.appleImg,
    AssetPaths.bananaImg,
    AssetPaths.gingerImg,
    AssetPaths.capsicumImg,
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            height: 220,
            onPageChanged: (index, reason) {
              _selectedIndex.value = index;
            },
            viewportFraction: 1,
          ),
          items: images.map((imagePath) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  decoration: BoxDecoration(
                    color: Colors.white24,
                    image: DecorationImage(
                      image: AssetImage(imagePath),
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              },
            );
          }).toList(),
        ),
        Positioned(
          bottom: 12,
          left: 0,
          right: 0,
          child: ValueListenableBuilder(
            valueListenable: _selectedIndex,
            builder: (context, currentIndex, _) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  for (int i = 0; i < images.length; i++)
                    Container(
                      height: 5,
                      width: 16,
                      margin: const EdgeInsets.only(right: 4),
                      decoration: BoxDecoration(
                        color: currentIndex == i
                            ? Colors.green
                            : Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(18),
                      ),
                    )
                ],
              );
            },
          ),
        ),
      ],
    );
  }

  @override
  void dispose() {
    _selectedIndex.dispose();
    super.dispose();
  }
}
