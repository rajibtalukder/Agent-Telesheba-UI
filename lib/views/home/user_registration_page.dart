import 'package:agent_telesheba/views/home/home_screen.dart';
import 'package:agent_telesheba/views/home/user_registration_submit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/colors.dart';
import '../../global_widgets/custom_text_field.dart';
import '../../global_widgets/custom_texts.dart';
import '../../global_widgets/normal_button.dart';

class UserRegistrationScreen extends StatelessWidget {
  const UserRegistrationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.fromLTRB(27.w, 25.h, 27.w, 10.h),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Container(
                        height: 40.h,
                        width: 40.w,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(12.r),
                          ),
                        ),
                        child: const Icon(
                          Icons.arrow_back_ios,
                          color: secondaryTextColor,
                          size: 14,
                        ),
                      ),
                    ),
                    subTitleText(
                      'Register New User',
                      size: 20,
                    ),
                    const SizedBox(),
                    const SizedBox()
                  ],
                ),
                SizedBox(height: 20.h),
                subTitleText('User Name', size: 14),
                SizedBox(height: 10.h),
                customTextField(TextEditingController()),
                SizedBox(height: 10.h),
                subTitleText('User Card No', size: 14),
                SizedBox(height: 10.h),
                customTextField(TextEditingController()),
                SizedBox(height: 10.h),
                subTitleText('Select Division', size: 14),
                SizedBox(height: 10.h),
                customTextField(TextEditingController(),
                    icon: Icons.keyboard_arrow_down_outlined,
                    iconColor: secondaryTextColor),
                SizedBox(height: 10.h),
                subTitleText('Select District', size: 14),
                SizedBox(height: 10.h),
                customTextField(TextEditingController(),
                    icon: Icons.keyboard_arrow_down_outlined,
                    iconColor: secondaryTextColor),
                SizedBox(height: 10.h),
                subTitleText('Select Thana', size: 14),
                SizedBox(height: 10.h),
                customTextField(TextEditingController(),
                    icon: Icons.keyboard_arrow_down_outlined,
                    iconColor: secondaryTextColor),
                SizedBox(height: 10.h),
                subTitleText('Select Union', size: 14),
                SizedBox(height: 10.h),
                customTextField(TextEditingController(),
                    icon: Icons.keyboard_arrow_down_outlined,
                    iconColor: secondaryTextColor),
                SizedBox(height: 10.h),
                subTitleText('Select Village or Area', size: 14),
                SizedBox(height: 10.h),
                customTextField(TextEditingController(),
                    icon: Icons.keyboard_arrow_down_outlined,
                    iconColor: secondaryTextColor),
                SizedBox(height: 10.h),
                subTitleText('User Age', size: 14),
                SizedBox(height: 10.h),
                customTextField(TextEditingController()),
                SizedBox(height: 20.h),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                      height: 56.h,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        border: Border.all(color: primaryColor,width: 0.7),
                        borderRadius: BorderRadius.circular(8.r),
                      ),
                      child: Center(
                        child: subTitleText(
                            'Upload Photo', size: 16, color: primaryColor),
                      )),
                ),
                SizedBox(height: 20.h),
                normalButton(
                    'Submit', textSize: 16, textColor: white, onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) => const UserRegistrationSubmit()));
                }),
                SizedBox(height: 20.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
