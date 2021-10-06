import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home()
  ));
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Weather App"),
        centerTitle: true,
        backgroundColor: Colors.pinkAccent[400],
      ),
      body: Center(
          // child: Text(
          //     "Hello!",
          //     style: TextStyle(
          //       fontSize: 60,
          //       fontWeight: FontWeight.bold,
          //       letterSpacing: 4,
          //       color: Colors.grey[600],
          //       fontFamily: "LoversQuarrel",
          //     )
          // )
        child: Icon(
          Icons.camera_enhance_outlined,
          color: Colors.lightBlueAccent,
          size: 50,
          ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Text("Click"),
        onPressed: () {},
        backgroundColor: Colors.pinkAccent[400],
      ),
    );
  }
}

