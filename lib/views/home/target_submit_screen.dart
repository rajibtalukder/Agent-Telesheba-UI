import 'package:agent_telesheba/views/home/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/colors.dart';
import '../../global_widgets/custom_texts.dart';
import '../../global_widgets/normal_button.dart';

class TargetSubmitScreen extends StatelessWidget {
  const TargetSubmitScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: white,
        body: Padding(
          padding: EdgeInsets.fromLTRB(27.w, 25.h, 27.w, 10.h),
          child: Column(
            children: [
              SizedBox(height: 80.h),
              Center(
                child: SizedBox(
                  height: 255.h,
                  width: 255.w,
                  child: Image.asset(
                    'assets/images/targetSubmit.png',
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              subTitleText('Target Is Set For Bari \nIslam',textCenter:true, size: 18),
              const Expanded(child: SizedBox()),
              normalButton('Back To Home',textSize: 16,onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (_) => const HomeScreen()));
              }),
              SizedBox(height: 10.h,),
            ],
          ),
        ));
  }
}
