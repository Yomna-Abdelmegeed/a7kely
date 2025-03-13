import 'package:a7kely/color/app_color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PlayScreen extends StatelessWidget {
  static const String routeName = '/play_screen';
  const PlayScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.offWhite,
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.35,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                opacity: 0.8,
                fit: BoxFit.fill,
                image: AssetImage('assets/Images/story1/cover.png'),
              ),
            ),
          ),
          Spacer(),
          Directionality(
            textDirection: TextDirection.rtl,
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: Text(
                'فلفول قال لنفسه: "لأ، كده مينفعش! أنا لازم أروح للنمر وأقوله ميفضلش يخوف حد، مش عشان هو قوي يبقى يخوف كل الحيوانات!',
                style: GoogleFonts.marhey(
                  textStyle: TextStyle(
                    color: AppColor.goldenYellow,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ),
          Spacer(flex: 2),
          Container(
            height: MediaQuery.of(context).size.height * 0.15,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage('assets/Images/clipplay.png'),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                    onPressed: () {},
                    color: AppColor.offWhite,
                    style: IconButton.styleFrom(),
                    icon: Icon(
                      Icons.arrow_back_ios_rounded,
                      size: 40,
                    )),
                IconButton(
                    onPressed: () {},
                    color: AppColor.offWhite,
                    style: IconButton.styleFrom(),
                    icon: Icon(
                      Icons.play_circle_outline_rounded,
                      size: 80,
                    )),
                IconButton(
                    onPressed: () {},
                    color: AppColor.offWhite,
                    style: IconButton.styleFrom(),
                    icon: Icon(
                      Icons.arrow_forward_ios_rounded,
                      size: 40,
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
