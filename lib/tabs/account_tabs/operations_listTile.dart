// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class OperationsListTile extends StatelessWidget {
  final String date;
  final String balance;
  final Color BalancColor;

  const OperationsListTile(
      {super.key,
      required this.date,
      required this.balance,
      required this.BalancColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 2),
      color: Colors.white,
      child: ListTile(
        leading: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              date,
              style: TextStyle(color: Colors.grey[500]),
            ),
            Text(
              balance,
              style: TextStyle(
                  color: BalancColor,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
        trailing: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Alinma Express (WU) Transfer',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Text(
              'تطبيق الإنماء',
              style: TextStyle(color: Colors.grey[500]),
            ),
          ],
        ),
      ),
    );
  }
}
