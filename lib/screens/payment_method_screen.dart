import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class PaymentMethodPage extends StatefulWidget {
  const PaymentMethodPage({Key? key}) : super(key: key);

  @override
  State<PaymentMethodPage> createState() => _PaymentMethodPageState();
}

class _PaymentMethodPageState extends State<PaymentMethodPage> {
  String? methodPayment = '';
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
                          leading: Image.asset('assets/images/gopay.png'),
                          title: Text('Gobay'),
                          subtitle: Text('Saldo:  Rp85.000'),
                          trailing: Radio(
                            activeColor: Color(0xFF03539E),
                            value: 'gobay',
                            groupValue: methodPayment,
                            onChanged: (String? value) {
                              setState(() {
                                methodPayment = value;
                              });
                            },
                          ),
                        ),
                      ),
                      SizedBox(height: 16.0),
                      ListTile(
                        contentPadding: EdgeInsets.zero,
                        leading:
                            Image.asset('assets/images/credit_debit_card.png'),
                        title: Text('Credit or debit card'),
                        subtitle: Text('Visa, Mastercard, AMEX, and JCB'),
                        trailing: ElevatedButton(
                            onPressed: () {},
                            style: ButtonStyle(
                                shape: MaterialStateProperty.resolveWith(
                                    (states) => RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(16))),
                                padding: MaterialStateProperty.resolveWith(
                                    (states) => EdgeInsets.symmetric(
                                        horizontal: 24, vertical: 10))),
                            child: Text('Add')),
                      ),
                    ]),
                  ),
                  const SizedBox(
                    height: 4.0,
                    child: const DecoratedBox(
                      decoration: const BoxDecoration(color: Color(0xffEFEBE9)),
                    ),
                  ),
                  SizedBox(height: 16.0),
                  //
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 16.0),
                    decoration: const BoxDecoration(
                        border: Border(
                            bottom: BorderSide(color: Color(0xFFEFEBE9)))),
                    child: ListTile(
                      contentPadding: EdgeInsets.zero,
                      leading: Image.asset('assets/images/transfer_bank.png'),
                      title: Text('Transfer Bank'),
                      subtitle: Text('(Automatic Check)'),
                      trailing: Icon(Icons.keyboard_arrow_down),
                    ),
                  )
                ],
              )),
            )));
  }
}
