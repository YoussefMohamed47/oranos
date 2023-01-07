import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oranostask/utils/app_images.dart';
import 'package:oranostask/view/screens/home_screen.dart';
import 'package:page_transition/page_transition.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
      ),
      body: Stack(
        children: [
          Image.asset(
            AppImages.getStartedLogo,
            width: MediaQuery.of(context).size.width,
            scale: .85,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(),
              SizedBox(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    maxLines: 3,
                    text: TextSpan(
                      style: const TextStyle(
                        letterSpacing: 0.2,
                        wordSpacing: 1,
                        color: Colors.black,
                      ),
                      children: [
                        TextSpan(
                          text: 'Hi, My name is ',
                          style: TextStyle(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        TextSpan(
                          text: "Oranobot ",
                          style: TextStyle(
                            fontSize: 22.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text:
                              ' \nI will always be there to help \nand assist you.',
                          style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  Text(
                    'Say Start To go to Next.',
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
              // Img and Next Button
              SizedBox(),
              Column(
                children: [
                  Image.asset(
                    AppImages.robotImg,
                  ),
                  SizedBox(
                    height: 25.h,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 26.0),
                    child: InkWell(
                      onTap: () {
                        // must go to chat first
                        Navigator.push(
                            context,
                            PageTransition(
                              child: HomeScreen(),
                              type: PageTransitionType.rightToLeftWithFade,
                            ));
                      },
                      child: Container(
                        width: 137.w,
                        height: 40.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: const Color(0xff16919B),
                        ),
                        child: const Center(
                          child: Text(
                            'Next',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(AppImages.earthImg),
                  const SizedBox(
                    width: 4,
                  ),
                  Text("English"),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
