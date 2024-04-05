import 'package:expense_app_tracker/common/routes/names.dart';
import 'package:expense_app_tracker/pages/Frame/sign_in/index.dart';
import 'package:get/get.dart';

class SignInController extends GetxController {
  SignInController();
  final title = "Chatty .";
  final state = SignInState();

  @override
  void onReady() {
    super.onReady();
    Future.delayed(
      const Duration(seconds: 3),
      () => Get.offAllNamed(AppRoutes.Message),
    );
  }
}
