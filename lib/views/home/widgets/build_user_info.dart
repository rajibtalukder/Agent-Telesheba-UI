import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/colors.dart';
import '../../../global_widgets/custom_texts.dart';

Widget buildUserInfo() {
  return Container(
    height: 104.h,
    width: 335.w,
    padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
    decoration: BoxDecoration(
        border: Border.all(
            color: secondaryTextColor.withOpacity(0.1), width: 1),
        borderRadius: BorderRadius.circular(14.r)),
    child: Row(
      children: [
        Container(
          height: 88.h,
          width: 88.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.r),
          ),
          child: Image.asset('assets/images/samiul.png'),
        ),
        SizedBox(width: 10.w),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            subTitleText('Samiul Islam', size: 15),
            subTitleText('ID: #07956945096',
                size: 8,
                fontWeight: FontWeight.w400,
                color: secondaryTextColor),
            subTitleText('Target Today 5/10',
                size: 8,
                fontWeight: FontWeight.w400,
                color: blackTextColor),
            Stack(
              children: [
                Container(
                  height: 4.h,
                  width: 200.w,
                  decoration: BoxDecoration(
                      color: borderColor,
                      borderRadius: BorderRadius.circular(2.r)),
                ),
                Container(
                  height: 4.h,
                  width: 130.w,
                  decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.circular(2.r)),
                ),
                SizedBox(
                  height: 10.h,
                )
              ],
            ),
            const SizedBox()
          ],
        ),
      ],
    ),
  );
}