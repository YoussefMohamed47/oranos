import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oranostask/view/screens/get_started_screen.dart';
import 'package:page_transition/page_transition.dart';

import '../../utils/app_images.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Image.asset(
          AppImages.startbgdImg,
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.cover,
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0.0,
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          "Oranos",
                          style: TextStyle(
                            fontSize: 42.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          '.',
                          style: TextStyle(
                            fontSize: 80.sp,
                            color: Color(0xff16919B),
                          ),
                        )
                      ],
                    ),
                    Text(
                      'Expert From Every Planet',
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 16.sp,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    // Get Started Button
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 26.0),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              PageTransition(
                                child: GetStartedPage(),
                                type: PageTransitionType.rightToLeftWithFade,
                              ));
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: 30.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: const Color(0xff16919B),
                          ),
                          child: const Center(
                            child: Text(
                              'Get Started',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 22,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Don\'t Have Account ? ',
                        ),
                        Text(
                          'Sign up',
                          style: TextStyle(color: Color(0xff16919B)),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 8,
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
                    SizedBox(
                      height: 16,
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
