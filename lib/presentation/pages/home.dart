import 'package:flutter/material.dart';

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
            Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: (MediaQuery.of(context).size.width - 40.0) / 2,
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
                      width: (MediaQuery.of(context).size.width - 40.0) / 2,
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
                      width: (MediaQuery.of(context).size.width - 40.0) / 3,
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
                      width: (MediaQuery.of(context).size.width - 40.0) / 3,
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
                      width: (MediaQuery.of(context).size.width - 40.0) / 3,
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
            ]),
            const SizedBox(
              height: 30.0,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                    width: MediaQuery.of(context).size.width - 10,
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
                        width: MediaQuery.of(context).size.width - 20,
                        margin: const EdgeInsets.only(top: 10.0),
                        child: ListView.separated(
                            scrollDirection: Axis.horizontal,
                            separatorBuilder: (context, idx) {
                              return const SizedBox(
                                width: 20.0,
                              );
                            },
                            itemBuilder: (context, idx) {
                              return Container(
                                  width: 240,
                                  decoration: BoxDecoration(
                                      border: Border.all(width: 1.0), borderRadius: BorderRadius.all(Radius.circular(10)), color: Colors.white),
                                  child: Column(
                                    children: [
                                      Container(
                                        height: 150,
                                        width: 240,
                                        decoration: const BoxDecoration(
                                            color: Colors.grey,
                                            borderRadius: BorderRadius.only(topLeft: Radius.circular(10.0), topRight: Radius.circular(10.0))),
                                        child: const Center(
                                          child: Text("image"),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 10.0,
                                      ),
                                    ],
                                  ));
                            },
                            itemCount: 5),
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    ));
  }
}
