import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class PurchaseList extends StatefulWidget {
  const PurchaseList({super.key});

  @override
  State<PurchaseList> createState() => _PurchaseListState();
}

class _PurchaseListState extends State<PurchaseList> {

  int _selectedIndex = 0;
  final List<Widget> _pagesOption = [
    _barPurtures(),
    _acommondationPurtures(),
    _activityPurtures(),
    _restauantsPurtures(),
    _piecePurtures()
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          _buttonsContainer(MediaQuery.of(context).size),
        ],
      ),
    ));
  }
}


Widget _buttonsContainer(Size size) {
  return Column(
    children: [
      SizedBox(
        height: 50,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: SizedBox(
            child: Row(
              children: [
                ElevatedButton(onPressed: (){}, child: const Text("도서관")),
                const Gap(10.0),
                ElevatedButton(onPressed: (){}, child: const Text("숙소")),
                const Gap(10.0),
                ElevatedButton(onPressed: (){}, child: const Text("Activity")),
                const Gap(10.0),
                ElevatedButton(onPressed: (){}, child: const Text("식당")),
                const Gap(10.0),
                ElevatedButton(onPressed: (){}, child: const Text("조각")),
              ],
            ),
          ),
        ),
      ),
      // _pagesOption.elementAt(_selectedIndex)
    ],
  );
}

Widget _barPurtures(){
  return Container(
    child: Center(
      child: Text("도서 예약 정보가 없습니다."),
    ),
  );
}
Widget _acommondationPurtures(){
  return Container(
    child: Center(
      child: Text("숙소 예약 정보가 없습니다."),
    ),
  );
}
Widget _activityPurtures(){
  return Container(
    child: Center(
      child: Text("액티비티 예약 정보가 없습니다."),
    ),
  );
}
Widget _restauantsPurtures(){
  return Container(
    child: Center(
      child: Text("식당예약 정보가 없습니다."),
    ),
  );
}
Widget _piecePurtures(){
  return Container(
    child: Center(
      child: Text("조각 참여 정보가 없습니다."),
    ),
  );
}