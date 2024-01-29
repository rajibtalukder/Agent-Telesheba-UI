import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/colors.dart';
import '../../../global_widgets/custom_texts.dart';

Widget buildSubordinate() {
  return Container(
    height: 168.h,
    width: 158.w,
    decoration: BoxDecoration(
        border: Border.all(
            color: secondaryTextColor.withOpacity(0.1), width: 1),
        borderRadius: BorderRadius.circular(14.r)),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(),
        Container(
          height: 64.h,
          width: 64.w,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50.r)),
          child: Image.asset('assets/images/profile.png'),
        ),
        subTitleText('Bari Ahmed',size: 14),
        subTitleText('Target 5/10',size: 8,fontWeight: FontWeight.w400),
        Stack(
          children: [
            Container(
              height: 6.h,
              width: 138.w,
              decoration: BoxDecoration(
                  color: borderColor,
                  borderRadius: BorderRadius.circular(2.r)),
            ),
            Container(
              height: 6.h,
              width: 90.w,
              decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.circular(2.r)),
            ),
            SizedBox(
              height: 10.h,
            )
          ],
        ),
        SizedBox()
      ],
    ),
  );
}