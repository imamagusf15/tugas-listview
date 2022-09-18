import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tugas1_flutter/screen/profile_page.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        backgroundColor: Colors.lightGreen,
        middle: Text(
          "Home Page",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      child: Center(
        child: CupertinoButton(
          color: Colors.lightGreen,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute<void>(
                builder: (BuildContext context) => const MyProfilePage(),
              ),
            );
          },
          child: const Text(
            "Akun Page",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
