import 'package:navdanroute/thirdscreen.dart';
import 'package:navdanroute/secondscreen.dart';
import 'package:flutter/material.dart';

class firstscreen extends StatelessWidget {
  const firstscreen({super.key});

  Future<void> _navigateScreen(BuildContext context) async {
    final result = await Navigator.push(
        context, MaterialPageRoute(builder: (context) => thirdscreen()));

    ScaffoldMessenger.of(context)
      ..removeCurrentSnackBar()
      ..showSnackBar(SnackBar(content: Text('$result')));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("layar pertama"),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
                onPressed: (() {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              secondscreen(data: 'data dari first screen')));
                }),
                child: Text("lanjut part 2")),
            SizedBox(
              height: 15,
            ),
            ElevatedButton(
                onPressed: (() {
                  _navigateScreen(context);
                }),
                child: Text("lanjut part 3")),
            SizedBox(
              height: 15,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/fourth");
                },
                child: Text("lanjut part 4")),
          ],
        ),
      ),
    );
  }
}
