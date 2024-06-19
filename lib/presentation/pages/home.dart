import 'package:flutter/cupertino.dart';
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
      body: HomeMain(),
    );
  }
}

class HomeMain extends StatelessWidget {
  const HomeMain({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Expanded(
              child: Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Container(
                        width: (MediaQuery.of(context).size.width - 40.0) / 2,
                        height: 100,
                        color: Colors.lightBlueAccent[200],
                        child: const Center(child: Text("도서관")),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        width: (MediaQuery.of(context).size.width - 40.0) / 2,
                        height: 100,
                        color: Colors.deepPurpleAccent[100],
                        child: const Center(child: Text("숙소")),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Container(
                        width: (MediaQuery.of(context).size.width - 40.0) / 3,
                        height: 100,
                        color: Colors.lightBlueAccent[200],
                        child: const Center(child: Text("도서관")),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        width: (MediaQuery.of(context).size.width - 40.0) / 3,
                        height: 100,
                        color: Colors.deepPurpleAccent[100],
                        child: const Center(child: Text("숙소")),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        width: (MediaQuery.of(context).size.width - 40.0) / 3,
                        height: 100,
                        color: Colors.deepPurpleAccent[100],
                        child: const Center(child: Text("숙소")),
                      ),
                    )
                  ],
                ),
              ]),
            )));
  }
}
