import 'package:flutter/material.dart';

class fourthscreen extends StatelessWidget {
  const fourthscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("layar keempat"),
        backgroundColor: Colors.yellow,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text("kembali"))
          ],
        ),
      ),
    );
  }
}
