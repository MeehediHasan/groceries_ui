import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../utils/asset_paths.dart';

class GroceriesImageSlider extends StatefulWidget {
  const GroceriesImageSlider({
    super.key,
  });

  @override
  State<GroceriesImageSlider> createState() => _GroceriesImageSliderState();
}

class _GroceriesImageSliderState extends State<GroceriesImageSlider> {
  final ValueNotifier<int> _selectedIndex = ValueNotifier(0);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        CarouselSlider(
          options: CarouselOptions(
            height:150,
            autoPlay: true,
            onPageChanged: (index, reason) {
              _selectedIndex.value = index;
            },
            viewportFraction: 1,
          ),
          items: [1, 2, 3, 4, 5].map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  decoration: const BoxDecoration(
                      // color: Colors.grey.shade500,
                      image: DecorationImage(
                          image: AssetImage(AssetPaths.sliderImg,),

                          alignment: Alignment.topCenter,
                          fit: BoxFit.fill)),
                );
              },
            );
          }).toList(),
        ),
        Positioned(
          bottom: 7,
          left: 0,
          right: 0,
          child: ValueListenableBuilder(
              valueListenable: _selectedIndex,
              builder: (context, currentIndex, _) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    for (int i = 0; i < 5; i++)
                      Container(
                        height: 10,
                        width: 12,
                        margin: const EdgeInsets.only(right: 4),
                        decoration: BoxDecoration(
                            color: currentIndex == i
                                ? Colors.green
                                : Colors.grey,
                            borderRadius: BorderRadius.circular(12)),
                      ),
                  ],
                );
              }),
        )
      ],
    );
  }

  @override
  void dispose() {
    _selectedIndex.dispose();
    super.dispose();
  }
}