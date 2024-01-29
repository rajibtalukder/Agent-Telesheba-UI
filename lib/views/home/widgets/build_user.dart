import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/colors.dart';
import '../../../global_widgets/custom_texts.dart';

Widget buildUser({bool isMarkButton= true}) {
  return Container(
    height: 83.h,
    width: 335.w,
    padding:
    EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
    decoration: BoxDecoration(
        border: Border.all(
            color: secondaryTextColor.withOpacity(0.1), width: 1),
        borderRadius: BorderRadius.circular(14.r)),
    child: Row(
      children: [
        Container(
          height: 60.h,
          width: 60.w,
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
            subTitleText('Asif Ali',
                size: 14, fontWeight: FontWeight.w500),
            subTitleText('ID: #07956945096',
                size: 8,
                fontWeight: FontWeight.w400,
                color: secondaryTextColor),
            Row(
              children: [
                Container(
                  height: 18.h,
                  width: 60.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(2.r),
                    color: primaryColor,
                  ),
                  child: subTitleText('See Details',
                      size: 10,
                      textCenter: true,
                      color: white,
                      fontWeight: FontWeight.w400),
                ),
                SizedBox(width: 8.w),
               isMarkButton==true? Container(
                  height: 18.h,
                  width: 96.w,
                  decoration: BoxDecoration(
                    border: Border.all(color: primaryColor,width: 0.7),
                    borderRadius: BorderRadius.circular(2.r),
                  ),
                  child: subTitleText('Mark As Card Given',
                      size: 10,
                      textCenter: true,
                      color: primaryColor,
                      fontWeight: FontWeight.w400),
                ): SizedBox(),
              ],
            )
          ],
        ),
      ],
    ),
  );
}