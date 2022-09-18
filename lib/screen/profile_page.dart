import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class MyProfilePage extends StatefulWidget {
  const MyProfilePage({super.key});

  @override
  State<MyProfilePage> createState() => _MyProfilePageState();
}

class _MyProfilePageState extends State<MyProfilePage> {
  bool darkMode = false;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: Colors.white,
      navigationBar: const CupertinoNavigationBar(
        backgroundColor: Colors.lightGreen,
        middle: Text(
          "Akun Saya",
          style: TextStyle(
            fontSize: 24,
            color: Colors.white,
          ),
        ),
      ),
      child: Scaffold(
        body: Center(
          child: ListView(
            children: [
              Container(
                width: 360,
                height: 250,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: <Color>[Colors.white, Colors.lightGreen],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CupertinoButton(
                      child: CircleAvatar(
                        radius: 60,
                        backgroundColor: Colors.grey[200],
                        child: const Icon(
                          CupertinoIcons.profile_circled,
                          color: Colors.black87,
                          size: 120,
                        ),
                      ),
                      onPressed: () {},
                    ),
                    const Text(
                      "Imam Agus Faisal",
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const Text(
                      "imamagusf15",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              ListTile(
                contentPadding: const EdgeInsets.symmetric(horizontal: 32),
                leading: const Icon(
                  CupertinoIcons.pencil,
                  color: Colors.lightGreen,
                ),
                title: const Text("Edit Profil"),
                trailing: const Icon(CupertinoIcons.forward),
                onTap: () {},
              ),
              const Divider(
                thickness: 1,
                height: 1,
              ),
              ListTile(
                contentPadding: const EdgeInsets.symmetric(horizontal: 32),
                leading: const Icon(
                  Icons.vpn_key,
                  color: Colors.lightGreen,
                ),
                title: const Text("Ubah Password"),
                trailing: const Icon(CupertinoIcons.forward),
                onTap: () {},
              ),
              const Divider(
                thickness: 1,
                height: 1,
              ),
              ListTile(
                contentPadding: const EdgeInsets.symmetric(horizontal: 32),
                leading: const Icon(
                  CupertinoIcons.mail_solid,
                  color: Colors.lightGreen,
                ),
                title: const Text("Ubah Email"),
                trailing: const Icon(CupertinoIcons.forward),
                onTap: () {},
              ),
              const Divider(
                thickness: 12,
                height: 12,
              ),
              ListTile(
                  contentPadding: const EdgeInsets.fromLTRB(32, 0, 16, 0),
                  leading: const Icon(
                    Icons.brightness_4_sharp,
                    color: Colors.lightGreen,
                  ),
                  title: const Text("Dark Mode"),
                  trailing: CupertinoSwitch(
                    activeColor: Colors.lightGreen,
                    value: darkMode,
                    onChanged: (value) {
                      setState(() {
                        darkMode = value;
                      });
                    },
                  )),
              const Divider(
                thickness: 1,
                height: 1,
              ),
              ListTile(
                contentPadding: const EdgeInsets.symmetric(horizontal: 32),
                leading: const Icon(
                  Icons.color_lens,
                  color: Colors.lightGreen,
                ),
                title: const Text("Ubah Tema Aplikasi"),
                trailing: const Icon(CupertinoIcons.forward),
                onTap: () {},
              ),
              const Divider(
                thickness: 32,
                height: 32,
              ),
              ListTile(
                contentPadding: const EdgeInsets.symmetric(horizontal: 32),
                leading: const Icon(
                  CupertinoIcons.square_arrow_left_fill,
                  color: Colors.lightGreen,
                ),
                title: const Text(
                  "Logout",
                  style: TextStyle(fontSize: 20),
                ),
                onTap: () {
                  tampilAlertDialog(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  void tampilAlertDialog(context) {
    showCupertinoDialog(
      context: context,
      builder: (context) => CupertinoAlertDialog(
        title: const Text("Logout"),
        content: const Text("Apakah kamu yakin ?"),
        actions: [
          CupertinoDialogAction(
            child: const Text(
              "Tidak",
              style: TextStyle(color: Colors.red),
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          CupertinoDialogAction(
            child: const Text(
              "Ya",
              style: TextStyle(
                color: Colors.lightGreen,
              ),
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
