import 'package:flutter/material.dart';
class AccountDummyScreen extends StatelessWidget {
  final int index;
  const AccountDummyScreen({Key? key, required this.index}) : super(key: key);
  static final List x = [
    const Text("User name"),
    const Text("Enter Age"),
    const Text("Male/Female/Others"),
    const Text("Enter Height_____(in cm)"),
    const Text("Enter weight_____(in kgs)"),
    const Text("Enter DOB \nDD-MM-YYYY"),
    const Text("Enter PhoneNo: \n+91__________ ."),
    const Text("Who is using this app \nDoctor>>\n Patient>>"),
    // const Text("page9"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text("Back"),
      ),
      body: Center(
        child: x[index],
      ),
    );
  }
}
