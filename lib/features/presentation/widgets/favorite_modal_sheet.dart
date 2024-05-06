import 'package:bagz_app/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FavoriteModalSheet extends StatelessWidget {
  const FavoriteModalSheet({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double halfScreenHeight = screenHeight * 0.65;

    return Container(
      height: halfScreenHeight,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(22),
          topRight: Radius.circular(22),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 40,
          ),
          Row(
            children: [
              Image.asset(
                'assets/bottom_modal_sheet/smallbag1.png',
                width: 210,
              ),
              const SizedBox(height: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Berkely',
                    style: AppTextStyles.productDetailName,
                  ),
                  const SizedBox(height: 4),
                  Text(
                    'Wallet with chain',
                    style: GoogleFonts.workSans(
                      fontSize: 14,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    'Style #36252 0YK0G 1000',
                    style: GoogleFonts.workSans(
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'REMOVE',
                    style: GoogleFonts.workSans(
                      fontSize: 14,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    '_____________',
                    style: GoogleFonts.workSans(
                      fontSize: 8,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const Divider(
            color: Colors.black,
            thickness: 1,
            height: 5,
            indent: 44,
            endIndent: 44,
          ),
          Row(
            children: [
              Image.asset(
                'assets/bottom_modal_sheet/smallbag2.png',
                width: 210,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Capucinus',
                    style: AppTextStyles.productDetailName,
                  ),
                  const SizedBox(height: 4),
                  Text(
                    'Wallet with chain',
                    style: GoogleFonts.workSans(
                      fontSize: 14,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    'Style #36252 0YK0G 1000',
                    style: GoogleFonts.workSans(
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'REMOVE',
                    style: GoogleFonts.workSans(
                      fontSize: 14,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    '_____________',
                    style: GoogleFonts.workSans(
                      fontSize: 8,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.black),
                padding: MaterialStateProperty.all(
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 10)),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0),
                )),
              ),
              child: Text(
                'ADD ALL TO CART',
                style: GoogleFonts.workSans(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
