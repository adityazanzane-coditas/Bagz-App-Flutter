import 'package:bagz_app/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CartModalSheet extends StatelessWidget {
  const CartModalSheet({super.key});

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
            height: 60,
          ),
          Row(
            children: [
              Column(
                children: [
                  Row(
                    children: [
                      Image.asset(
                        'assets/bottom_modal_sheet/smallbag3.png',
                        width: 210,
                        height: 100,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 30,
                        height: 30,
                        color: Colors.black,
                        child: const Center(
                          child: Text(
                            '-',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 16),
                      const Text(
                        '1',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(width: 16),
                      Container(
                        width: 30,
                        height: 30,
                        color: Colors.black,
                        child: const Center(
                          child: Text(
                            '+',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Artsy',
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
                    '\$564',
                    style: GoogleFonts.workSans(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          const Divider(
            color: Colors.black,
            thickness: 1,
            height: 5,
            indent: 44,
            endIndent: 44,
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            children: [
              Column(
                children: [
                  Image.asset(
                    'assets/bottom_modal_sheet/smallbag4.png',
                    width: 210,
                    height: 100,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 30,
                        height: 30,
                        color: Colors.black,
                        child: const Center(
                          child: Text(
                            '-',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 16),
                      const Text(
                        '2',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(width: 16),
                      Container(
                        width: 30,
                        height: 30,
                        color: Colors.black,
                        child: const Center(
                          child: Text(
                            '+',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Monogram',
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
                    '\$1638',
                    style: GoogleFonts.workSans(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 60,
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
                'PROCEED TO BUY',
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
