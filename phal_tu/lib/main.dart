// ignore_for_file: prefer_const_constructors, duplicate_ignore, prefer_const_literals_to_create_immutables, import_of_legacy_library_into_null_safe, avoid_print

import 'package:flutter/material.dart';
import 'package:phal_tu/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  // ignore: dead_code
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
        theme: ThemeData(primarySwatch: Colors.green),
        home: Scaffold(
          backgroundColor: Color.fromRGBO(8, 174, 234, 10),
          appBar: AppBar(
            // ignore: prefer_const_constructors
            backgroundColor: Colors.transparent,

            // ignore: prefer_const_constructors
            title: Text(
              'Welcome to phalTU',
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          body: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
              Color.fromRGBO(255, 251, 125, 10),
              Color.fromRGBO(133, 255, 189, 10),
            ])),
            child: const MyStatefulWidget(),
          ),
        ));
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController roomnoController = TextEditingController();
  TextEditingController phnoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Fruits and freelancing!',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 30,
                      fontFamily: 'KGhappy'),
                )),
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Register As A User',
                  style: TextStyle(fontSize: 20, fontFamily: 'KGhappy'),
                )),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: nameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'User Name',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(
                controller: passwordController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Roll No.',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(
                controller: roomnoController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Room No.',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(
                controller: phnoController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Phone No.',
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                //forgot password screen
              },
              child: const Text(
                'Forgot Password',
                style: TextStyle(color: Colors.black),
              ),
            ),
            Container(
                height: 50,
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: ElevatedButton(
                  child: const Text('Login'),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => homePage()));

                    print(nameController.text);
                    print(passwordController.text);
                  },
                )),
          ],
        ));
  }
}

// save() async {
//   await MyApp.init();
//   localStorage.setString('name', nameController.text.toString());
//   localStorage.setString('password'passwordController.text.toString()));
//   localStorage.setString('password'passwordController.text.toString()));
//   localStorage.setString('password'passwordController.text.toString()));
// }
