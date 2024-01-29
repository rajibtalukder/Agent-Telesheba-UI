import 'package:agent_telesheba/global_widgets/custom_text_field.dart';
import 'package:agent_telesheba/global_widgets/normal_button.dart';
import 'package:agent_telesheba/views/home/target_submit_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../constants/colors.dart';
import '../../global_widgets/custom_texts.dart';

class SetTargetScreen extends StatefulWidget {
  const SetTargetScreen({super.key});

  @override
  State<SetTargetScreen> createState() => _SetTargetScreenState();
}

class _SetTargetScreenState extends State<SetTargetScreen> {
  DateTime today = DateTime.now();

  void _onDaySelected(DateTime day, DateTime focusedDay) {
    setState(() {
      today = day;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
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
                      'Set Target For Bari',
                      size: 20,
                    ),
                    const SizedBox(),
                    const SizedBox()
                  ],
                ),
                SizedBox(height: 10.h),
                subTitleText('Select Date', size: 14),
                SizedBox(height: 10.h),
                TableCalendar(
                  focusedDay: today,
                  firstDay: DateTime.utc(2010, 10, 14),
                  lastDay: DateTime.utc(2030, 10, 14),
                  rowHeight: 50.h,
                  availableGestures: AvailableGestures.all,
                  onDaySelected: _onDaySelected,
                  selectedDayPredicate: (day) => isSameDay(day, today),
                  headerStyle: const HeaderStyle(
                    formatButtonVisible: false,
                    titleCentered: true,
                    titleTextStyle: TextStyle(color: blackTextColor),
                  ),
                ),
                SizedBox(height: 10.h),
                subTitleText('Set Target', size: 14),
                SizedBox(height: 10.h),
                customTextField(TextEditingController()),
                SizedBox(height: 160.h),
                normalButton('Assaign',textSize: 16,onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (_)=>TargetSubmitScreen()));
                })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
