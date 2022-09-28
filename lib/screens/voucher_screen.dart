import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class VoucherPage extends StatefulWidget {
  const VoucherPage({Key? key}) : super(key: key);

  @override
  State<VoucherPage> createState() => _VoucherPageState();
}

class _VoucherPageState extends State<VoucherPage> {
  String? checkVoucher = '';
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: SafeArea(
            top: true,
            bottom: false,
            child: Scaffold(
              resizeToAvoidBottomInset: false,
              backgroundColor: Colors.white,
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
                    "Payment Method",
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
              body: SafeArea(
                  child: ListView(
                children: [
                  Container(
                    padding: EdgeInsets.all(16.0),
                    child: Column(children: [
                      Container(
                        decoration: const BoxDecoration(
                            border: Border(
                                bottom: BorderSide(color: Color(0xFFEFEBE9)))),
                        child: ListTile(
                          contentPadding: EdgeInsets.zero,
                          leading: Image.asset('assets/images/onboarding2.png'),
                          title: Text('Disc 10% up to Rp20.000'),
                          subtitle: Text('No minimum purchase'),
                          trailing: Radio(
                            activeColor: Color(0xFF03539E),
                            value: '10',
                            groupValue: checkVoucher,
                            onChanged: (String? value) {
                              setState(() {
                                checkVoucher = value;
                              });
                            },
                          ),
                        ),
                      ),
                      SizedBox(height: 16.0),
                      Container(
                        decoration: const BoxDecoration(
                            border: Border(
                                bottom: BorderSide(color: Color(0xFFEFEBE9)))),
                        child: ListTile(
                          contentPadding: EdgeInsets.zero,
                          leading: Image.asset('assets/images/onboarding2.png'),
                          title: Text('Disc 15% up to Rp25.000'),
                          subtitle: Text('Minimum spend Rp20.000'),
                          trailing: Radio(
                            activeColor: Color(0xFF03539E),
                            value: '15',
                            groupValue: checkVoucher,
                            onChanged: (String? value) {
                              setState(() {
                                checkVoucher = value;
                              });
                            },
                          ),
                        ),
                      ),
                      SizedBox(height: 10.0),
                      //
                      Container(
                        decoration: const BoxDecoration(
                            border: Border(
                                bottom: BorderSide(color: Color(0xFFEFEBE9)))),
                        child: ListTile(
                            contentPadding: EdgeInsets.zero,
                            leading: Image.asset('assets/images/bca.png'),
                            title: Text(
                              'Disc Rp75.000',
                              style: TextStyle(
                                  color: Color(0xffCACACA),
                                  fontWeight: FontWeight.w600),
                            ),
                            subtitle: Column(
                              children: [
                                Row(
                                  children: [
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text('Minimum spend Rp280.000')
                                      ],
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Spend another RP100,000 to enjoy this voucher',
                                          style: TextStyle(
                                              color: Color(0xffE33131),
                                              fontSize: 10),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                SizedBox(height: 10.0),
                              ],
                            )),
                      ),
                      //
                      Container(
                        decoration: const BoxDecoration(
                            border: Border(
                                bottom: BorderSide(color: Color(0xFFEFEBE9)))),
                        child: ListTile(
                            contentPadding: EdgeInsets.zero,
                            leading: Image.asset('assets/images/bsi.png'),
                            title: Text(
                              'Disc Rp75.000',
                              style: TextStyle(
                                  color: Color(0xffCACACA),
                                  fontWeight: FontWeight.w600),
                            ),
                            subtitle: Column(
                              children: [
                                Row(
                                  children: [
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text('Minimum spend Rp280.000')
                                      ],
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Spend another RP100,000 to enjoy this voucher',
                                          style: TextStyle(
                                              color: Color(0xffE33131),
                                              fontSize: 10),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                SizedBox(height: 10.0),
                              ],
                            )),
                      ),
                      //
                      Container(
                        decoration: const BoxDecoration(
                            border: Border(
                                bottom: BorderSide(color: Color(0xFFEFEBE9)))),
                        child: ListTile(
                            contentPadding: EdgeInsets.zero,
                            leading:
                                Image.asset('assets/images/un_discount.png'),
                            title: Text(
                              'Disc Rp75.000',
                              style: TextStyle(
                                  color: Color(0xffCACACA),
                                  fontWeight: FontWeight.w600),
                            ),
                            subtitle: Column(
                              children: [
                                Row(
                                  children: [
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text('Minimum spend Rp280.000')
                                      ],
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Spend another RP100,000 to enjoy this voucher',
                                          style: TextStyle(
                                              color: Color(0xffE33131),
                                              fontSize: 10),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                SizedBox(height: 10.0),
                              ],
                            )),
                      ),
                      //
                      Container(
                        decoration: const BoxDecoration(
                            border: Border(
                                bottom: BorderSide(color: Color(0xFFEFEBE9)))),
                        child: ListTile(
                            contentPadding: EdgeInsets.zero,
                            leading:
                                Image.asset('assets/images/un_discount.png'),
                            title: Text(
                              'Disc Rp75.000',
                              style: TextStyle(
                                  color: Color(0xffCACACA),
                                  fontWeight: FontWeight.w600),
                            ),
                            subtitle: Column(
                              children: [
                                Row(
                                  children: [
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text('Minimum spend Rp280.000')
                                      ],
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Spend another RP100,000 to enjoy this voucher',
                                          style: TextStyle(
                                              color: Color(0xffE33131),
                                              fontSize: 10),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                SizedBox(height: 10.0),
                              ],
                            )),
                      ),
                    ]),
                  ),
                ],
              )),
            )));
  }
}
