import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_slider/carousel_slider.dart';

class LatestProductCard extends StatefulWidget {
  const LatestProductCard({super.key});

  @override
  _LatestProductCardState createState() => _LatestProductCardState();
}

class _LatestProductCardState extends State<LatestProductCard> {
  List<String> imagePaths = [
    'assets/latest_product_card/scrollCard1.png',
    'assets/latest_product_card/scrollCard2.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            CarouselSlider.builder(
              itemCount: imagePaths.length,
              itemBuilder: (context, index, realIndex) {
                return Stack(
                  children: [
                    Image.asset(
                      imagePaths[index],
                      fit: BoxFit.cover,
                      height: 225.0,
                    ),
                    Positioned(
                      left: 288.0,
                      top: 60.0,
                      child: Text(
                        ' This \n season\'s \n latest',
                        style: GoogleFonts.playfairDisplay(
                          color: Colors.black,
                          fontSize: 22,
                          backgroundColor: Colors.white,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ],
                );
              },
              options: CarouselOptions(
                autoPlay: false,
                enlargeCenterPage: true,
                aspectRatio: 16 / 9,
                viewportFraction: 0.9,
                initialPage: 0,
                onPageChanged: (index, reason) {
                  setState(() {});
                },
              ),
            ),
            Positioned(
              bottom: 3,
              right: 90,
              child: Container(
                width: 54,
                height: 54,
                decoration: BoxDecoration(
                  color: Colors.black,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(0),
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                    size: 38,
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 3,
              right: 34,
              child: Container(
                width: 54,
                height: 54,
                decoration: BoxDecoration(
                  color: Colors.black,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(0),
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                    size: 38,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
