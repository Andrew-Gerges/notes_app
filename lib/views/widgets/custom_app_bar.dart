import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_icon.dart';

class CustomAppBar extends StatelessWidget {
  CustomAppBar({super.key, required this.title, required this.icon, this.onPressed});
  final String title;
  final IconData icon;
  void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 24,
            ),
          ),
          Spacer(),
          CustomIcon(
            onPressed: onPressed,
            icon: icon,
          ),
        ],
      ),
    );
  }
}
