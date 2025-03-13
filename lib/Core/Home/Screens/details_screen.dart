import 'package:a7kely/Core/Home/Screens/play_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../color/app_color.dart';

class DetailsScreen extends StatelessWidget {
  static const String routeName = '/details_screen';
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColor.offWhite,
        body: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.45,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(150),
                    bottomRight: Radius.circular(150)),
                image: DecorationImage(
                  opacity: 0.8,
                  fit: BoxFit.fitHeight,
                  image: AssetImage('assets/Images/story1/cover.png'),
                ),
              ),
            ),
            Text(
              'الفيل فلفول',
              style: GoogleFonts.reemKufiFun(
                textStyle: TextStyle(
                  color: AppColor.goldenYellow,
                  fontSize: 60,
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.45,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fitHeight,
                  image: AssetImage('assets/Images/clipcontainer.png'),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Spacer(
                    flex: 2,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 100, right: 16),
                    child: Directionality(
                      textDirection: TextDirection.rtl,
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          'هو قصة قصيرة موجهة للأطفال قبل النوم. تدور القصة حول الفيل "فلفول" ومغامراته، وتهدف إلى تعليم الأطفال قيمًا إيجابية بأسلوب شيق وممتع.',
                          style: GoogleFonts.marhey(
                            textStyle: TextStyle(
                              color: AppColor.offWhite,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Spacer(
                    flex: 2,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => PlayScreen()));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(179, 251, 245, 242),
                    ),
                    child: Text(
                      'Read Now...',
                      style:
                          TextStyle(fontSize: 24, color: AppColor.goldenYellow),
                    ),
                  ),
                  Spacer(),
                ],
              ),
            ),
          ],
        ));
  }
}
