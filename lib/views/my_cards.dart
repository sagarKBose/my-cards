import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_cards/views/add_card_page.dart';
import 'package:my_cards/views/more_options_modal_bottomsheet.dart';
import 'package:my_cards/views/your_cards_page.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class MyCardsHomePage extends StatefulWidget {
  const MyCardsHomePage({Key? key}) : super(key: key);

  @override
  State<MyCardsHomePage> createState() => _MyCardsHomePageState();
}

final _scaffoldKey = GlobalKey<ScaffoldState>();

class _MyCardsHomePageState extends State<MyCardsHomePage> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        body: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: const Color(0xff004c8f),
            title: Row(
              children: [
                SizedBox(
                  height: 25,
                  width: 25,
                  child: Image.asset(
                    'asset/images/card_logo.png',
                  ),
                ),
                const SizedBox(
                  width: 6,
                ),
                const Text(
                  "My Cards",
                  style: TextStyle(
                    color: CupertinoColors.white,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            actions: [
              Row(
                children: [
                  const Icon(
                    Icons.chat_bubble_outline,
                    color: CupertinoColors.white,
                  ),
                  const SizedBox(
                    width: 6,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Ask For Help",
                      style: TextStyle(
                        color: CupertinoColors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                ],
              ),
            ],
          ),
          body: _pages.elementAt(_selectedIndex),
          bottomNavigationBar: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              backgroundColor: Colors.white38,
              elevation: 10,
              iconSize: 28,
              selectedIconTheme: const IconThemeData(color: Color(0xff0047AB)),
              selectedItemColor: const Color(0xff0047AB),
              selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(Icons.credit_card_outlined),
                  label: 'Your Cards',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.add_circle_outline),
                  label: 'Add',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.more_horiz_outlined),
                  label: 'More',
                ),
              ],
              currentIndex: _selectedIndex,
              onTap: (int index) {
                if (index == 2) {
                  showMenu();
                  return;
                }
                setState(() {
                  _selectedIndex = index;
                });
              }),
        ),
      ),
    );
  }

  showMenu() {
    showModalBottomSheet(
        useRootNavigator: true,
        context: context,
        builder: (BuildContext context) {
          return const MoreOptionsModalBottomSheet();
        });
  }

  final dynamic _pages = <Widget>[
    YourCardsPage(),
    const AddCardPage(),
    Container(),
  ];
}
