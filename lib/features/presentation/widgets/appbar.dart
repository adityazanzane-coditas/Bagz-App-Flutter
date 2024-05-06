import 'package:bagz_app/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              'assets/appBar/menuBar.png',
              height: 35,
            ),
            Text(
              'bagzz',
              style: AppTextStyles.appBarTitle,
            ),
          ],
        ),
        Image.asset(
          'assets/appBar/profile.png',
          height: 35,
        ),
      ],
    );
  }
}
