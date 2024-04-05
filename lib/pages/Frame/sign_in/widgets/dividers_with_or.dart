import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DividersWithOr extends StatelessWidget {
  const DividersWithOr({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Divider(thickness: 2.h)),
        const Text(" OR "),
        Expanded(child: Divider(thickness: 2.h)),
      ],
    );
  }
}
