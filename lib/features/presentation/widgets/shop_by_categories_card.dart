import 'package:bagz_app/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class ShopByCategoriesCard extends StatelessWidget {
  const ShopByCategoriesCard({
    super.key,
    required this.imageUrl,
    required this.title,
  });

  final String imageUrl;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
          child: Image.asset(
            imageUrl,
            fit: BoxFit.cover,
            height: 250,
            width: 250,
          ),
        ),
        Positioned(
          bottom: 12,
          right: 0,
          child: Material(
            color: Colors.black,
            borderRadius: BorderRadius.circular(0.0),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 12.0, vertical: 6.0),
              child: Text(
                title,
                style: AppTextStyles.categoryTitle,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
