import 'package:controle_gastos_prototipo/widgets/financial/financial.dart';
import 'package:flutter/widgets.dart';

import '../../design_system/colors.dart';
import '../my_expenses/my_expenses.dart';

class CardsContainer extends StatefulWidget {
  const CardsContainer({super.key});

  @override
  State<CardsContainer> createState() => _CardsContainerState();
}

class _CardsContainerState extends State<CardsContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
          color: AppColors.revertBackgroundColor,
          borderRadius: BorderRadius.all(
            Radius.circular(10.0),
          )),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: const [
          SizedBox(
            height: 16.0,
          ),
          MyExpensesCard(),
          Financial()
        ],
      ),
    );
  }
}