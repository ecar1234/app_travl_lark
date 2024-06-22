import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../widgets/hotel_container.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: const HomeMain(),
    );
  }
}

class HomeMain extends StatelessWidget {
  const HomeMain({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: <Widget>[
            _mainMenuContainer(MediaQuery.of(context).size),
            const Gap(20.0),
            _recommendHotelContainer(MediaQuery.of(context).size)
          ],
        ),
      ),
    ));
  }
}

Widget _mainMenuContainer(Size size) {
  return Column(children: [
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
          onTap: () {},
          child: Container(
            width: (size.width - 40.0) / 2,
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.lightBlueAccent[200],
            ),
            child: const Center(child: Text("도서관")),
          ),
        ),
        InkWell(
          onTap: () {},
          child: Container(
            width: (size.width - 40.0) / 2,
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.red[200],
            ),
            child: const Center(child: Text("accommodation")),
          ),
        )
      ],
    ),
    const SizedBox(
      height: 10.0,
    ),
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
          onTap: () {},
          child: Container(
            width: (size.width - 40.0) / 3,
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.green[200],
            ),
            child: const Center(child: Text("Restaurant")),
          ),
        ),
        InkWell(
          onTap: () {},
          child: Container(
            width: (size.width - 40.0) / 3,
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.deepPurple[200],
            ),
            child: const Center(child: Text("Activity")),
          ),
        ),
        InkWell(
          onTap: () {},
          child: Container(
            width: (size.width - 40.0) / 3,
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.lightBlueAccent[200],
            ),
            child: const Center(child: Text("Piece")),
          ),
        )
      ],
    ),
  ]);
}

Widget _recommendHotelContainer(Size size) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      SizedBox(
          width: size.width - 10,
          child: const Text(
            "숙소 추천",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          )),
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 300,
              width: size.width - 20,
              padding: const EdgeInsets.only(right: 10.0),
              margin: const EdgeInsets.only(top: 10.0),
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (context, idx) {
                    return const Gap(20.0);
                  },
                  itemBuilder: (context, idx) {
                    return hotelContainer();
                  },
                  itemCount: 5),
            )
          ],
        ),
      )
    ],
  );
}
