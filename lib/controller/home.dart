import 'package:flutter/material.dart';
import 'package:music_app/Model/bar_choice.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentIndex = 0;

  List<BarChoice> items = [
    BarChoice(label: "Musique", iconData: Icons.music_note, page: Container()),
    BarChoice(label: "Favoite", iconData: Icons.whatshot, page: Container()),
    BarChoice(label: "Search", iconData: Icons.search, page: Container()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100),
        child: SafeArea(
            child: Container(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: const [
                  Spacer(),
                  Icon(Icons.radio),
                  Icon(Icons.doorbell),
                  Icon(Icons.settings),
                ],
              ),
              const Text("Mon App de musique")
            ],
          ),
        )),
      ),
      body: const Center(
        child: Text("Mon App"),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: items.map((i) => i.item).toList(),
        currentIndex: currentIndex,
        onTap: barTapped,
      ),
    );
  }

  void barTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }
}
