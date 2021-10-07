import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({Key? key}) : super(key: key);

  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  int counter =0;

  void getData() async {
    String name = await Future.delayed(Duration(seconds: 3), () {
      return 'Hello';
    });

    String place = await Future.delayed(Duration(seconds: 3), () {
      return 'India';
    });
    print('$name $place');
  }

  @override
  void initState() {
    super.initState();
    getData();
    print('Hi');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Choose Location"),
        centerTitle: true,
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: ElevatedButton(
        onPressed: () {
          setState(() {
            counter+=1;
          });
        },
        child: Text('${counter}'),
      ),
    );
  }
}
