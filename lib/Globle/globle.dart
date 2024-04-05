import 'package:expense_app_tracker/common/services/services.dart';
import 'package:expense_app_tracker/common/store/store.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Globle {
  static Future init() async {
    WidgetsFlutterBinding.ensureInitialized();
    await Get.putAsync<StorageService>(() => StorageService().init());
    Get.put<UserStore>(UserStore());
  }
}
