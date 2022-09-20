import 'package:flutter/material.dart';

class ListDetailPage extends StatefulWidget {
  const ListDetailPage({Key? key}) : super(key: key);

  @override
  State<ListDetailPage> createState() => _ListDetailPageState();
}

class _ListDetailPageState extends State<ListDetailPage> {
  int counter = 0;
  bool IceOrHot = true;
  var size = "R";
  bool sugar = true;
  bool ice = true;
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
                backgroundColor: Colors.white,
                elevation: 0,
                title: Transform(
                  // you can forcefully translate values left side using Transform
                  transform: Matrix4.translationValues(-60.0, 0.0, 0.0),
                  child: Text(
                    "Customize order",
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
                            Text(
                              "Rp.25.000",
                              style: TextStyle(
                                  color: Color(0xff555555),
                                  fontWeight: FontWeight.w700,
                                  fontSize: 14),
                            )
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
                            child: const Text('Add Order'),
                          ))
                    ],
                  ),
                ),
              ),
              body: SingleChildScrollView(
                child: Column(
                  children: [
                    Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Container(
                          color: const Color(0xffEFEBE9),
                          width: MediaQuery.of(context).size.width,
                          height: 350,
                          child: Image.asset(
                            'assets/images/product-detail-big.png',
                          ),
                        ),
                        Container(
                          height: 750,
                        ),
                        Positioned(
                            top: 300,
                            left: 20,
                            right: 20,
                            child: Column(
                              children: [
                                Container(
                                  height: 144,
                                  // width:
                                  // MediaQuery.of(context).size.width * 0.9,
                                  decoration: const BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                            color:
                                                Color.fromRGBO(0, 0, 0, 0.15),
                                            offset: Offset(0, 0),
                                            blurRadius: 5)
                                      ],
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(8)),
                                      color: Colors.white),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          Row(
                                            children: const [
                                              Text(
                                                "Coffe",
                                                style: TextStyle(
                                                    color: Color(0xff5D4037),
                                                    fontSize: 14,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              )
                                            ],
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: const [
                                              Text("Coffee milk",
                                                  style: TextStyle(
                                                      color: Color(0xff5D4037),
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.w500)),
                                              Text("Rp25.000",
                                                  style: TextStyle(
                                                      color: Color(0xff5D4037),
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.w500))
                                            ],
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              const Text(
                                                  "Ice americano + fresh milk",
                                                  style: TextStyle(
                                                      color: Color(0xff5D4037),
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w500)),
                                              Container(
                                                height: 25,
                                                decoration: BoxDecoration(
                                                  border: const Border(
                                                    top: BorderSide(
                                                        color:
                                                            Color(0xff5D4037)),
                                                    left: BorderSide(
                                                        color:
                                                            Color(0xff5D4037)),
                                                    right: BorderSide(
                                                        color:
                                                            Color(0xff5D4037)),
                                                    bottom: BorderSide(
                                                        color:
                                                            Color(0xff5D4037)),
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                  color:
                                                      const Color(0xff5D4037),
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
                                                            color:
                                                                Colors.white)),
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
                                                            print('${counter}');
                                                            counter++;
                                                          });
                                                        },
                                                        child: const Icon(
                                                          Icons.add,
                                                          color: Colors.white,
                                                        )),
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Row(
                                                children: const [
                                                  Icon(
                                                    Icons.star_outlined,
                                                    color: Color(0xffFFB800),
                                                    size: 12,
                                                  ),
                                                  Text(
                                                      " 4.9 (23) - Rating and review",
                                                      style: TextStyle(
                                                          color:
                                                              Color(0xff5D4037),
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.w500)),
                                                ],
                                              ),
                                              IconButton(
                                                icon: const Icon(
                                                  Icons
                                                      .arrow_forward_ios_outlined,
                                                  color: Color(0xff5D4037),
                                                ),
                                                onPressed: () {},
                                              )
                                            ],
                                          ),
                                        ]),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  height: 230,
                                  width:
                                      MediaQuery.of(context).size.width * 0.9,
                                  decoration: const BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                            color:
                                                Color.fromRGBO(0, 0, 0, 0.15),
                                            offset: Offset(0, 0),
                                            blurRadius: 5)
                                      ],
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(8)),
                                      color: Colors.white),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Row(
                                          children: const [
                                            Text(
                                              "Customize",
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w600,
                                                  color: Color(0xff3C3C3C)),
                                            )
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            const Text(
                                              "Variant",
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w400,
                                                  color: Color(0xff3C3C3C)),
                                            ),
                                            Row(
                                              children: [
                                                SizedBox(
                                                  width: 60,
                                                  height: 26,
                                                  child: ElevatedButton(
                                                    onPressed: () {
                                                      setState(() {
                                                        IceOrHot = true;
                                                      });
                                                    },
                                                    style: ElevatedButton
                                                        .styleFrom(
                                                      side: BorderSide(
                                                          color: IceOrHot
                                                              ? const Color(
                                                                  0xffF5F5F5)
                                                              : const Color(
                                                                  0xff5D4037)),
                                                      shape: const RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius.all(
                                                                  Radius
                                                                      .circular(
                                                                          10))),
                                                      primary: IceOrHot
                                                          ? const Color(
                                                              0xff5D4037)
                                                          : const Color(
                                                              0xffF5F5F5),
                                                    ),
                                                    child: Text(
                                                      'Ice',
                                                      style: TextStyle(
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          color: IceOrHot
                                                              ? const Color(
                                                                  0xffF5F5F5)
                                                              : const Color(
                                                                  0xff5D4037)),
                                                    ),
                                                  ),
                                                ),
                                                const SizedBox(
                                                  width: 5,
                                                ),
                                                SizedBox(
                                                  width: 60,
                                                  height: 26,
                                                  child: ElevatedButton(
                                                    onPressed: () {
                                                      setState(() {
                                                        IceOrHot = false;
                                                      });
                                                    },
                                                    style: ElevatedButton.styleFrom(
                                                        side: BorderSide(
                                                            color: !IceOrHot
                                                                ? const Color(
                                                                    0xffF5F5F5)
                                                                : const Color(
                                                                    0xff5D4037)),
                                                        shape: const RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .all(Radius
                                                                        .circular(
                                                                            10))),
                                                        primary: !IceOrHot
                                                            ? const Color(
                                                                0xff5D4037)
                                                            : const Color(
                                                                0xffF5F5F5),
                                                        minimumSize:
                                                            const Size(26, 42)),
                                                    child: Text(
                                                      'Hot',
                                                      style: TextStyle(
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          color: !IceOrHot
                                                              ? const Color(
                                                                  0xffF5F5F5)
                                                              : const Color(
                                                                  0xff5D4037)),
                                                    ),
                                                  ),
                                                )
                                              ],
                                            )
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            const Text(
                                              "Size",
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w400,
                                                  color: Color(0xff3C3C3C)),
                                            ),
                                            Row(
                                              children: [
                                                SizedBox(
                                                  width: 90,
                                                  height: 26,
                                                  child: ElevatedButton(
                                                    onPressed: () {
                                                      setState(() {
                                                        size = "R";
                                                      });
                                                    },
                                                    style: ElevatedButton.styleFrom(
                                                        side: BorderSide(
                                                            color: size == "R"
                                                                ? const Color(
                                                                    0xffF5F5F5)
                                                                : const Color(
                                                                    0xff5D4037)),
                                                        shape: const RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius.all(
                                                                    Radius.circular(
                                                                        10))),
                                                        primary: size == "R"
                                                            ? const Color(
                                                                0xff5D4037)
                                                            : const Color(
                                                                0xffF5F5F5),
                                                        minimumSize:
                                                            const Size(26, 42)),
                                                    child: Text(
                                                      'Regular',
                                                      style: TextStyle(
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          color: size == "R"
                                                              ? const Color(
                                                                  0xffF5F5F5)
                                                              : const Color(
                                                                  0xff5D4037)),
                                                    ),
                                                  ),
                                                ),
                                                const SizedBox(
                                                  width: 5,
                                                ),
                                                SizedBox(
                                                  width: 90,
                                                  height: 26,
                                                  child: ElevatedButton(
                                                    onPressed: () {
                                                      setState(() {
                                                        size = "M";
                                                      });
                                                    },
                                                    style: ElevatedButton.styleFrom(
                                                        side: BorderSide(
                                                            color: size == "M"
                                                                ? const Color(
                                                                    0xffF5F5F5)
                                                                : const Color(
                                                                    0xff5D4037)),
                                                        shape: const RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius.all(
                                                                    Radius.circular(
                                                                        10))),
                                                        primary: size == "M"
                                                            ? const Color(
                                                                0xff5D4037)
                                                            : const Color(
                                                                0xffF5F5F5),
                                                        minimumSize:
                                                            const Size(26, 42)),
                                                    child: Text(
                                                      'Medium',
                                                      style: TextStyle(
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          color: size == "M"
                                                              ? const Color(
                                                                  0xffF5F5F5)
                                                              : const Color(
                                                                  0xff5D4037)),
                                                    ),
                                                  ),
                                                ),
                                                const SizedBox(
                                                  width: 5,
                                                ),
                                                SizedBox(
                                                  width: 90,
                                                  height: 26,
                                                  child: ElevatedButton(
                                                    onPressed: () {
                                                      setState(() {
                                                        size = "L";
                                                      });
                                                    },
                                                    style: ElevatedButton.styleFrom(
                                                        side: BorderSide(
                                                            color: size == "L"
                                                                ? const Color(
                                                                    0xffF5F5F5)
                                                                : const Color(
                                                                    0xff5D4037)),
                                                        shape: const RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius.all(
                                                                    Radius.circular(
                                                                        10))),
                                                        primary: size == "L"
                                                            ? const Color(
                                                                0xff5D4037)
                                                            : const Color(
                                                                0xffF5F5F5),
                                                        minimumSize:
                                                            const Size(26, 42)),
                                                    child: Text(
                                                      'Large',
                                                      style: TextStyle(
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          color: size == "L"
                                                              ? const Color(
                                                                  0xffF5F5F5)
                                                              : const Color(
                                                                  0xff5D4037)),
                                                    ),
                                                  ),
                                                )
                                              ],
                                            )
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            const Text(
                                              "Sugar",
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w400,
                                                  color: Color(0xff3C3C3C)),
                                            ),
                                            Row(
                                              children: [
                                                SizedBox(
                                                  width: 90,
                                                  height: 26,
                                                  child: ElevatedButton(
                                                    onPressed: () {
                                                      setState(() {
                                                        sugar = true;
                                                      });
                                                    },
                                                    style: ElevatedButton
                                                        .styleFrom(
                                                      side: BorderSide(
                                                          color: sugar
                                                              ? const Color(
                                                                  0xffF5F5F5)
                                                              : const Color(
                                                                  0xff5D4037)),
                                                      shape: const RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius.all(
                                                                  Radius
                                                                      .circular(
                                                                          10))),
                                                      primary: sugar
                                                          ? const Color(
                                                              0xff5D4037)
                                                          : const Color(
                                                              0xffF5F5F5),
                                                    ),
                                                    child: Text(
                                                      'Normal',
                                                      style: TextStyle(
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          color: sugar
                                                              ? const Color(
                                                                  0xffF5F5F5)
                                                              : const Color(
                                                                  0xff5D4037)),
                                                    ),
                                                  ),
                                                ),
                                                const SizedBox(
                                                  width: 5,
                                                ),
                                                SizedBox(
                                                  width: 90,
                                                  height: 26,
                                                  child: ElevatedButton(
                                                    onPressed: () {
                                                      setState(() {
                                                        sugar = false;
                                                      });
                                                    },
                                                    style: ElevatedButton.styleFrom(
                                                        side: BorderSide(
                                                            color: !sugar
                                                                ? const Color(
                                                                    0xffF5F5F5)
                                                                : const Color(
                                                                    0xff5D4037)),
                                                        shape: const RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .all(Radius
                                                                        .circular(
                                                                            10))),
                                                        primary: !sugar
                                                            ? const Color(
                                                                0xff5D4037)
                                                            : const Color(
                                                                0xffF5F5F5),
                                                        minimumSize:
                                                            const Size(26, 42)),
                                                    child: Text(
                                                      'Less',
                                                      style: TextStyle(
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          color: !sugar
                                                              ? const Color(
                                                                  0xffF5F5F5)
                                                              : const Color(
                                                                  0xff5D4037)),
                                                    ),
                                                  ),
                                                )
                                              ],
                                            )
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            const Text(
                                              "Ice",
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w400,
                                                  color: Color(0xff3C3C3C)),
                                            ),
                                            Row(
                                              children: [
                                                SizedBox(
                                                  width: 90,
                                                  height: 26,
                                                  child: ElevatedButton(
                                                    onPressed: () {
                                                      setState(() {
                                                        ice = true;
                                                      });
                                                    },
                                                    style: ElevatedButton
                                                        .styleFrom(
                                                      side: BorderSide(
                                                          color: ice
                                                              ? const Color(
                                                                  0xffF5F5F5)
                                                              : const Color(
                                                                  0xff5D4037)),
                                                      shape: const RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius.all(
                                                                  Radius
                                                                      .circular(
                                                                          10))),
                                                      primary: ice
                                                          ? const Color(
                                                              0xff5D4037)
                                                          : const Color(
                                                              0xffF5F5F5),
                                                    ),
                                                    child: Text(
                                                      'Normal',
                                                      style: TextStyle(
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          color: ice
                                                              ? const Color(
                                                                  0xffF5F5F5)
                                                              : const Color(
                                                                  0xff5D4037)),
                                                    ),
                                                  ),
                                                ),
                                                const SizedBox(
                                                  width: 5,
                                                ),
                                                SizedBox(
                                                  width: 90,
                                                  height: 26,
                                                  child: ElevatedButton(
                                                    onPressed: () {
                                                      setState(() {
                                                        ice = false;
                                                      });
                                                    },
                                                    style: ElevatedButton.styleFrom(
                                                        side: BorderSide(
                                                            color: !ice
                                                                ? const Color(
                                                                    0xffF5F5F5)
                                                                : const Color(
                                                                    0xff5D4037)),
                                                        shape: const RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .all(Radius
                                                                        .circular(
                                                                            10))),
                                                        primary: !ice
                                                            ? const Color(
                                                                0xff5D4037)
                                                            : const Color(
                                                                0xffF5F5F5),
                                                        minimumSize:
                                                            const Size(26, 42)),
                                                    child: Text(
                                                      'Less',
                                                      style: TextStyle(
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          color: !ice
                                                              ? const Color(
                                                                  0xffF5F5F5)
                                                              : const Color(
                                                                  0xff5D4037)),
                                                    ),
                                                  ),
                                                )
                                              ],
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                              ],
                            )),
                      ],
                    ),
                  ],
                ),
              ),
            )));
  }
}
