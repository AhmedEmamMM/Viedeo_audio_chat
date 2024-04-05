import 'package:expense_app_tracker/common/values/values.dart';
import 'package:expense_app_tracker/pages/Frame/welcome/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class WelcomePage extends GetView<WelcomeController> {
  const WelcomePage({super.key});

  Widget _buildPageHeadTitle(String title) {
    return Container(
      padding: const EdgeInsets.only(top: 350),
      child: Text(
        title,
        textAlign: TextAlign.center,
        style: TextStyle(
            color: AppColors.primaryElementText,
            fontSize: 45.sp,
            fontWeight: FontWeight.bold),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryElement,
      body: Center(
        child: SizedBox(
          width: MediaQuery.of(context).size.width.w,
          height: MediaQuery.of(context).size.height.h,
          child: _buildPageHeadTitle(controller.title),
        ),
      ),
    );
  }
}
