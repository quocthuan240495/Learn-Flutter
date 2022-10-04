import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:my_app/providers/counter_provider.dart';
import 'package:provider/provider.dart';

class TransactionPage extends StatefulWidget {
  const TransactionPage({Key? key}) : super(key: key);

  @override
  State<TransactionPage> createState() => _TransactionState();
}

class _TransactionState extends State<TransactionPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
          top: false,
          bottom: false,
          child: Scaffold(
            appBar: AppBar(
              bottom: PreferredSize(
                  child: Container(
                    color: Color(0xff5D4037),
                    height: 1.0,
                  ),
                  preferredSize: Size.fromHeight(1.0)),
              backgroundColor: Colors.white,
              elevation: 0,
              title: Transform(
                // you can forcefully translate values left side using Transform
                transform: Matrix4.translationValues(-60.0, 0.0, 0.0),
                child: Text(
                  "Receipt Order",
                  style: TextStyle(color: Color(0xff5D4037)),
                ),
              ),
              leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_back,
                  color: Color(0xff5D4037),
                ),
              ),
            ),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        height: 750,
                      ),
                      Positioned(
                          top: 50,
                          left: 20,
                          right: 20,
                          child: Column(
                            children: [
                              Container(
                                height: 505,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                        color: Color(0xffEFEBE9),
                                        spreadRadius: 2),
                                  ],
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      SizedBox(height: 50),
                                      Text(
                                        'Thank you!',
                                        style: TextStyle(
                                            color: Color(0xff555555),
                                            fontWeight: FontWeight.w700,
                                            fontSize: 14),
                                      ),
                                      Text(
                                        'Your transaction was successful',
                                        style: TextStyle(
                                            color: Color(0xff555555),
                                            fontWeight: FontWeight.w500,
                                            fontSize: 14),
                                      ),
                                      SizedBox(height: 20),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: const [
                                              Text("ID Transaction",
                                                  style: TextStyle(
                                                      color: Color(0xff3C3C3C),
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w500)),
                                              Text("D123456789ABC",
                                                  style: TextStyle(
                                                      color: Color(0xff3C3C3C),
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w500))
                                            ],
                                          ),
                                          SizedBox(height: 12),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: const [
                                              Text("Date",
                                                  style: TextStyle(
                                                      color: Color(0xff3C3C3C),
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w500)),
                                              Text("10 July’22",
                                                  style: TextStyle(
                                                      color: Color(0xff3C3C3C),
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w500))
                                            ],
                                          ),
                                          SizedBox(height: 12),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: const [
                                              Text("Time",
                                                  style: TextStyle(
                                                      color: Color(0xff3C3C3C),
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w500)),
                                              Text("04:13 PM",
                                                  style: TextStyle(
                                                      color: Color(0xff3C3C3C),
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w500))
                                            ],
                                          ),
                                          SizedBox(height: 12),
                                          Container(
                                            color: Color(0xffEFEBE9),
                                            height: 2,
                                          ),
                                          SizedBox(height: 12),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: const [
                                              Text("Item",
                                                  style: TextStyle(
                                                      color: Color(0xff3C3C3C),
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w500)),
                                              Text("",
                                                  style: TextStyle(
                                                      color: Color(0xff3C3C3C),
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w500))
                                            ],
                                          ),
                                          SizedBox(height: 12),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text("Coffee Milk",
                                                  style: TextStyle(
                                                      color: Color(0xff3C3C3C),
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w500)),
                                              Text(
                                                  'x${context.watch<Counter>().count}',
                                                  style: TextStyle(
                                                      color: Color(0xff3C3C3C),
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w500))
                                            ],
                                          ),
                                          SizedBox(height: 12),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: const [
                                              Text(
                                                  "Ice, Regular, Normal Sugar, Normal Ice",
                                                  style: TextStyle(
                                                      color: Color(0xff555555),
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w400)),
                                              Text("",
                                                  style: TextStyle(
                                                      color: Color(0xff3C3C3C),
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w500))
                                            ],
                                          ),
                                          SizedBox(height: 12),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: const [
                                              Text("Payment Summary",
                                                  style: TextStyle(
                                                      color: Color(0xff3C3C3C),
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w500)),
                                              Text("",
                                                  style: TextStyle(
                                                      color: Color(0xff3C3C3C),
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w500))
                                            ],
                                          ),
                                          SizedBox(height: 12),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: const [
                                              Text("Price",
                                                  style: TextStyle(
                                                      color: Color(0xff555555),
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w400)),
                                              Text("Rp25.000",
                                                  style: TextStyle(
                                                      color: Color(0xff555555),
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w400)),
                                            ],
                                          ),
                                          SizedBox(height: 12),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: const [
                                              Text("Voucher",
                                                  style: TextStyle(
                                                      color: Color(0xff555555),
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w400)),
                                              Text("0",
                                                  style: TextStyle(
                                                      color: Color(0xff555555),
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w400)),
                                            ],
                                          ),
                                          SizedBox(height: 12),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text("Total",
                                                  style: TextStyle(
                                                      color: Color(0xff3C3C3C),
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w500)),
                                              Text(
                                                  'Rp${context.watch<Counter>().priceTotal}',
                                                  style: TextStyle(
                                                      color: Color(0xff3C3C3C),
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w500)),
                                            ],
                                          ),
                                          SizedBox(height: 20),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: const [
                                              Text("Payment Method",
                                                  style: TextStyle(
                                                      color: Color(0xff555555),
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w500)),
                                              Text("Gopay",
                                                  style: TextStyle(
                                                      color: Color(0xff555555),
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w400)),
                                            ],
                                          ),
                                          SizedBox(height: 12),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: const [
                                              Text("Schedule Pick Up",
                                                  style: TextStyle(
                                                      color: Color(0xff555555),
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w500)),
                                              Text("05.15 PM",
                                                  style: TextStyle(
                                                      color: Color(0xff555555),
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w400)),
                                            ],
                                          ),
                                          SizedBox(height: 12),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          )),
                      Container(
                        color: const Color(0xfff),
                        width: MediaQuery.of(context).size.width,
                        height: 100,
                        child: Image.asset(
                          'assets/images/transaction_check.png',
                        ),
                      ),
                      Positioned(
                          top: 580,
                          left: 20,
                          right: 20,
                          child: Column(
                            children: [
                              ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                    shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10))),
                                    primary: const Color(0xff5D4037),
                                    minimumSize: const Size(132, 48)),
                                child: const Text('Tracking Order'),
                              )
                            ],
                          )),
                    ],
                  )
                ],
              ),
            ),
          )),
    );
  }
}
