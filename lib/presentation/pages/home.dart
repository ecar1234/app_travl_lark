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
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: (MediaQuery.of(context).size.width - 30.0) / 2,
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
                      width: (MediaQuery.of(context).size.width - 30.0) / 2,
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
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Text(
                    "숙소 추전",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          // A fixed-height child.
                          color: Colors.yellow.withOpacity(.5),
                          height: 120.0,
                          width: 100,
                          alignment: Alignment.center,
                          child: const Text('ssdf'),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
