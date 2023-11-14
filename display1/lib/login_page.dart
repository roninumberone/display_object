import 'package:display1/class.dart';
import 'package:display1/main_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final inputControllerUse = TextEditingController();
  final inputControllerPass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
              child: Container(
                height: 50,
                margin: const EdgeInsets.fromLTRB(50, 0, 50, 10),
                child: TextField(
                  style: TextStyle(
                      fontSize: 20, color: Color.fromARGB(255, 0, 0, 0)),
                  controller: inputControllerUse,
                  decoration: InputDecoration(
                      hintStyle: TextStyle(color: Colors.black12),
                      border: OutlineInputBorder(),
                      hintText: 'Masukan Username Anda',
                      labelText: 'Username',
                      prefixIcon: Icon(Icons.person_2_rounded),
                      suffixIcon: Icon(
                        Icons.clear_outlined,
                        color: Colors.blue,
                      )),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
              child: Container(
                height: 50,
                margin: const EdgeInsets.fromLTRB(50, 0, 50, 10),
                child: TextField(
                  style: TextStyle(
                      fontSize: 20, color: Color.fromARGB(255, 0, 0, 0)),
                  controller: inputControllerPass,
                  decoration: InputDecoration(
                    hintStyle: TextStyle(color: Colors.black12),
                    border: OutlineInputBorder(),
                    hintText: 'Masukan Password Anda',
                    labelText: 'Password',
                    prefixIcon: Icon(Icons.lock),
                    // suffixIcon: Icon(Icons.clear_outlined, color: Colors.blue,)
                  ),
                ),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) {
                    String namanya = inputControllerUse.text;
                    String passnya = inputControllerPass.text;
                    Siswa siswanya =
                        Siswa(password: passnya, username: namanya);
                    return MainPage(orangnya: siswanya);
                  }));
                },
                child: const Text("Login"))
          ],
        ),
      ),
    );
  }
}
