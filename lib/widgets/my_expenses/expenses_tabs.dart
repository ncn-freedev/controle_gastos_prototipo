import 'package:flutter/material.dart';

import '../../design_system/colors.dart';

class ExpensesTabs extends StatefulWidget {
  bool check;

  ExpensesTabs({
    Key? key,
    required this.check,
  }) : super(key: key);

  @override
  State<ExpensesTabs> createState() => _ExpensesTabsState();
}

class _ExpensesTabsState extends State<ExpensesTabs> {
  @override
  Widget build(BuildContext context) {
    if (widget.check) {
      return Container(
        width: double.infinity,
        height: 240,
        decoration: const BoxDecoration(
          color: AppColors.primarytextColor,
        ),
        child: const Text("Atrasadas"),
      );
    } else {
      return Container(
        width: double.infinity,
        height: 240,
        decoration: const BoxDecoration(
          color: AppColors.primarytextColor,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Text("Despesa 1"),
                Text("R\$10,00"),
                Text("Paga")
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Text("Despesa 1"),
                Text("R\$10,00"),
                Text("Paga")
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Text("Despesa 1"),
                Text("R\$10,00"),
                Text("Paga")
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Text("Despesa 1"),
                Text("R\$10,00"),
                Text("Paga")
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Text("Despesa 1"),
                Text("R\$10,00"),
                Text("Paga")
              ],
            )
          ],
        ),
      );
    }
  }
}
