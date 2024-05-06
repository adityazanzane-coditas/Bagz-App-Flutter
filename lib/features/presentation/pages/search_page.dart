import 'package:bagz_app/features/presentation/widgets/appbar.dart';
import 'package:bagz_app/features/presentation/widgets/bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const CustomAppBar(),
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 340.0, top: 30),
            child: Icon(
              Icons.close,
              color: Color.fromARGB(255, 0, 0, 0),
              size: 24,
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(38, 5, 38, 100),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    style: const TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      hintText: 'Type here to search',
                      hintStyle: GoogleFonts.workSans(
                        fontSize: 21,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
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
