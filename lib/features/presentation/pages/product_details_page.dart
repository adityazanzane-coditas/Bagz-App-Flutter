import 'package:bagz_app/core/utils/app_text_styles.dart';
import 'package:bagz_app/features/presentation/widgets/appbar.dart';
import 'package:bagz_app/features/presentation/widgets/bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductDetailsPage extends StatefulWidget {
  const ProductDetailsPage({super.key});

  @override
  _ProductDetailsPageState createState() => _ProductDetailsPageState();
}

class _ProductDetailsPageState extends State<ProductDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const CustomAppBar(),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 360.0,
                ),
                child: Image.asset(
                  'assets/icons/favorite_img.png',
                ),
              ),
              Row(
                children: [
                  Image.asset(
                    'assets/details_page/dP_bag1.png',
                    width: 210,
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
                      const SizedBox(height: 10),
                      ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.black),
                          padding: MaterialStateProperty.all(
                              const EdgeInsets.symmetric(
                                  horizontal: 14, vertical: 6)),
                          shape:
                              MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(0),
                          )),
                        ),
                        child: Text(
                          'BUY NOW',
                          style: GoogleFonts.workSans(
                            fontSize: 15,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      const SizedBox(height: 8),
                      Container(
                        decoration: const BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: Colors.black,
                              width: 2,
                            ),
                          ),
                        ),
                        child: Text(
                          'ADD TO CART',
                          style: GoogleFonts.workSans(
                            fontSize: 14,
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 46),
              DefaultTabController(
                length: 3,
                child: Column(
                  children: [
                    TabBar(
                      indicatorColor: Colors.black,
                      labelColor: Colors.black,
                      unselectedLabelColor: Colors.black,
                      tabs: [
                        Tab(
                            child: Text('Description',
                                style: GoogleFonts.workSans(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700))),
                        Tab(
                            child: Text('Shipping info',
                                style: GoogleFonts.workSans(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700))),
                        Tab(
                            child: Text('Payment options',
                                style: GoogleFonts.workSans(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700))),
                      ],
                    ),
                    SizedBox(
                      height: 400,
                      child: TabBarView(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(height: 18),
                                Text(
                                  'As in handbags, the double ring and bar design defines the wallet shape, highlighting the front flap closure which is tucked inside the hardware. Completed with an organizational interior, the black leather wallet features a detachable chain.',
                                  style: GoogleFonts.workSans(
                                    fontSize: 15,
                                    color: const Color(0xFF5B5B5B),
                                  ),
                                ),
                                const SizedBox(height: 28),
                                Text(
                                  'Material & care',
                                  style: GoogleFonts.workSans(
                                    fontSize: 16,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                const SizedBox(height: 18),
                                Text(
                                  'All products are made with carefully selected materials. Please handle with care for longer product life. \n - Protect from direct light, heat and rain. Should it become wet, dry it immediately with a soft cloth \n - Store in the provided flannel bag or box \n - Clean with a soft, dry cloth',
                                  style: GoogleFonts.workSans(
                                    fontSize: 15,
                                    color: const Color(0xFF5B5B5B),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(height: 18),
                                Text(
                                  'Pre-order, Made to Order and DIY items will ship on the estimated date noted on the product description page. These items will ship through Premium Express once they become available.',
                                  style: GoogleFonts.workSans(
                                    fontSize: 15,
                                    color: const Color(0xFF5B5B5B),
                                  ),
                                ),
                                const SizedBox(height: 28),
                                Text(
                                  'Return policy',
                                  style: GoogleFonts.workSans(
                                    fontSize: 16,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                const SizedBox(height: 18),
                                Text(
                                  'Returns may be made by mail or in store. The return window for online purchases is 30 days (10 days in the case of beauty items) from the date of delivery. You may return products by mail using the complimentary prepaid return label included with your order, and following the return instructions provided in your digital invoice.',
                                  style: GoogleFonts.workSans(
                                    fontSize: 15,
                                    color: const Color(0xFF5B5B5B),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(height: 28),
                                Text(
                                  'We accepts the following forms of payment for online purchases:',
                                  style: GoogleFonts.workSans(
                                    fontSize: 15,
                                    color: const Color(0xFF5B5B5B),
                                  ),
                                ),
                                const SizedBox(height: 38),
                                Text(
                                  'PayPal may not be used to purchase Made to Order Décor or DIY items.',
                                  style: GoogleFonts.workSans(
                                    fontSize: 15,
                                    color: const Color(0xFF5B5B5B),
                                  ),
                                ),
                                const SizedBox(height: 18),
                                Text(
                                  'The full transaction value will be charged to your credit card after we have verified your card details, received credit authorisation, confirmed availability and prepared your order for shipping. For Made To Order, DIY, personalised and selected Décor products, payment will be taken at the time the order is placed.',
                                  style: GoogleFonts.workSans(
                                    fontSize: 15,
                                    color: const Color(0xFF5B5B5B),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
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
