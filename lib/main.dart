// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
    const Home({Key? key}) : super(key: key);

    @override
    _HomeState createState() => _HomeState();
  }

class _HomeState extends State<Home>{
  int ninjaLevel = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        backgroundColor: Colors.grey[850],
        title: const Text(
          "Ninja ID Card",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            ninjaLevel+=1;
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.grey[850],
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 30),
            const Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/space.jpg'),
                radius: 30,
              ),
            ),
            const SizedBox(height: 20),
            Divider(height: 60,
            color: Colors.grey[850],
            ),
            Text(
              'NAME',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0
              )
            ),
            SizedBox(height: 10),
            Text(
                'Aviral',
                style: TextStyle(
                    color: Colors.amber[200],
                    letterSpacing: 2.0,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                )
            ),
            SizedBox(height: 30),
            Text(
                'CURRENT NINJA LEVEL',
                style: TextStyle(
                    color: Colors.grey,
                    letterSpacing: 2.0
                )
            ),
            SizedBox(height: 10),
            Text(
                '$ninjaLevel',
                style: TextStyle(
                  color: Colors.amber[200],
                  letterSpacing: 2.0,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                )
            ),
            SizedBox(height: 30),
            Row(
              children: const [
                Icon(Icons.mail,
                color: Colors.grey),
                SizedBox(width: 10),
                Text('aviralgoel2001@gmail.com',
                style: TextStyle(
                  color: Colors.grey
                )
                )
              ],
            )
          ],
        ),
      )
    );
  }
}