import 'package:bagz_app/core/utils/app_text_styles.dart';
import 'package:bagz_app/features/presentation/widgets/appbar.dart';
import 'package:bagz_app/features/presentation/widgets/bottom_nav_bar.dart';
import 'package:bagz_app/features/presentation/widgets/latest_product_card.dart';
import 'package:bagz_app/features/presentation/widgets/product_card.dart';
import 'package:bagz_app/features/presentation/widgets/shop_by_categories_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const CustomAppBar(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 12),
            const LatestProductCard(),
            const SizedBox(height: 16.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: GridView.count(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                crossAxisCount: 2,
                crossAxisSpacing: 16.0,
                mainAxisSpacing: 16.0,
                childAspectRatio: 0.8,
                children: const [
                  ProductCard(
                    imageUrl: 'assets/product_card/bag1.png',
                    title: 'Artsy',
                  ),
                  ProductCard(
                    imageUrl: 'assets/product_card/bag2.png',
                    title: 'Berkely',
                  ),
                  ProductCard(
                    imageUrl: 'assets/product_card/bag3.png',
                    title: 'Capucinus',
                  ),
                  ProductCard(
                    imageUrl: 'assets/product_card/bag4.png',
                    title: 'Monogramm',
                  ),
                ],
              ),
            ),
            TextButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                side: const BorderSide(
                  color: Colors.black,
                  width: 1.0,
                ),
                shape: const RoundedRectangleBorder(),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Text(
                  'CHECK ALL LATEST',
                  style: AppTextStyles.checkAllLatestText,
                ),
              ),
            ),
            const SizedBox(
              height: 35,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [
                  Text(
                    'Shop by categories',
                    style: AppTextStyles.categoriesTitle,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: GridView.count(
                shrinkWrap: true,
                crossAxisCount: 2,
                crossAxisSpacing: 16.0,
                mainAxisSpacing: 16.0,
                childAspectRatio: 0.7,
                children: const [
                  ShopByCategoriesCard(
                    imageUrl: 'assets/shop_by_categories_card/sbcImg1.png',
                    title: 'Handle bags',
                  ),
                  ShopByCategoriesCard(
                    imageUrl: 'assets/shop_by_categories_card/sbcImg2.png',
                    title: 'Crossbody bags',
                  ),
                  ShopByCategoriesCard(
                    imageUrl: 'assets/shop_by_categories_card/sbcImg3.png',
                    title: 'Shoulder bags',
                  ),
                  ShopByCategoriesCard(
                    imageUrl: 'assets/shop_by_categories_card/sbcImg4.png',
                    title: 'Tote bag',
                  ),
                ],
              ),
            ),
            TextButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                side: const BorderSide(
                  color: Colors.black,
                  width: 1.0,
                ),
                shape: const RoundedRectangleBorder(),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 2),
                child: Text(
                  'BROWSE ALL CATEGORIES',
                  style: AppTextStyles.checkAllLatestText,
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: SizedBox(
        width: 396,
        child: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.white,
          elevation: 2,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          child: const CustomBottomNavigationBar(),
        ),
      ),
    );
  }
}
