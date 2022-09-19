import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class TabsAccountPage extends StatefulWidget {
  const TabsAccountPage({Key? key}) : super(key: key);

  @override
  State<TabsAccountPage> createState() => _TabsAccountPageState();
}

class _TabsAccountPageState extends State<TabsAccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        color: Colors.amber,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            'Account Page',
            style: Theme.of(context).textTheme.headline3,
          ),
        ]),
      ),
    );
  }
}
