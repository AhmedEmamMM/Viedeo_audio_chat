import 'package:expense_app_tracker/pages/Frame/welcome/index.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignInPage extends GetView<WelcomeController> {
  const SignInPage({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Sign In page"),
      ),
    );
  }
}
