import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';


class AnimatedCarouselSlider extends StatefulWidget {
  @override
  State<AnimatedCarouselSlider> createState() => _AnimatedCarouselSliderState();
}

class _AnimatedCarouselSliderState extends State<AnimatedCarouselSlider> {
  final List<CarouselSliderItem> items = [

    CarouselSliderItem(
        animation: 'assets/animations/map_with_marker.json',
        title: 'Book Your Seat'
    ),
    CarouselSliderItem(
        animation: 'assets/animations/map_with_marker.json',
        title: 'Track Your Bus'
    ),
    CarouselSliderItem(
        animation: 'assets/animations/map_with_marker.json',
        title: 'Student Assistant'
    ),

    CarouselSliderItem(
        animation: 'assets/animations/map_with_marker.json',
        title: 'Asked to AI!'
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          items: items.map((item) {
            return Container(
              width: MediaQuery
                  .of(context)
                  .size
                  .width,
              margin: const EdgeInsets.symmetric(horizontal: 2),
              decoration: BoxDecoration(
                color: Theme
                    .of(context)
                    .brightness == Brightness.dark
                    ? Colors.white.withOpacity(0.09)
                    : Colors.teal.withOpacity(0.09),

                borderRadius: BorderRadius.circular(8),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  //crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Lottie animation widget
                    Expanded(
                      child: Lottie.asset(
                        item.animation,
                        width: double.infinity, // Set your desired width
                        height: double.infinity, // Set your desired height
                        fit: BoxFit.contain,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      item.title,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w900,
                        color: Theme
                            .of(context)
                            .brightness == Brightness.dark
                            ? Colors.white
                            : Colors.black,
                        //color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            );
          }).toList(),
          options: CarouselOptions(
            height: 200,
            aspectRatio: 16 / 9,
            viewportFraction: 0.95,
            initialPage: 0,
            enableInfiniteScroll: true,
            reverse: false,
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 5),
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
            enlargeCenterPage: true,
            enlargeFactor: 0.3,
            onPageChanged: (index, reason) {
              print('Page changed: $index');
            },
            scrollDirection: Axis.horizontal,
          ),
        ),
      ],
    );
  }
}


class CarouselSliderItem {

  final String animation;
  final String title;

  CarouselSliderItem({required this.animation, required this.title});
}