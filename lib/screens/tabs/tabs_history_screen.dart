import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class TabsHistoryPage extends StatefulWidget {
  const TabsHistoryPage({Key? key}) : super(key: key);

  @override
  State<TabsHistoryPage> createState() => _TabsHistoryPageState();
}

class _TabsHistoryPageState extends State<TabsHistoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        color: Colors.amber,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            'History Page',
            style: Theme.of(context).textTheme.headline3,
          ),
        ]),
      ),
    );
  }
}
