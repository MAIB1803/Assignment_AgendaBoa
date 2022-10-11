import 'package:flutter/material.dart';

class increment extends StatefulWidget {
  increment({Key? key}) : super(key: key);

  @override
  State<increment> createState() => _incrementState();
}

class _incrementState extends State<increment> {
  int counter = 0;
  @override
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffC4DFCB),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
            onPressed: () {
              setState(() {
                counter++;
              });
            },
            child: Container(
              padding: const EdgeInsets.all(20),
              // ignore: prefer_const_constructors
              decoration: BoxDecoration(
                color: const Color(0xff2F8D46),
                borderRadius: const BorderRadius.all(Radius.circular(20)),
              ),
              child: const Text(
                "Increase me !!",
                style: TextStyle(color: Colors.white, fontSize: 40),
              ),
            ),
          ),
          const SizedBox(
            height: 80,
          ),
          Text(
            "Counter : " "$counter",
            style: const TextStyle(color: Colors.white, fontSize: 40),
          )
        ],
      ),
    );
  }
}
