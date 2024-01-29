import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/colors.dart';
import '../../../global_widgets/custom_texts.dart';

Widget buildProfileHeader(BuildContext context) {
  return Container(
    padding: EdgeInsets.fromLTRB(20.w, 30.h, 20.h, 0),
    height: 168.h,
    color: primaryColor,
    child: Row(
      children: [
        Container(
          height: 68.h,
          width: 68.w,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(50.r))),
          child: Image.asset('assets/images/profile.png'),
        ),
        SizedBox(width: 10.w),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            subTitleText('Andrew Lorin', size: 26, color: white),
            subTitleText('Kazla, Rajshshi',
                size: 15, fontWeight: FontWeight.w500, color: white)
          ],
        ),

        SizedBox(width: 50.w),
        GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Container(
            height: 40.h,
            width: 40.w,
            decoration: BoxDecoration(
              border: Border.all(
                  color: secondaryTextColor.withOpacity(0.1), width: 1),
              color: Colors.white.withOpacity(0.3),
              borderRadius: BorderRadius.all(
                Radius.circular(12.r),
              ),
            ),
            child: const Icon(
              Icons.arrow_back_ios,
              color: white,
              size: 14,
            ),
          ),
        ),

      ],
    ),
  );
}