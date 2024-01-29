import 'package:agent_telesheba/views/home/widgets/build_user.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/colors.dart';
import '../../global_widgets/custom_texts.dart';

class RegisteredUserList extends StatefulWidget {
  const RegisteredUserList({super.key});

  @override
  State<RegisteredUserList> createState() => _RegisteredUserListState();
}

class _RegisteredUserListState extends State<RegisteredUserList>
    with SingleTickerProviderStateMixin {
  late TabController controller;

  @override
  void initState() {
    controller = TabController(vsync: this, length: 2);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
          child: Column(
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
                    'Registered User List',
                    size: 20,
                  ),
                  const SizedBox(),
                  const SizedBox()
                ],
              ),
              SizedBox(height: 30.h),
              DefaultTabController(
                length: 2,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                            height: 39.h,
                            width: 335.w,
                            decoration: BoxDecoration(
                                color: white,
                                borderRadius: BorderRadius.all(
                                    Radius.circular(4.r))),
                            child: ClipRRect(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(4.r)),
                              child: TabBar(
                                indicator: const BoxDecoration(
                                  color: primaryColor,
                                ),
                                unselectedLabelColor: blackTextColor,
                                tabs: [
                                  Text('Card Not Given',style: TextStyle(fontSize: 14.sp)),
                                  Text('Card Given',style: TextStyle(fontSize: 14.sp)),
                                ],
                              ),
                            )),
                      ],
                    ),
                    SizedBox(
                      height: 600.h,
                      child: TabBarView(
                        children: [
                          cartNotGiven(),
                          cartGiven(),
                        ],
                      ),
                    )
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }

  cartNotGiven() {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          SizedBox(height: 15.h),
          for(int i=0; i<10;i++)
            Column(
              children: [
                buildUser(),
                SizedBox(height: 10.h)
              ],
            )
        ],
      ),
    );
  }

  cartGiven() {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          SizedBox(height: 15.h),
          for(int i=0; i<10;i++)
            Column(
              children: [
                buildUser(isMarkButton: false),
                SizedBox(height: 10.h)
              ],
            )
        ],
      ),
    );
  }
}
