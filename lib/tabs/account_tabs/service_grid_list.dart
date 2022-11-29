// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ServiceGridList1 {
  List<Column> gridList = [
    // المدفوعات الحكومية
    Column(
      children: [
        Icon(Icons.ac_unit, color: Colors.brown),
        SizedBox(
          height: 5,
        ),
        Text(
          'المدفوعات الحكومية',
          textAlign: TextAlign.center,
          style: GoogleFonts.tajawal(fontSize: 14, color: Colors.brown),
        ),
      ],
    ),
    // الفواتير
    Column(
      children: [
        Icon(Icons.article_outlined, color: Colors.brown),
        SizedBox(
          height: 5,
        ),
        Text(
          'الفواتير',
          textAlign: TextAlign.center,
          style: GoogleFonts.tajawal(fontSize: 14, color: Colors.brown),
        )
      ],
    ), // تحوبل الاموال
    Column(
      children: [
        Icon(Icons.compare_arrows_outlined, color: Colors.brown),
        SizedBox(
          height: 5,
        ),
        Text(
          ' تحويل الأموال',
          textAlign: TextAlign.center,
          style: GoogleFonts.tajawal(fontSize: 14, color: Colors.brown),
        )
      ],
    ), // الحسابات
    Column(
      children: [
        Icon(Icons.account_balance, color: Colors.brown),
        SizedBox(
          height: 5,
        ),
        Text(
          ' الحسابات',
          textAlign: TextAlign.center,
          style: GoogleFonts.tajawal(fontSize: 14, color: Colors.brown),
        )
      ],
    ),
    // الطلبات والخدمات
    Column(
      children: [
        Icon(Icons.article_sharp, color: Colors.brown),
        SizedBox(
          height: 5,
        ),
        Text(
          ' الطلبات والخدمات',
          textAlign: TextAlign.center,
          style: GoogleFonts.tajawal(fontSize: 14, color: Colors.brown),
        )
      ],
    ), //  التمويلات
    Column(
      children: [
        Icon(Icons.credit_score, color: Colors.brown),
        SizedBox(
          height: 5,
        ),
        Text(
          ' التمويلات',
          textAlign: TextAlign.center,
          style: GoogleFonts.tajawal(fontSize: 14, color: Colors.brown),
        )
      ],
    ), // النقد الطارئ
    Column(
      children: [
        Icon(Icons.local_atm, color: Colors.brown),
        SizedBox(
          height: 5,
        ),
        Text(
          ' النقد الطارئ',
          textAlign: TextAlign.center,
          style: GoogleFonts.tajawal(fontSize: 14, color: Colors.brown),
        )
      ],
    ), // البطاقات
    Column(
      children: [
        Icon(Icons.credit_card, color: Colors.brown),
        SizedBox(
          height: 5,
        ),
        Text(
          ' البطاقات',
          textAlign: TextAlign.center,
          style: GoogleFonts.tajawal(fontSize: 14, color: Colors.brown),
        )
      ],
    ),
  ]; //
}
