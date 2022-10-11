import 'package:assignment/pages/page1.dart';
import 'package:assignment/pages/page2.dart';
import 'package:assignment/pages/page3.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Agenda Boa',
      theme: ThemeData(
        primaryColor: const Color(0xff2F8D46),
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        hoverColor: Colors.transparent,
      ),
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int pageIndex = 0;
  int pageNav = 1;
  final pages = [
    const Page1(),
    const Page2(),
    const Page3(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffC4DFCB),
      appBar: AppBar(
        title: Text(
          "Counter" "$pageNav",
          style: TextStyle(
            color: Theme.of(context).primaryColor,
            fontSize: 25,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: IndexedStack(
        index: pageIndex,
        children: pages,
      ),
      bottomNavigationBar: buildMyNavBar(context),
    );
  }

  Container buildMyNavBar(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          TextButton(
            onPressed: () {
              setState(() {
                pageIndex = 0;
                pageNav = 1;
              });
            },
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.resolveWith<Color>(
                  (Set<MaterialState> states) {
                if (pageIndex == 0) return Colors.white;
                return Colors.grey;
              }),
            ),
            child: const Text(
              'Text Button ',
              style: TextStyle(fontSize: 24),
            ),
          ),
          TextButton(
            onPressed: () {
              setState(() {
                pageIndex = 1;
                pageNav = 2;
              });
            },
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.resolveWith<Color>(
                  (Set<MaterialState> states) {
                if (pageIndex == 1) return Colors.white;
                return Colors.grey;
              }),
            ),
            child: const Text(
              'Text Button ',
              style: TextStyle(fontSize: 24),
            ),
          ),
          TextButton(
            onPressed: () {
              setState(() {
                pageIndex = 2;
                pageNav = 3;
              });
            },
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.resolveWith<Color>(
                  (Set<MaterialState> states) {
                if (pageIndex == 2) return Colors.white;
                return Colors.grey;
              }),
            ),
            child: const Text(
              'Text Button ',
              style: TextStyle(fontSize: 24),
            ),
          ),
          FloatingActionButton(
            backgroundColor: Colors.grey,
            hoverColor: Colors.white,
            onPressed: () {
              setState(() {
                if (pageIndex == 2) {
                  setState(() {
                    pageIndex = 0;
                  });
                } else {
                  pageIndex++;
                }
              });
            },
            tooltip: 'Next Page',
            child: const Icon(
              Icons.add,
              color: Colors.green,
            ),
          )
        ],
      ),
    );
  }
}
