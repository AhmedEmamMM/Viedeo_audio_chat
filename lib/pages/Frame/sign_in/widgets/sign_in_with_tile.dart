import 'package:expense_app_tracker/core/helpers/helpers.dart';
import 'package:expense_app_tracker/pages/Frame/sign_in/controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SignInWith extends StatelessWidget {
  final String signInType;
  final String signInImgName;
  final void Function()? onTap;
  const SignInWith(
      {super.key,
      required this.signInType,
      required this.signInImgName,
      this.onTap});

  @override
  Widget build(BuildContext context) {
    var signInController = Get.put(SignInController());
    return InkWell(
      onTap: onTap ?? () => signInController.handleSignIn(signInImgName),
      child: Container(
        padding: EdgeInsets.only(left: 35.h, top: 8.h, bottom: 8.h),
        width: 315.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(8.h)),
          color: Colors.white,
        ),
        child: Row(
          children: [
            Image.asset(
              "assets/icons/$signInImgName.png",
              height: 34.h,
            ),
            horizontalSpace(25.w),
            Text(
              "Sign in with $signInType",
              style: TextStyle(fontSize: 16.sp),
            ),
          ],
        ),
      ),
    );
  }
}
