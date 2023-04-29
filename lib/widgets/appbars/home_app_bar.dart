import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double height;
  const HomeAppBar({super.key, required this.height});

  @override
  Size get preferredSize => Size.fromHeight(height);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      titleTextStyle: const TextStyle(fontFamily: 'Audiowide', fontSize: 24),
      title: Row(
        children: const [
          Text(
            'S',
            style: TextStyle(
              color: Color(0xFFEC9825),
            ),
          ),
          Text(
            'imple ',
          ),
          Text(
            'C',
            style: TextStyle(
              color: Color(0xFFEC9825),
            ),
          ),
          Text(
            'alculator',
          ),
        ],
      ),
      backgroundColor: const Color(0xFF3C53B9),
    );
  }
}
