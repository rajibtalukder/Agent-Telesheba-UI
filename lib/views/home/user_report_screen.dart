import 'package:agent_telesheba/global_widgets/normal_button.dart';
import 'package:agent_telesheba/views/home/set_target_screen.dart';
import 'package:agent_telesheba/views/home/widgets/build_report_row.dart';
import 'package:agent_telesheba/views/home/widgets/build_user.dart';
import 'package:agent_telesheba/views/home/widgets/build_user_info.dart';
import 'package:agent_telesheba/views/home/widgets/line_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/colors.dart';
import '../../global_widgets/custom_texts.dart';

class UserReportScreen extends StatelessWidget {
  const UserReportScreen({super.key});

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
                children: [
                  SizedBox(height: 10.h),
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
                        'Bari Ahmed Report',
                        size: 20,
                      ),
                      const SizedBox(),
                      const SizedBox()
                    ],
                  ),
                  SizedBox(height: 10.h),
                  buildUserInfo(),
                  SizedBox(height: 10.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      subTitleText('Bari’s Report', size: 16),
                      subTitleText('See all',
                          size: 14, color: primaryColor)
                    ],
                  ),
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
                  SizedBox(
                    height: 190.h,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            subTitleText('Day',
                                size: 12, fontWeight: FontWeight.w400),
                            subTitleText('Total Target',
                                size: 12, fontWeight: FontWeight.w400),
                            subTitleText('Total Added',
                                size: 12, fontWeight: FontWeight.w400),
                          ],
                        ),
                        buildReportRow('Sun', '13', '16'),
                        buildReportRow('Mon', '10', '16'),
                        buildReportRow('Tue', '10', '16'),
                        buildReportRow('Wed', '15', '16'),
                        buildReportRow('Thu', '15', '16'),
                        buildReportRow('Fri', '15', '16'),
                        buildReportRow('Sat', '15', '16'),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      subTitleText('New Users', size: 16),
                      subTitleText('See all', size: 14, color: primaryColor)
                    ],
                  ),
                  SizedBox(height: 20.h),
                  buildUser(),
                  SizedBox(height: 10.h),
                  buildUser(),
                  SizedBox(height: 10.h),
                  buildUser(),
                  SizedBox(height: 30.h),
                  normalButton('Set Target', textSize: 16, textColor: white,
                      onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (_) => SetTargetScreen()));
                  })
                ],
              ),
            ),
          ),
        ));
  }
}
