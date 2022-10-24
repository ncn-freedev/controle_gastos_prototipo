import 'package:controle_gastos_prototipo/widgets/user_photo/userphoto.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const UserPhoto(),
        title: Row(
          children: [
            Column(
              children: const [
                Text('Bom dia, '),
                Text('Nicolas'),
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
      ),
    );
  }
}
