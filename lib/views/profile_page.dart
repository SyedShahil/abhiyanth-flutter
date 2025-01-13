import 'package:flutter/material.dart';


class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
        child: const Text(
          "Profile Page",
          style: TextStyle(color: Colors.white, fontFamily: "Audiowide"),
        ),
      ),
    );
  }
}