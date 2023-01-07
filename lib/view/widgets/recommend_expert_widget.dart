import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:oranostask/utils/app_images.dart';

class RecommendExpert extends StatelessWidget {
  final String picturePath;
  final String rate;
  final String expertName;

  const RecommendExpert(
      {Key? key,
      required this.expertName,
      required this.picturePath,
      required this.rate})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(picturePath),
            SizedBox(
              height: 11.h,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset(AppImages.starIcon),
                          SizedBox(
                            width: 5.w,
                          ),
                          Text("$rate"),
                        ],
                      ),
                      SvgPicture.asset(AppImages.heartIcon),
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    '$expertName',
                    style: const TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  const Text(
                    'Supply Chain',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
