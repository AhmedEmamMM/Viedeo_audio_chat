import 'package:expense_app_tracker/pages/Frame/sign_in/controller.dart';
import 'package:get/get.dart';

class SignInBinding implements Bindings {
  
  @override
  void dependencies() {
    Get.lazyPut<SignInController>( () => SignInController());
  }

}