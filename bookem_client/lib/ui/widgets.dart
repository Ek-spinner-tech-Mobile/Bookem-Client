import 'package:bookem_client/extentions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget appointmentItem() {
  return Padding(
    padding: const EdgeInsets.fromLTRB(8, 2, 8, 2),
    child: Card(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(const Radius.circular(10.0)),
                    child: SizedBox(
                      height: 65,
                      width: 65,
                      child: Image.network(
                        "https://picsum.photos/200/300",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 8, 0, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Full haircut for men',
                          style: TextStyle(
                              color: Color(0xff0B3D48),
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '12 Jan 2021 04:00pm',
                          style:
                              TextStyle(color: Color(0xff8B8B8B), fontSize: 13),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 22, 0),
            child: Text(
              '\$30.00',
              style: TextStyle(
                  color: Color(0xff0B3D48),
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    ),
  );
}

Widget profileSummery(String txt, String number) {
  return Column(
    children: [
      Text(number,
          style: const TextStyle(
              color: Color(0xff0B3D48),
              fontSize: 18,
              fontWeight: FontWeight.bold)),
      Text(
        txt,
        style: const TextStyle(
            color: Color(0xffBBBBBB),
            fontSize: 14,
            fontWeight: FontWeight.bold),
      ),
    ],
  );
}

Widget profileMenuOption(String title, String img, {bool showBorder = false}) {
  var bottomBorderColor = Color("#E5E5E5".getHexValue());
  if (!showBorder) {
    bottomBorderColor = Colors.white;
  }
  return SizedBox(
    child: Container(
        height: 80,
        decoration: BoxDecoration(
            border: Border(
                bottom: BorderSide(
          color: bottomBorderColor,
          width: 1.0,
        ))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
              Container(width: 10, height: 10),
              Card(
                  clipBehavior: Clip.antiAlias,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Container(
                      height: 40,
                      width: 40,
                      color: Color("#F5F5F5".getHexValue()),
                      child: Image.asset(img, height: 25, width: 25))),
              Container(width: 10, height: 10),
              Text(
                title,
                style: const TextStyle(
                    fontSize: 16,
                    color: Color(0xff0B3D48),
                    fontWeight: FontWeight.bold),
              ),
            ]),
            Image.asset("assets/images/Arrow---Left-2.png",
                height: 25, width: 25),
          ],
        )),
  );
}

Widget ExpertsRow() {
  return Container(
    decoration: BoxDecoration(
        color: Colors.white, borderRadius: BorderRadius.circular(8)),
    child: Column(
      children: [
        Container(
            width: double.infinity,
            height: 120,
            child: ClipRRect(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(8), topRight: Radius.circular(8)),
                child: Image.network(
                  "https://picsum.photos/200/300",
                  fit: BoxFit.cover,
                ))),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(4.0 , 2,6,0),
              child: SizedBox(
                height: 17,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Expanded(
                      child: Text("Name of the",
                          maxLines: 1,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: Color(0xff0B3D48))),
                    ),
                    Text("4.8",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            color: Color(0xFF169BB9))),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 17,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(4.0, 0, 3, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text("xx xx xxxx",
                        style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 13,
                            color: Color(0xFF8B8B8B))),
                    Text("Rating",
                        style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 11,
                            color: Color(0xFF169BB9)))
                  ],
                ),
              ),
            ),
          ],
        )
      ],
    ),
  );
}
