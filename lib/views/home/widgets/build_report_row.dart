import 'package:flutter/cupertino.dart';

import '../../../global_widgets/custom_texts.dart';

Widget buildReportRow(String firstText,String secondText,String thirdText,){
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      subTitleText(firstText,size: 12,fontWeight: FontWeight.w300),
      subTitleText(secondText,size: 12,fontWeight: FontWeight.w300),
      subTitleText(thirdText,size: 12,fontWeight: FontWeight.w300),
    ],
  );
}