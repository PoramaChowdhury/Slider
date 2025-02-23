import 'package:carouselslider/animated_slider.dart';
import 'package:carouselslider/carousel_slider_widget.dart';
import 'package:flutter/material.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
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
      ),
      body: ListView(
        children: [
          const CarouselSliderWidget(), // Carousel Slider 1
          const SizedBox(height: 20),
           AnimatedCarouselSlider(), // Carousel Slider 2
          const SizedBox(height: 20),
          //const TextImageSlider(), // Carousel Slider 3
        ],
      ),
    );
  }
}