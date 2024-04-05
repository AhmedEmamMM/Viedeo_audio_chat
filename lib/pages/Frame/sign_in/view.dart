import 'package:expense_app_tracker/core/Widgets/custum_button.dart';
import 'package:expense_app_tracker/core/helpers/helpers.dart';
import 'package:expense_app_tracker/pages/Frame/sign_in/controller.dart';
import 'package:expense_app_tracker/pages/Frame/sign_in/widgets/already_have_an_account.dart';
import 'package:expense_app_tracker/pages/Frame/sign_in/widgets/dividers_with_or.dart';
import 'package:expense_app_tracker/pages/Frame/sign_in/widgets/sign_in_with_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SignInPage extends GetView<SignInController> {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 50.0.w),
        child: Center(
          child: Column(
            children: [
              verticalSpace(180.h),
              Text(
                "Chatty .",
                style: TextStyle(fontSize: 40.sp, fontWeight: FontWeight.bold),
              ),
              verticalSpace(50.h),
              const SignInWith(
                signInType: "Google",
                signInImgName: "google",
              ),
              verticalSpace(20.h),
              const SignInWith(
                signInType: "FaceBook",
                signInImgName: "facebook",
              ),
              verticalSpace(20.h),
              const SignInWith(
                signInType: "Apple",
                signInImgName: "apple",
              ),
              verticalSpace(35.h),
              const DividersWithOr(),
              verticalSpace(20.h),
              const SignInWith(
                signInType: "Phone Number",
                signInImgName: "phone",
              ),
              verticalSpace(50.h),
              AlreadyhaveAnAccount(onTap: () {}),
              verticalSpace(50.h),
              MyButton(
                text: "Sign Out",
                onPressed: () {
                  controller.googleSignOut();
                  print("... you sign out");
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
