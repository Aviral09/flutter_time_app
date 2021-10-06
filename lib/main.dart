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
      body: Container(
          child: ElevatedButton.icon(
            onPressed: () {},
            icon: Icon(
                Icons.camera_enhance
            ),
            label: Text("Hello"),
          ),
        margin: EdgeInsets.all(50),
        padding: EdgeInsets.all(50),
      ),
      floatingActionButton: FloatingActionButton(
        child: Text("Click"),
        onPressed: () {},
        backgroundColor: Colors.pinkAccent[400],
      ),
    );
  }
}

