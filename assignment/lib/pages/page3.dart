import 'package:flutter/material.dart';
import 'package:assignment/material/increament.dart';
class Page3 extends StatelessWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffC4DFCB),
      child: Center(
        child: increment(),
      ),
    );
  }
}