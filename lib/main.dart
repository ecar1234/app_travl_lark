import 'package:app_the_clark/presentation/pages/follow_page.dart';
import 'package:app_the_clark/presentation/pages/home.dart';
import 'package:app_the_clark/presentation/pages/my_page.dart';
import 'package:app_the_clark/presentation/pages/purchase_list.dart';

import 'package:app_the_clark/presentation/pages/todays_deal.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // showSemanticsDebugger: true,
      debugShowCheckedModeBanner: false,
      title: 'app the clark',
      home: AppMain(),
    );
  }
}

class AppMain extends StatefulWidget {
  const AppMain({super.key});

  @override
  State<AppMain> createState() => _AppMainState();
}

class _AppMainState extends State<AppMain> {
  int _currentIndex = 0;
  final List<Widget> _widgetOption = <Widget>[
    const Home(),
    const PurchaseList(),
    const TodaysDeal(),
    const FollowPage(),
    const MyPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              leadingWidth: 150,
              elevation: 1.0,
              shadowColor: Colors.black,
              leading: Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      iconSize: 25.0,
                      onPressed: () {},
                      icon: const Icon(Icons.airplanemode_on),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          "THE LARK",
                          style: TextStyle(fontSize: 12.0, color: Colors.black),
                        )),
                  ],
                ),
              ),
              actions: [
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      "20000 D",
                      style: TextStyle(color: Colors.black),
                    )),
                Container(
                  margin: const EdgeInsets.only(right: 15.0),
                  child: InkWell(
                    onTap: () {},
                    child: const CircleAvatar(
                      backgroundColor: Colors.cyan,
                    ),
                  ),
                )
              ],
            ),
            bottomNavigationBar: BottomNavigationBar(
              backgroundColor: Colors.grey[300],
              showSelectedLabels: false,
              showUnselectedLabels: false,
              type: BottomNavigationBarType.fixed,
              selectedIconTheme: const IconThemeData(size: 35.0, color: Colors.black),
              items: const [
                BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
                BottomNavigationBarItem(icon: Icon(Icons.card_travel_rounded), label: "reservation"),
                BottomNavigationBarItem(icon: Icon(Icons.percent), label: "coupon"),
                BottomNavigationBarItem(icon: Icon(Icons.phonelink_ring), label: "myPage"),
                BottomNavigationBarItem(icon: Icon(Icons.person), label: "myPage"),
              ],
              currentIndex: _currentIndex,
              onTap: (int index) {
                setState(() {
                  _currentIndex = index;
                });
              },
            ),
            body: _widgetOption.elementAt(_currentIndex)));
  }
}
