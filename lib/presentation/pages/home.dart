import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: IconButton(
            iconSize: 30.0,
            onPressed: () {},
            icon: const Icon(Icons.airplanemode_on),
          ),
        ),
        title: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              TextButton(onPressed: () {}, child: const Text("THE LARK")),
            ],
          ),
        ),
      ),
    );
  }
}
