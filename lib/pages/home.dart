import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  Map data = {};
  @override
  void initState() {
    super.initState();
  }


  @override
  Widget build(BuildContext context) {

    data = ModalRoute.of(context)!.settings.arguments as Map;
    print(data);

    String bgImage = data['isDaytime'] ? 'day.png' : 'night.png';
    Color? bgColor = data['isDaytime'] ? Colors.blue : Colors.indigo[700];


    return Scaffold(
        backgroundColor: bgColor,
        body: SafeArea(
          child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/$bgImage'),
                  fit: BoxFit.cover,
                )
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(5, 80.0, 5, 0),
              child: Column(
                children: <Widget>[
                  SizedBox(
                      height: 50,
                      child: Text(
                        'World Time App',
                        style: TextStyle(
                            color: Colors.yellowAccent,
                            fontSize: 30.0,
                            letterSpacing: 1.5),
                        textAlign: TextAlign.center,
                      )),
                  ElevatedButton.icon(
                      onPressed: () {
                        Navigator.pushNamed(context, '/location');
                      },
                      icon: Icon(Icons.location_searching),
                      label: Text('Choose location')),
                  SizedBox(height: 20.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        data['location'],
                        style: TextStyle(
                          fontSize: 28.0,
                          letterSpacing: 2.0,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20.0),
                  Text(
                      data['time'],
                      style: TextStyle(
                        fontSize: 50.0,
                      )
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
