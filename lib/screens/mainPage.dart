// ignore_for_file: sort_child_properties_last
// ignore_for_file: prefer_const_literals_to_create_immutables
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:new_app1/tabs/account_tabs/accounts.dart';
import 'package:new_app1/tabs/credit_cards.dart';

class Main extends StatefulWidget {
  const Main({super.key});

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.grey[300],
        body: Column(
          children: [
            // top title and icons
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.notifications_outlined)),
                      IconButton(
                          onPressed: () {}, icon: Icon(Icons.card_membership)),
                      IconButton(
                          onPressed: () {}, icon: Icon(Icons.article_outlined)),
                    ],
                  ),
                  Text(
                    'تطبيق الإنماء',
                    style: GoogleFonts.tajawal(
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            // 2 buttons like tab buttons

            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.brown[100],
              ),
              child: TabBar(
                  indicatorColor: Colors.transparent,
                  padding: EdgeInsets.all(5),
                  tabs: [
                    Tab(
                      child: Text(
                        'البطاقات الإئتمانية',
                        style: GoogleFonts.tajawal(
                            color: Colors.black, fontSize: 18),
                      ),
                    ),
                    Tab(
                      child: Text(
                        'قائمة الحسابات',
                        style: GoogleFonts.tajawal(
                            color: Colors.black, fontSize: 18),
                      ),
                    ),
                  ]),
            ),
            Expanded(child: TabBarView(children: [CreditCards(), Accounts()])),
          ],
        ),
      ),
    );
  }
}
