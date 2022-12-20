import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class MyCardsHomePage extends StatefulWidget {
  const MyCardsHomePage({Key? key}) : super(key: key);

  @override
  State<MyCardsHomePage> createState() => _MyCardsHomePageState();
}

class _MyCardsHomePageState extends State<MyCardsHomePage> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
        body: Column(
          children: [
            // Credit Card Title
            Container(
              height: 50,
              color: const Color(0xff004c8f),
              alignment: Alignment.centerLeft,
              child: const Padding(
                padding: EdgeInsets.only(left: 10.0),
                child: Text(
                  "Credit Card",
                  style: TextStyle(
                      color: CupertinoColors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            // Card icon and details
            InkWell(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    height: 100,
                    width: 100,
                    child: Image.asset(
                      'asset/images/credit-card.png',
                    ),
                  ),
                  Column(
                    children: const [
                      Text(
                        "MILLENNIA",
                        style: TextStyle(
                          color: CupertinoColors.black,
                          fontSize: 24,
                        ),
                      ),
                      Text(
                        "XXXX 3123",
                        style: TextStyle(
                          color: CupertinoColors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 24,
                        ),
                      ),
                    ],
                  ),
                  const Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: Colors.blue,
                  )
                ],
              ),
              onTap: () {},
            ),
            // Divider
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Divider(
                color: Colors.black,
                height: 10,
              ),
            ),
            // Buttons
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 40.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      transactionButton,
                      emiButton,
                      rewardButton,
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 40.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      cardControlButton,
                      statementButton,
                      blockCardButton,
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(50.0, 40, 0, 0),
                  child: Row(
                    children: [
                      smartBuyButton,
                      const SizedBox(
                        width: 40,
                      ),
                      savingsButton,
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            // Divider
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Divider(
                color: Colors.grey,
                // height: 10,
              ),
            ),
            // Amount Details
            IntrinsicHeight(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        CircularPercentIndicator(
                          radius: 15.0,
                          lineWidth: 4.0,
                          percent: 0.50,
                          progressColor: Colors.black,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              "Available Limit",
                              style: TextStyle(color: Colors.black),
                            ),
                            Text(
                              "₹ 2,21,611.90",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 2,
                        ),
                        const VerticalDivider(
                          // color: Colors.grey,
                          thickness: 2,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              "Outstanding Amount",
                              style: TextStyle(color: Colors.black),
                            ),
                            Text(
                              "₹ 78,000",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ],
                    ),
                    ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                          Color(0xff0047AB),
                        ),
                      ),
                      onPressed: () {},
                      child: const Text(
                        'Pay',
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
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
          onTap: _onItemTapped,
        ),
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget transactionButton = Material(
    child: InkWell(
      splashColor: Colors.blueGrey,
      onTap: () {},
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          SizedBox(
            height: 60,
            width: 60,
            child: Image.asset(
              'asset/images/money-transfer.png',
            ),
          ), // <-- Icon
          const Text("Transactions"), // <-- Text
        ],
      ),
    ),
  );

  Widget emiButton = Material(
    child: InkWell(
      splashColor: Colors.blueGrey,
      onTap: () {},
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            height: 60,
            width: 60,
            child: Image.asset(
              'asset/images/emi.png',
            ),
          ), // <-- Icon
          const Text("Linked EMIs"), // <-- Text
        ],
      ),
    ),
  );

  Widget rewardButton = Material(
    child: InkWell(
      splashColor: Colors.blueGrey,
      onTap: () {},
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            height: 60,
            width: 60,
            child: Image.asset(
              'asset/images/reward.png',
            ),
          ), // <-- Icon
          const Text("Reward Points"), // <-- Text
        ],
      ),
    ),
  );

  Widget cardControlButton = Material(
    child: InkWell(
      splashColor: Colors.blueGrey,
      onTap: () {},
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            height: 60,
            width: 60,
            child: Image.asset(
              'asset/images/control.png',
            ),
          ), // <-- Icon
          const Text("Card Control"), // <-- Text
        ],
      ),
    ),
  );

  Widget statementButton = Material(
    child: InkWell(
      splashColor: Colors.blueGrey,
      onTap: () {},
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            height: 60,
            width: 60,
            child: Image.asset(
              'asset/images/download.png',
            ),
          ), // <-- Icon
          const Text("E-Statement"), // <-- Text
        ],
      ),
    ),
  );

  Widget blockCardButton = Material(
    child: InkWell(
      splashColor: Colors.blueGrey,
      onTap: () {},
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            height: 60,
            width: 60,
            child: Image.asset(
              'asset/images/block.png',
            ),
          ), // <-- Icon
          const Text("Block Card"), // <-- Text
        ],
      ),
    ),
  );

  Widget smartBuyButton = Material(
    child: InkWell(
      splashColor: Colors.blueGrey,
      onTap: () {},
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            height: 60,
            width: 60,
            child: Image.asset(
              'asset/images/smart_pay.png',
            ),
          ), // <-- Icon
          const Text("Smart Pay"), // <-- Text
        ],
      ),
    ),
  );

  Widget savingsButton = Material(
    child: InkWell(
      splashColor: Colors.blueGrey,
      onTap: () {},
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            height: 60,
            width: 60,
            child: Image.asset(
              'asset/images/savings.png',
            ),
          ), // <-- Icon
          const Text("Savings Calculator"), // <-- Text
        ],
      ),
    ),
  );
}
