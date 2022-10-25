import 'package:flutter/material.dart';

import '../user_photo/userphoto.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: const UserPhoto(),
      title: Row(
        children: [
          Column(
            children: const [
              Text('Bom dia, '),
              Text('Usuário'),
            ],
          ),
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.arrow_forward_ios))
        ],
      ),
      actions: [
        IconButton(
          icon: const Icon(
            Icons.notifications_none,
            color: Color(0xfff39004),
          ),
          onPressed: (() {}),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60.0);
}
