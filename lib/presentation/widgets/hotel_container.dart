import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

Widget hotelContainer() {
  return Container(
      width: 240,
      margin: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        border: Border.all(width: 1.0),
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 3,
            blurRadius: 7,
            offset: const Offset(3, 3), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        children: [
          Container(
            height: 150,
            width: 240,
            decoration: const BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10.0),
                    topRight: Radius.circular(10.0))),
            child: const Center(
              child: Text("image"),
            ),
          ), //img section
          Container(
            height: 135,
            width: 240,
            padding:
                const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
            // color: Colors.blueAccent,
            child: SizedBox(
              width: 240,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "ABC hotel",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  SizedBox(
                    height: 16.0,
                    child: ListView.builder(
                      itemExtent: 16,
                        scrollDirection: Axis.horizontal,
                        itemCount: 5,
                        itemBuilder: (context, idx) {
                          return Icon(Icons.star,color:Colors.yellowAccent[800],size: 18,);
                        }),
                  ),
                  const Gap(5.0),
                  SizedBox(
                    height: 30.0,
                    child: RichText(
                      text: TextSpan(style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.blue[400]
                      ),children: const [
                        TextSpan(text: "7.7  "),
                        TextSpan(text: "매우 좋음")
                      ]),
                    ),
                  )

                ],
              ),
            ),
          )
        ],
      ));
}
