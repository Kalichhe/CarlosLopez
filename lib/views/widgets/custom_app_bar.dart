import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(centerTitle: true, title: Text('Rick and Morty App'));
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
