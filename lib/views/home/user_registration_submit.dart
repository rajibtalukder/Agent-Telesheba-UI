import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/colors.dart';
import '../../global_widgets/custom_texts.dart';
import '../../global_widgets/normal_button.dart';
import 'home_screen.dart';

class UserRegistrationSubmit extends StatelessWidget {
  const UserRegistrationSubmit({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: white,
        body: Padding(
          padding: EdgeInsets.fromLTRB(27.w, 25.h, 27.w, 10.h),
          child: Column(
            children: [
              Expanded(child: SizedBox()),
              Center(
                child: SizedBox(
                  height: 255.h,
                  width: 255.w,
                  child: Image.asset(
                    'assets/images/registration_submit.png',
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              subTitleText('Your Request Has Submitted', size: 18),
              subTitleText('Your target will be added soon', color: secondaryTextColor.withOpacity(0.7),
                  fontWeight: FontWeight.w400, size: 14),
              const Expanded(
                  flex: 2,
                  child: SizedBox()),
              normalButton('Back To Home', textSize: 16, onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => const HomeScreen()));
              }),
              SizedBox(
                height: 10.h,
              ),
            ],
          ),
        ));
  }
}
