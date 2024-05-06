import 'package:bagz_app/core/utils/app_text_styles.dart';
import 'package:bagz_app/features/presentation/pages/product_details_page.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
    required this.imageUrl,
    required this.title,
  });

  final String imageUrl;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: const BeveledRectangleBorder(),
      elevation: 1.0,
      color: const Color(0xFFF1F1F1),
      child: Stack(
        children: [
          Column(
            children: [
              Expanded(
                child: Image.asset(
                  imageUrl,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  title,
                  style: AppTextStyles.productTitle,
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ProductDetailsPage()),
                  );
                },
                child: Text(
                  'SHOP NOW',
                  style: AppTextStyles.shopNowText,
                ),
              ),
              const Divider(
                color: Colors.black,
                thickness: 2,
                height: 5,
                indent: 44,
                endIndent: 44,
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
          Positioned(
            top: 0,
            right: 0,
            child: IconButton(
              onPressed: () {},
              icon: Image.asset('assets/icons/Vectorheart.png'),
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
