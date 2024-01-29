import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/colors.dart';
import '../../../global_widgets/custom_texts.dart';

Widget buildRegisterNewUser() {
  return Container(
    height: 114.h,
    decoration: BoxDecoration(
      color: Color(0xff94EDD8),
      borderRadius: BorderRadius.all(Radius.circular(8.r)),
    ),
    child: Row(
      children: [
        Container(
          padding: EdgeInsets.fromLTRB(10.w, 10.h, 10.w, 0),
          height: 84.h,
          width: 127.w,
          child: Image.asset(
            'assets/images/register user.png',
            fit: BoxFit.contain,
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 15.h),
            subTitleText('Register New User', size: 13),
            subTitleText('Register new clients',
                size: 10, fontWeight: FontWeight.w300),
            SizedBox(height: 10.h),
            Container(
              height: 30.h,
              width: 110.w,
              decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius:
                  BorderRadius.all(Radius.circular(4.r))),
              child: Center(
                  child: subTitleText('Add User',
                      color: white, size: 10)),
            )
          ],
        )
      ],
    ),
  );
}