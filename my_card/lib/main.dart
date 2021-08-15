import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red[400],
        body: SafeArea(
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: <Color>[Color(0xffef5350), Color(0xff01579b)],
                  // colors: [Colors.red[300], Colors.blue[900]],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 60.0,
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
                SizedBox(
                  height: 20.0,
                  width: 150.0,
                  child: Divider(
                    color: Colors.white,
                  ),
                ),
                Card(
                  margin:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                  // CARD doesn't accept padding
                  child: ListTile(
                    leading: Icon(
                      Icons.phone,
                      color: Colors.indigo[400],
                    ),
                    title: Text(
                      '+91 874 582 5754',
                      style: TextStyle(
                        color: Colors.indigo[700],
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ),
                Card(
                    margin:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                    child: ListTile(
                      leading: Icon(
                        Icons.email,
                        color: Colors.indigo[400],
                      ),
                      title: Text(
                        'mananaroramail@gmail.com',
                        style: TextStyle(
                          color: Colors.indigo[700],
                          fontSize: 20.0,
                        ),
                      ),
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
