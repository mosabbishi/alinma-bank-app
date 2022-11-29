// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:new_app1/tabs/account_tabs/service_grid_list.dart';
import '../account_tabs/operations_listTile.dart';

class Accounts extends StatelessWidget {
  Accounts({super.key});

  @override
  Widget build(BuildContext context) {
    var serviceGridList = new ServiceGridList1();
    return Scaffold(
        backgroundColor: Colors.grey[300],
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              // card container
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.grey[500],
                      borderRadius: BorderRadius.circular(15)),
                  margin: EdgeInsets.symmetric(horizontal: 18, vertical: 12),
                  width: double.infinity,
                  height: 210,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 12, vertical: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                            ),
                            Text(' main - حساب جاري',
                                style: GoogleFonts.tajawal(
                                    color: Colors.white,
                                    fontSize: 17,
                                    fontWeight: FontWeight.w700)),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TextButton(
                                onPressed: () {},
                                child: Text(
                                  'إخفاء الرصيد',
                                  style:
                                      GoogleFonts.tajawal(color: Colors.yellow),
                                )),
                            Text(
                              'رصيد الحساب',
                              style: GoogleFonts.tajawal(
                                  color: Colors.white70,
                                  fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                        Text(
                          '8,500.75',
                          style: TextStyle(
                              fontSize: 26,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'ريال سعودي',
                          style: GoogleFonts.tajawal(
                              fontSize: 17,
                              fontWeight: FontWeight.w700,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        GestureDetector(
                          child: Container(
                            height: 40,
                            width: 120,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.white),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'تحويل الأموال',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700),
                                ),
                                Icon(
                                  Icons.compare_arrows,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                          ),
                          onTap: () {
                            print('object');
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                ),
                child: SizedBox(
                  height: 210,
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                      mainAxisSpacing: 4,
                      crossAxisSpacing: 4,
                    ),
                    itemCount: serviceGridList.gridList.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        color: Colors.white,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [serviceGridList.gridList[index]],
                        ),
                      );
                    },
                  ),
                ),
              ),

              Container(
                margin: EdgeInsets.only(right: 12, bottom: 10),
                child: Text('العمليات',
                    style: TextStyle(
                      color: Colors.blue,
                    )),
              ),

              Container(
                height: 200,
                margin: EdgeInsets.symmetric(horizontal: 12),
                child: ListView(
                  children: [
                    OperationsListTile(
                        date: '2022-02-22',
                        balance: '-2,899.33 SAR',
                        BalancColor: Colors.deepOrange),
                    OperationsListTile(
                        date: '2021-02-16',
                        balance: '+1,393.33 SAR',
                        BalancColor: Colors.green),
                    OperationsListTile(
                        date: '2021-02-16',
                        balance: '+1,393.33 SAR',
                        BalancColor: Colors.green),
                    OperationsListTile(
                        date: '2021-02-16',
                        balance: '+1,393.33 SAR',
                        BalancColor: Colors.deepOrange),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
