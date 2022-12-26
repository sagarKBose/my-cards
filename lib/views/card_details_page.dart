import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardDetailsPage extends StatefulWidget {
  const CardDetailsPage({Key? key}) : super(key: key);

  @override
  State<CardDetailsPage> createState() => _CardDetailsPageState();
}

const List<String> list = <String>['Unbilled', 'unsettled'];
String dropdownValue = list.first;

class _CardDetailsPageState extends State<CardDetailsPage>
    with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 6);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Card Details',
          style: TextStyle(
            color: CupertinoColors.white,
            fontSize: 20,
          ),
        ),
        backgroundColor: const Color(0xff004c8f),
      ),
      body: Column(
        children: [
          // Card Widget
          Container(
            color: const Color(0xff004c8f),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 40),
              child: Card(
                  elevation: 20,
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: SizedBox(
                    width: 430,
                    height: 200,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 25.0, top: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "CREDIT",
                                style: TextStyle(
                                    color: Colors.blueAccent,
                                    fontWeight: FontWeight.w900),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "MILLENNIA",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 24,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "XXXX 3030",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 24,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Outstanding (including Unbilled)",
                                style: TextStyle(color: Colors.black),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                " ₹80,XXX.96",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 22,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Available limit 2,XX,110.04",
                                style: TextStyle(color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 110.0, left: 10),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    "E-statement",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.file_download_outlined,
                                      color: Colors.blueAccent,
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 35,
                                width: 70,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color(0xff004c8f),
                                    // foregroundColor: CupertinoColors.white,
                                    side: const BorderSide(
                                      width: 3,
                                      color: const Color(0xff004c8f),
                                    ),
                                    //border width and color
                                    elevation: 3,
                                    //elevation of button
                                    shape: RoundedRectangleBorder(
                                        //to set border radius to button
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    // padding: const EdgeInsets.all(20) //content padding inside button
                                  ),
                                  onPressed: () {},
                                  child: const Text(
                                    "Pay",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  )),
            ),
          ),
          // Tab Bar widget
          Container(
            color: const Color(0xffF9F6EE),
            width: double.maxFinite,
            child: DefaultTabController(
              length: 6,
              child: TabBar(
                controller: _tabController,
                labelStyle:
                    const TextStyle(fontWeight: FontWeight.w900, fontSize: 18),
                labelColor: CupertinoColors.black,
                unselectedLabelColor: Colors.grey.withOpacity(0.7),
                unselectedLabelStyle: const TextStyle(fontSize: 18),
                isScrollable: true,
                labelPadding: const EdgeInsets.only(left: 20, right: 20),
                indicatorPadding: const EdgeInsets.only(left: 22, right: 20),
                indicatorWeight: 6,
                indicatorColor: const Color(0xff004c8f),
                tabs: const [
                  Tab(text: "Card Control"),
                  Tab(text: "Transactions"),
                  Tab(text: "Linked EMIs"),
                  Tab(text: "Reward Points"),
                  Tab(text: "Services"),
                  Tab(text: "More"),
                ],
              ),
            ),
          ),
          const Divider(
            color: Colors.grey,
            height: 2,
          ),
          // Tab Bar View widget
          SizedBox(
            width: double.maxFinite,
            height: 300,
            child: DefaultTabController(
              length: 6,
              child: TabBarView(
                controller: _tabController,
                children: [
                  const Tab(text: "Card Control"),
                  Tab(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 15.0),
                          child: Row(
                            children: [
                              DropdownButton<String>(
                                value: dropdownValue,
                                icon:
                                    const Icon(Icons.keyboard_arrow_down_sharp),
                                elevation: 16,
                                style: const TextStyle(
                                    color: Colors.black, fontSize: 20),
                                underline: Container(
                                  height: 2,
                                  color: Colors.grey,
                                ),
                                onChanged: (String? value) {
                                  setState(() {
                                    dropdownValue = value!;
                                  });
                                },
                                items: list.map<DropdownMenuItem<String>>(
                                    (String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                              ),
                              const SizedBox(
                                width: 6,
                              ),
                              const Text(
                                " ₹0.00",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 24,
                                    fontWeight: FontWeight.w900),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        Center(
                          child: SizedBox(
                            width: 150,
                            height: 150,
                            child: Image.asset(
                                "asset/images/transaction_history.png"),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          "You don't have any\n  unbilled transactions.",
                          style: TextStyle(color: Colors.grey),
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                  ),
                  const Tab(text: "Linked EMIs"),
                  const Tab(text: "Reward Points"),
                  const Tab(text: "Services"),
                  const Tab(text: "More"),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
