import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import 'card_details_page.dart';

class YourCardsPage extends StatelessWidget {
  YourCardsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
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
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const CardDetailsPage()),
            );
          },
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
                          "₹2,XX,611.90",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.w600),
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
                          "₹80,XXX.96",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.w600),
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
    );
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
