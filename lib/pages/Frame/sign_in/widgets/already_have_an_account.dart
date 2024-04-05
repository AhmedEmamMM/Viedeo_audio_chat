import 'package:flutter/material.dart';

class AlreadyhaveAnAccount extends StatelessWidget {
  final void Function()? onTap;
  const AlreadyhaveAnAccount({
    super.key, required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          const Text("    Already have an account?  "),
          GestureDetector(
            onTap: onTap,
            child: const Text(
              "Register here ",
              style: TextStyle(
                  color: Colors.blue, decoration: TextDecoration.underline),
            ),
          ),
        ],
      ),
    );
  }
}
