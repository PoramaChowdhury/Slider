import 'package:carouselslider/animated_slider.dart';
import 'package:carouselslider/carousel_slider_widget.dart';
import 'package:carouselslider/image_slider.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Carousel Sliders"),
        backgroundColor: const Color(0xFF07ADAE),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const Text(
            'Offer Slider',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          const CarouselSliderWidget(), // Carousel Slider 1
          const SizedBox(height: 16),
          const Text(
            'Animated Slider',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          AnimatedCarouselSlider(), // Carousel Slider 2
          const SizedBox(height: 16),
          const Text(
            'Image Slider',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          const ImageCarouselSlider(), // Carousel Slider 3
        ],
      ),
    );
  }
}
