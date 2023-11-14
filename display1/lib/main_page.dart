import 'package:display1/class.dart';
import 'package:display1/second_page.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  Siswa orangnya;
  MainPage({super.key, required this.orangnya});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(orangnya.getUsername.toString(),
            style: TextStyle(fontSize: 25)),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.person_2_rounded),
            iconSize: 35,
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const SecondPage();
                }));
              },
              child: const Text("Page 2"),
            ),
          ],
        ),
      ),
    );
  }
}
