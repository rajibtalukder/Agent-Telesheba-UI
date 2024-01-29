import 'package:agent_telesheba/constants/colors.dart';
import 'package:agent_telesheba/global_widgets/custom_texts.dart';
import 'package:agent_telesheba/global_widgets/normal_button.dart';
import 'package:agent_telesheba/views/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 40.h),
                subTitleText('Welcome', size: 30, fontWeight: FontWeight.w700),
                subTitleText('Sign in to continue',
                    color: secondaryTextColor,
                    size: 12,
                    fontWeight: FontWeight.w400),
                SizedBox(height: 30.h),
                Container(
                  height: 488.h,
                  width: 375.w,
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.w, vertical: 30.h),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: bgWhite.withOpacity(0.8),
                        spreadRadius: 3,
                        blurRadius: 8,
                        offset: const Offset(0, 2), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      subTitleText('Phone number',
                          color: secondaryTextColor,
                          fontWeight: FontWeight.w400,
                          size: 12),
                      buildAuthTextField(
                          '+44 213 032 578', TextEditingController()),
                      SizedBox(height: 20.h),
                      subTitleText('Roll Number',
                          color: secondaryTextColor,
                          fontWeight: FontWeight.w400,
                          size: 12),
                      buildAuthTextField(
                          '* * * * * * * * * * * *', TextEditingController()),
                      SizedBox(height: 20.h),
                      subTitleText('Password',
                          color: secondaryTextColor,
                          fontWeight: FontWeight.w400,
                          size: 12),
                      buildAuthTextField(
                          '* * * * * * * * * * * *', TextEditingController()),
                      const Expanded(
                        child: SizedBox(),
                      ),
                      normalButton('Sign in', textSize: 14, onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (_) => const HomeScreen()));
                      }),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildAuthTextField(String hText, TextEditingController controller) {
    return SizedBox(
      height: 46.h,
      width: double.infinity,
      child: TextField(
        controller: controller,
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          filled: true,
          hintText: hText,
          fillColor: Colors.transparent,
          hintStyle: TextStyle(
              color: secondaryTextColor,
              fontWeight: FontWeight.w500,
              fontSize: 15.sp),
          contentPadding: EdgeInsets.only(left: 0.h),
        ),
        style: TextStyle(
          color: primaryTextColor,
          fontWeight: FontWeight.w500,
          fontSize: 15.sp,
          height: 1,
        ),
      ),
    );
  }
}
