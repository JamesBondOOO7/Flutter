import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.indigo[300],
        body: SafeArea(
          child: Column(
            children: [
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('images/manan007.jpg'),
                backgroundColor: Colors.black,
              ),
              Text(
                'Manan Arora',
                style: TextStyle(
                    fontFamily: 'Pacifico',
                    fontSize: 40.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.5),
              ),
              Text(
                'MACHINE LEARNING ENGINEER',
                style: TextStyle(
                    fontFamily: 'SourceSansPro',
                    fontSize: 20.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.5),
              ),
              Container(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                padding: EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.phone,
                      color: Colors.indigo[400],
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      '+91 874 582 5754',
                      style: TextStyle(
                        color: Colors.indigo[700],
                        fontSize: 20.0,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                padding: EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.email,
                      color: Colors.indigo[400],
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      'mananaroramail@gmail.com',
                      style: TextStyle(
                        color: Colors.indigo[700],
                        fontSize: 20.0,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
