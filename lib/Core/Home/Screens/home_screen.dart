import 'package:a7kely/color/app_color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = '/home_screen';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset('assets/Images/logo.png'),
        title: Image.asset(
          'assets/Images/name.png',
          alignment: Alignment.topLeft,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'welcome back',
              style: TextStyle(color: AppColor.goldenYellow, fontSize: 40),
            ),
            Text(
              'Monmon,',
              style: GoogleFonts.rubikGemstones(
                textStyle: TextStyle(color: AppColor.mintGreen, fontSize: 40),
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                hintText: 'Search',
                hintStyle: TextStyle(color: AppColor.mintGreen, fontSize: 16),
                prefixIcon: Icon(Icons.search),
                prefixIconColor: AppColor.mintGreen,
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: AppColor.goldenYellow,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(25))),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: AppColor.goldenYellow,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(25))),
              ),
              style: TextStyle(color: AppColor.mintGreen),
            ),
            const SizedBox(height: 20),
            Stack(
              alignment: Alignment.bottomRight,
              children: [
                Stack(
                  alignment: Alignment.topRight,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 220,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(25)),
                          image: DecorationImage(
                            opacity: 0.8,
                            fit: BoxFit.cover,
                            image: AssetImage('assets/Images/story1/cover.png'),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        child: Image.asset(
                          'assets/Images/logo.png',
                          width: 40,
                          height: 40,
                        ),
                      ),
                    )
                  ],
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 8.0, bottom: 12),
                    child: Container(
                      height: 60,
                      width: 225,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(179, 251, 245, 242),
                        borderRadius: BorderRadius.all(Radius.circular(16)),
                      ),
                      child: Center(
                          child: Text(
                        'الفيل فلفول',
                        style: GoogleFonts.reemKufiFun(
                          textStyle: TextStyle(
                            color: AppColor.goldenYellow,
                            fontSize: 40,
                          ),
                        ),
                      )),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
