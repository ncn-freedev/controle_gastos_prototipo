import 'package:flutter/material.dart';
import 'package:teste/pages/homescreen/homescreen_controller.dart';
import '../../design_system/colors.dart';

class CashBalanceBar extends StatefulWidget {
  const CashBalanceBar({super.key});

  @override
  State<CashBalanceBar> createState() => _CashBalanceBarState();
}

class _CashBalanceBarState extends State<CashBalanceBar> {
  HomeScreenController controller = HomeScreenController();
  bool obscure = true;
  Icon icon = const Icon(Icons.visibility_off);
  String textTemp = '';

  @override
  void initState() {
    super.initState();
    controller.getCashValue();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Column(
              children: [
                const Text(
                  'Saldo atual',
                  style: TextStyle(
                    color: AppColors.primarytextColor,
                  ),
                ),
                ValueListenableBuilder(
                    valueListenable: controller.cashValue,
                    builder: (context, value, child) {
                      return Text(
                        'R\$ ${controller.cashValue.value}',
                        style: const TextStyle(
                          color: AppColors.primarytextColor,
                        ),
                      );
                    }),
              ],
            ),
          ),
          IconButton(
              onPressed: () {
                controller.cashVisibility;
                setState(() {
                  if (obscure) {
                    icon = const Icon(Icons.visibility);
                    obscure = false;
                  } else {
                    icon = const Icon(Icons.visibility_off);
                    obscure = true;
                  }
                });
              },
              icon: icon)
        ],
      ),
    );
  }
}
