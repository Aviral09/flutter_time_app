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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            color: Colors.amber,
            child: TextButton(onPressed: (){} ,child: Text("Oh La La")),
          ),
          Text("Hello from column"),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text("Hello, Aviral!"),
              ElevatedButton(onPressed: (){}, child: Text("Hello")),
              Container(
                  color: Colors.amber,
                  child: Text("Hello"),
                  padding: EdgeInsets.all(20)
              )
            ],
          ),
        ],
      ),


      floatingActionButton: FloatingActionButton(
        child: Text("Click"),
        onPressed: () {},
        backgroundColor: Colors.pinkAccent[400],
      ),
    );
  }
}

