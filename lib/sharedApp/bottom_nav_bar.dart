import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
   BottomNavBar({
    super.key,
    required this.onTap,
    required this.icon
  });

  final void Function() onTap;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        width: 36,
        height: 36,
        child: Icon(icon, color: Colors.white,),
      ),
    );
  }
}