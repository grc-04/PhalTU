// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_new, override_on_non_overriding_member, unnecessary_this, avoid_print

import 'package:flutter/material.dart';
import 'package:phal_tu/cart.dart';

class homePage extends StatefulWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  _homePageState createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Myhomepage());
  }
}

class Myhomepage extends StatefulWidget {
  const Myhomepage({Key? key}) : super(key: key);

  @override
  _MyhomepageState createState() => _MyhomepageState();
}

class _MyhomepageState extends State<Myhomepage> {
  final _pagesData = [CartPage()];
  int _selectedItem = 0;
  @override
  Icon cusIcon = Icon(Icons.search);
  Widget cusSearchBar = Text("Hi, Vivaan");
  @override
  Widget build(BuildContext context) {
    var icon;
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedItem,
          onTap: (value) {
            setState(() {
              _selectedItem = value;
            });
          },
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "Home",
                backgroundColor: Colors.green),
            BottomNavigationBarItem(
                icon: Icon(Icons.attach_money),
                label: "Points",
                backgroundColor: Colors.green),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag),
              label: " Fruit Cart",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle),
              label: " Fruit Cart",
            )
          ],
        ),
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {},
          ),
          title: cusSearchBar,
          backgroundColor: Colors.green,
          elevation: 0,
          actions: <Widget>[
            new IconButton(
              onPressed: () {
                setState(() {
                  if (this.cusIcon.icon == Icons.search) {
                    this.cusIcon = Icon(Icons.cancel);
                    this.cusSearchBar = TextField();
                  }
                });
              },
              icon: cusIcon,
            ),
            new IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => CartPage()));
                },
                icon: Icon(Icons.shopping_basket))
          ],
        ),
        // ignore: avoid_unnecessary_containers
        body: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
              Color.fromRGBO(255, 251, 125, 10),
              Color.fromRGBO(133, 255, 189, 10),
            ])),
            child: new SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                        Color.fromRGBO(255, 251, 125, 10),
                        Color.fromRGBO(133, 255, 189, 10),
                      ]),
                    ),
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        MaterialButton(
                          padding: EdgeInsets.all(50),
                          textColor: Colors.white,
                          splashColor: Colors.greenAccent,
                          elevation: 8.0,
                          child: Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image:
                                      AssetImage('assets/images/apple_pic.jpg'),
                                  fit: BoxFit.fitHeight),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(50),
                            ),
                          ),
                          // ),
                          onPressed: () {
                            print('Tapped');
                          },
                        ),
                        MaterialButton(
                          padding: EdgeInsets.all(50),
                          textColor: Colors.white,
                          splashColor: Colors.greenAccent,
                          elevation: 8.0,
                          child: Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/banana_pic.jpg'),
                                  fit: BoxFit.cover),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(50),
                            ),
                          ),
                          // ),
                          onPressed: () {
                            print('Tapped');
                          },
                        ),
                      ]),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        MaterialButton(
                          padding: EdgeInsets.all(50),
                          textColor: Colors.white,
                          splashColor: Colors.greenAccent,
                          elevation: 8.0,
                          child: Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image:
                                      AssetImage('assets/images/pear_pic.jpg'),
                                  fit: BoxFit.cover),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(50),
                            ),
                          ),
                          // ),
                          onPressed: () {},
                        ),
                        MaterialButton(
                          padding: EdgeInsets.all(50),
                          textColor: Colors.white,
                          splashColor: Colors.greenAccent,
                          elevation: 8.0,
                          child: Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image:
                                      AssetImage('assets/images/grape_pic.jpg'),
                                  fit: BoxFit.cover),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(50),
                            ),
                          ),
                          // ),
                          onPressed: () {
                            print('Tapped');
                          },
                        ),
                      ]),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        MaterialButton(
                          padding: EdgeInsets.all(50),
                          textColor: Colors.white,
                          splashColor: Colors.greenAccent,
                          elevation: 8.0,
                          child: Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/orange_pic.jpg'),
                                  fit: BoxFit.cover),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(50),
                            ),
                          ),
                          // ),
                          onPressed: () {
                            print('Tapped');
                          },
                        ),
                        MaterialButton(
                          padding: EdgeInsets.all(50),
                          textColor: Colors.white,
                          splashColor: Colors.greenAccent,
                          elevation: 8.0,
                          child: Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/pomegranate_pic.jpg'),
                                  fit: BoxFit.cover),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(50),
                            ),
                          ),
                          // ),
                          onPressed: () {
                            print('Tapped');
                          },
                        ),
                      ]),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        MaterialButton(
                          padding: EdgeInsets.all(50),
                          textColor: Colors.white,
                          splashColor: Colors.greenAccent,
                          elevation: 8.0,
                          child: Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image:
                                      AssetImage('assets/images/kiwi_pic.jpg'),
                                  fit: BoxFit.cover),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(50),
                            ),
                          ),
                          // ),
                          onPressed: () {
                            print('Tapped');
                          },
                        ),
                        MaterialButton(
                          padding: EdgeInsets.all(50),
                          textColor: Colors.white,
                          splashColor: Colors.greenAccent,
                          elevation: 8.0,
                          child: Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image:
                                      AssetImage('assets/images/mango_pic.jpg'),
                                  fit: BoxFit.cover),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(50),
                            ),
                          ),
                          // ),
                          onPressed: () {
                            print('Tapped');
                          },
                        ),
                      ]),
                ],
              ),
            )));
  }
}
