import 'package:bagz_app/features/presentation/pages/home_page.dart';
import 'package:bagz_app/features/presentation/pages/search_page.dart';
import 'package:bagz_app/features/presentation/widgets/cart_modal_sheet.dart';
import 'package:bagz_app/features/presentation/widgets/favorite_modal_sheet.dart';
import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  void _openFavoriteButtonPressed() {
    showModalBottomSheet(
      isScrollControlled: true,
      backgroundColor: Colors.white.withOpacity(0.9),
      barrierColor: Colors.transparent,
      context: context,
      builder: (ctx) => const FavoriteModalSheet(),
    );
  }

  void _openCartButtonPressed() {
    showModalBottomSheet(
      isScrollControlled: true,
      backgroundColor: Colors.white.withOpacity(0.9),
      barrierColor: Colors.transparent,
      context: context,
      builder: (ctx) => const CartModalSheet(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        const SizedBox(width: 14),
        IconButton(
          icon: const Icon(Icons.home_filled, color: Colors.black),
          iconSize: 28,
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const HomePage()),
            );
          },
        ),
        const SizedBox(width: 26),
        IconButton(
          icon: Image.asset('assets/icons/search.png'),
          iconSize: 28,
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const SearchPage()),
            );
          },
        ),
        const SizedBox(width: 26),
        IconButton(
          icon: Image.asset('assets/icons/heart.png'),
          iconSize: 28,
          onPressed: _openFavoriteButtonPressed,
        ),
        const SizedBox(width: 28),
        Stack(
          children: [
            IconButton(
              icon: Image.asset('assets/icons/cart.png'),
              iconSize: 28,
              onPressed: _openCartButtonPressed,
            ),
            Positioned(
              right: 0,
              top: 0,
              child: Container(
                padding: const EdgeInsets.all(4.0),
                decoration: const BoxDecoration(
                  color: Colors.black,
                  shape: BoxShape.circle,
                ),
                child: const Text(
                  '2',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(width: 28),
      ],
    );
  }
}
