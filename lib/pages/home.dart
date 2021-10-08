import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  Map data= {};

  @override
  Widget build(BuildContext context) {

    data = data.isNotEmpty ? data : ModalRoute.of(context)!.settings.arguments as Map;
    String daytime = data['isDayTime'] ? 'daytime.jpg' : 'nightttime.jpg';
    Color? bgColor = data['isDayTime'] ? Colors.blue[500] : Colors.indigo[900];

    return Scaffold(
      backgroundColor: bgColor,
        body: SafeArea(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/$daytime'),
                  fit: BoxFit.cover
                )
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0,120,0,0),
                child: Column(
                  children: <Widget>[
                    TextButton.icon(
                        onPressed: () async {
                          dynamic result = await Navigator.pushNamed(context, '/location');
                          setState(() {
                            data = {
                            'location': result['location'],
                            'flag': result['flag'],
                            'time': result['time'],
                            'isDayTime': result['isDayTime'],
                            };
                          });
                        },
                        icon: Icon(
                          Icons.edit_location,
                          color: Colors.grey[300],
                        ),
                        label: Text(
                          "Edit Location",
                        style: TextStyle(
                          color: Colors.grey[300],
                          fontSize: 20,
                        ),),
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(data['location'],
                        style: const TextStyle(
                          fontSize: 30,
                          letterSpacing: 2,
                          color: Colors.deepPurple
                        )
                        )
                      ],
                    ),
                    SizedBox(height: 10),
                    Text(data['time'],
                    style: TextStyle(
                      fontSize: 66,
                      letterSpacing: 2,
                      color: Colors.deepPurpleAccent
                    ),)
                  ],
                ),
              ),
            )
        ),
    );
  }
}
