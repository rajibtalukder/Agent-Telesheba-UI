import 'package:agent_telesheba/constants/colors.dart';
import 'package:agent_telesheba/global_widgets/custom_texts.dart';
import 'package:agent_telesheba/views/home/registered_user_list.dart';
import 'package:agent_telesheba/views/home/user_profile_screen.dart';
import 'package:agent_telesheba/views/home/user_registration_page.dart';
import 'package:agent_telesheba/views/home/user_report_screen.dart';
import 'package:agent_telesheba/views/home/widgets/build_register_new_user.dart';
import 'package:agent_telesheba/views/home/widgets/build_subordinate.dart';
import 'package:agent_telesheba/views/home/widgets/build_user.dart';
import 'package:agent_telesheba/views/home/widgets/build_user_info.dart';
import 'package:agent_telesheba/views/home/widgets/line_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        subTitleText('Welcome', size: 24),
                        subTitleText('Samiul Islam',
                            size: 12, fontWeight: FontWeight.w400),
                      ],
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (_) => const UserProfileScreen()));
                      },
                      child: Container(
                        height: 34.h,
                        width: 34.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50.r),
                        ),
                        child: Image.asset('assets/images/profile.png'),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 20.h),
                buildUserInfo(),
                SizedBox(height: 20.h),
                GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (_) => const UserRegistrationScreen()));
                    },
                    child: buildRegisterNewUser()),
                SizedBox(height: 30.h),
                subTitleText('Your Subordinates', size: 16),
                SizedBox(height: 20.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (_) => const UserReportScreen()));
                        },
                        child: buildSubordinate()),
                    buildSubordinate(),
                  ],
                ),
                SizedBox(height: 20.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    buildSubordinate(),
                    buildSubordinate(),
                  ],
                ),
                SizedBox(height: 30.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    subTitleText('New Users', size: 16),
                    GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (_) => const RegisteredUserList()));
                        },
                        child: subTitleText('See all',
                            size: 14, color: primaryColor))
                  ],
                ),
                SizedBox(height: 20.h),
                buildUser(),
                SizedBox(height: 10.h),
                buildUser(),
                SizedBox(height: 10.h),
                buildUser(),
                SizedBox(height: 10.h),
                Container(
                  height: 200.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(width: 1,color: secondaryTextColor.withOpacity(0.1)),
                    borderRadius: BorderRadius.circular(14.r),
                  ),
                  child: const LineChartSample2(),
                ),
                SizedBox(height: 10.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
