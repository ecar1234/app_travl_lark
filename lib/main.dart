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
  int _curentIndex = 0;
  final List<Widget> _widgetOption = <Widget>[
    const Home(),
    const PurchaseList(),
    const TodaysDeal(),
    const MyPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            elevation: 0,
              // leading: Image(image: ),
              ),
          bottomNavigationBar: BottomNavigationBar(
  backgroundColor: Colors.grey[300],
            showSelectedLabels: false,
            showUnselectedLabels: false,
            type: BottomNavigationBarType.fixed,
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home),label: "home"),
              BottomNavigationBarItem(icon: Icon(Icons.leave_bags_at_home),label: "home"),
              BottomNavigationBarItem(icon: Icon(Icons.percent),label: "home"),
              BottomNavigationBarItem(icon: Icon(Icons.person),label: "home"),
            ],
            currentIndex: _curentIndex,
            onTap: (int index) {
              setState(() {
                _curentIndex = index;
              });
            },
          ),
          body: IndexedStack(
            index: _curentIndex,
            children: _widgetOption,
          )
    ));
  }
}