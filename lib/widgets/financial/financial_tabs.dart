import 'package:flutter/material.dart';

import '../../design_system/colors.dart';

class FinancialTabs extends StatefulWidget {
  bool check;

  FinancialTabs({
    Key? key,
    required this.check,
  }) : super(key: key);

  @override
  State<FinancialTabs> createState() => _FinancialTabsState();
}

class _FinancialTabsState extends State<FinancialTabs> {
  @override
  Widget build(BuildContext context) {
    if (widget.check) {
      return Container(
        width: double.infinity,
        height: 240,
        decoration: const BoxDecoration(
            color: AppColors.primarytextColor,
            borderRadius: BorderRadius.all(Radius.circular(20.0))),
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
          children: [],
        ),
      );
    }
  }
}
