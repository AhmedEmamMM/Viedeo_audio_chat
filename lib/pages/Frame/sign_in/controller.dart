import 'package:expense_app_tracker/common/entities/entities.dart';
import 'package:expense_app_tracker/pages/Frame/sign_in/index.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

class SignInController extends GetxController {
  SignInController();
  final state = SignInState();

  final GoogleSignIn _googleSignIn = GoogleSignIn(scopes: ['openid']);

  Future<void> googleSignOut() async {
    await _googleSignIn.signOut();
  }

  Future<void> handleSignIn(String type) async {
    // 1:email  2: google  3: facebook  4: apple  5:phone
    try {
      switch (type) {
        case "phone":
          print(".... you are logging in with phone number");
          break;
        case "google":
          print(".... you are logging in with google");
          var user = await _googleSignIn.signIn();
          if (user != null) {
            String? displayName = user.displayName;
            String email = user.email;
            String id = user.id;
            String photoUrl = user.photoUrl ?? "assets/icons/google.png";
            LoginRequestEntity loginPanelListRequestEntity =
                LoginRequestEntity();
            loginPanelListRequestEntity.avatar = photoUrl;
            loginPanelListRequestEntity.name = displayName;
            loginPanelListRequestEntity.email = email;
            loginPanelListRequestEntity.open_id = id;
            loginPanelListRequestEntity.type = 2;
          }

          break;
        case "facebook":
          print(".... you are logging in with facebook");
          break;
        case "apple":
          print(".... you are logging in with apple");
          break;
        default:
          print(".... login type not sure");
          break;
      }
    } catch (e) {
      if (kDebugMode) {
        print("....error with login $e");
      }
    }
  }
}
