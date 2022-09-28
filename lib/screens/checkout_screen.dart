import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:my_app/screens/payment_method_screen.dart';
import 'package:my_app/screens/voucher_screen.dart';

class CheckoutPage extends StatefulWidget {
  const CheckoutPage({Key? key}) : super(key: key);

  @override
  State<CheckoutPage> createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
  int counter = 0;
  String? getBy = 'now';
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Color.fromRGBO(255, 255, 255, 1),
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
                  transform: Matrix4.translationValues(-90.0, 0.0, 0.0),
                  child: Text(
                    "Checkout",
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
              bottomNavigationBar: SizedBox(
                height: 100,
                child: Container(
                  decoration: const BoxDecoration(boxShadow: [
                    BoxShadow(
                      color: Color(0xff5D4037),
                      offset: Offset(0, 0),
                      blurRadius: 2,
                    )
                  ], color: Colors.white),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                          child: Padding(
                        padding: const EdgeInsets.only(left: 19, bottom: 30),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: const [
                            Text(
                              "Total",
                              style: TextStyle(
                                  color: Color(0xff555555),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14),
                            ),
                            Text("Rp.25.000",
                                style: TextStyle(
                                    color: Color(0xff555555),
                                    fontWeight: FontWeight.w700,
                                    fontSize: 14))
                          ],
                        ),
                      )),
                      Padding(
                          padding: const EdgeInsets.only(right: 19, bottom: 30),
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                shape: const RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10))),
                                primary: const Color(0xff5D4037),
                                minimumSize: const Size(132, 48)),
                            child: const Text('Checkout'),
                          ))
                    ],
                  ),
                ),
              ),
              body: ListView(
                children: [
                  Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Expanded(
                                flex: 2, // 20%
                                child: Container(
                                  // color: Colors.red,
                                  child: Column(
                                    children: [
                                      Image.asset(
                                          'assets/images/list_coffee-milk.png')
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 8, // 80%
                                child: Container(
                                  // color: Colors.yellow,
                                  child: Column(children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: const [
                                        Text("Coffee milk",
                                            style: TextStyle(
                                                color: Color(0xff5D4037),
                                                fontSize: 18,
                                                fontWeight: FontWeight.w500)),
                                        Text("Rp25.000",
                                            style: TextStyle(
                                                color: Color(0xff5D4037),
                                                fontSize: 18,
                                                fontWeight: FontWeight.w500))
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Text("Ice americano + fresh milk",
                                            style: TextStyle(
                                                color: Color(0xff5D4037),
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500)),
                                        Text('X1')
                                      ],
                                    ),
                                    SizedBox(height: 10),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: const [
                                            Icon(
                                              Icons.credit_score,
                                              color: Color(0xff3C3C3C),
                                            ),
                                            Text(" Edit",
                                                style: TextStyle(
                                                    color: Color(0xff3C3C3C),
                                                    fontWeight:
                                                        FontWeight.w500)),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.restore_from_trash_outlined,
                                              color: Color(0xff3C3C3C),
                                            ),
                                            SizedBox(width: 5),
                                            Column(
                                              children: [
                                                Container(
                                                  height: 25,
                                                  decoration: BoxDecoration(
                                                    border: const Border(
                                                      top: BorderSide(
                                                          color: Color(
                                                              0xff5D4037)),
                                                      left: BorderSide(
                                                          color: Color(
                                                              0xff5D4037)),
                                                      right: BorderSide(
                                                          color: Color(
                                                              0xff5D4037)),
                                                      bottom: BorderSide(
                                                          color: Color(
                                                              0xff5D4037)),
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8),
                                                    color: const Color(0xfff),
                                                  ),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      GestureDetector(
                                                          onTap: () =>
                                                              setState(() {
                                                                counter == 0
                                                                    ? print(
                                                                        '${counter}')
                                                                    : counter--;
                                                              }),
                                                          child: const Icon(
                                                              Icons.remove,
                                                              color: Colors
                                                                  .brown)),
                                                      const SizedBox(
                                                        width: 2,
                                                      ),
                                                      Container(
                                                          height: 25,
                                                          width: 20,
                                                          color: Colors.white,
                                                          child: Center(
                                                              child: Text(
                                                                  '${counter}'))),
                                                      GestureDetector(
                                                          onTap: () {
                                                            setState(() {
                                                              print(
                                                                  '${counter}');
                                                              counter++;
                                                            });
                                                          },
                                                          child: const Icon(
                                                            Icons.add,
                                                            color: Colors.brown,
                                                          )),
                                                    ],
                                                  ),
                                                )
                                              ],
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ]),
                                ),
                              ),
                            ],
                          ),
                        ],
                      )),
                  const SizedBox(
                    height: 4.0,
                    child: const DecoratedBox(
                      decoration: const BoxDecoration(color: Color(0xffEFEBE9)),
                    ),
                  ),
                  //
                  Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 16.0, horizontal: 20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'When do you want order?',
                          style: TextStyle(
                              color: Color(0xFF3C3C3C),
                              fontWeight: FontWeight.bold),
                        ),
                        const Text('*We are open from 08.00 - 20.00 WIB',
                            style: TextStyle(color: Color(0xFF555555))),
                        Container(
                          decoration: const BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(
                                      width: 1, color: Color(0xFFEFEBE9)))),
                          child: ListTile(
                            contentPadding: EdgeInsets.zero,
                            subtitle: const Text('Now - 10 Minute'),
                            title: const Text('As Soon as Possible'),
                            trailing: Radio(
                              activeColor: Color(0xFF03539E),
                              value: 'now',
                              groupValue: getBy,
                              onChanged: (String? value) {
                                setState(() {
                                  getBy = value;
                                });
                              },
                            ),
                          ),
                        ),
                        Container(
                          decoration: const BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(
                                      width: 1, color: Color(0xFFEFEBE9)))),
                          child: ListTile(
                            contentPadding: EdgeInsets.zero,
                            subtitle: const Text('Schedule Pick Up'),
                            title: const Text('Later'),
                            trailing: Radio(
                              activeColor: Color(0xFF03539E),
                              value: 'later',
                              groupValue: getBy,
                              onChanged: (String? value) {
                                setState(() {
                                  getBy = value;
                                });
                              },
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => PaymentMethodPage())),
                          overlayColor: MaterialStateProperty.resolveWith(
                              (states) => Colors.transparent),
                          child: Container(
                            decoration: const BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(
                                        width: 1, color: Color(0xFFEFEBE9)))),
                            child: const ListTile(
                              contentPadding: EdgeInsets.zero,
                              subtitle: Text('Gopay (85.000)'),
                              title: Text('Payment Method'),
                              trailing: Icon(Icons.arrow_forward_ios_outlined),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => VoucherPage())),
                          overlayColor: MaterialStateProperty.resolveWith(
                              (states) => Colors.transparent),
                          child: Container(
                            decoration: const BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(
                                        width: 1, color: Color(0xFFEFEBE9)))),
                            child: ListTile(
                              contentPadding: EdgeInsets.zero,
                              subtitle: Text('no voucher added'),
                              title: Text('Voucher'),
                              trailing: Icon(Icons.arrow_forward_ios_outlined),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )));
  }
}
