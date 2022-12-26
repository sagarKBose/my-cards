import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MoreOptionsModalBottomSheet extends StatelessWidget {
  const MoreOptionsModalBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        SizedBox(
          height: 370,
          child: ListView(
            physics: const NeverScrollableScrollPhysics(),
            children: <Widget>[
              const SizedBox(
                height: 40,
              ),
              ListTile(
                title: const Text(
                  "My Profile",
                  style: TextStyle(color: Colors.black),
                ),
                leading: SizedBox(
                  height: 40,
                  width: 40,
                  child: Image.asset(
                    'asset/images/profile.png',
                  ),
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios_outlined,
                  color: Colors.black,
                ),
                onTap: () {},
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Divider(
                  color: Colors.grey,
                ),
              ),
              ListTile(
                title: const Text(
                  "Contact Us",
                  style: TextStyle(color: Colors.black),
                ),
                leading: SizedBox(
                  height: 40,
                  width: 40,
                  child: Image.asset(
                    'asset/images/contact.png',
                  ),
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios_outlined,
                  color: Colors.black,
                ),
                onTap: () {},
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Divider(
                  color: Colors.grey,
                ),
              ),
              ListTile(
                title: const Text(
                  "ATM Locator",
                  style: TextStyle(color: Colors.black),
                ),
                leading: SizedBox(
                  height: 40,
                  width: 40,
                  child: Image.asset(
                    'asset/images/atm.png',
                  ),
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios_outlined,
                  color: Colors.black,
                ),
                onTap: () {},
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Divider(
                  color: Colors.grey,
                ),
              ),
              ListTile(
                title: const Text(
                  "Log Out",
                  style: TextStyle(color: Colors.black),
                ),
                leading: SizedBox(
                  height: 40,
                  width: 40,
                  child: Image.asset(
                    'asset/images/logout.png',
                  ),
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios_outlined,
                  color: Colors.black,
                ),
                onTap: () {},
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Divider(
                  color: Colors.grey,
                ),
              ),
              const Text(
                "Created by Sagar K Bose",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: CupertinoColors.activeBlue,
                  fontSize: 16,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
            ],
          ),
        )
      ],
    );
  }
}
