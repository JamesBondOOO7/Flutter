import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// Instead of re-compiling the whole app again and again,
// We can just make changes in the Stateless Widget which we created
// Thus, it will only check this part of the code and make changes accordingly!
// ******** HOT RELOAD *********
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.yellow,
        body: SafeArea(
          // so that the container doesn't mixes up with bezels and camera notch
          child: Column(
            // Containers tend to take maximum space as possible
            // to limit the size
            // mainAxisSize: MainAxisSize.min,

            // Vertical Direction [ either top to bottom or bottom to top ]
            // verticalDirection: VerticalDirection.up,

            // Alignment
            mainAxisAlignment:
                MainAxisAlignment.spaceEvenly, // space the containers evenly
            // according to free space

            // Stretching the containers to whole width
            // 1. set width to double.infinity
            // 2. use column property :: crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                // CAN HAVE ONLY A SINGLE CHILD
                // SIZE of the container
                height: 100.0,
                width: 100.0,
                // Setting MARGINS/OFFSETS for the Container
                // margin: EdgeInsets.all(20.0), // same offset in every direction\

                margin: EdgeInsets.symmetric(
                    // specifying for both directions
                    vertical: 30.0,
                    horizontal: 20.0),

                padding: EdgeInsets.all(10.0), // for text inside container
                color: Colors.white,
                child: Text("Container 1"),
              ),
              Container(
                height: 100.0,
                width: 100.0,
                color: Colors.blue,
                margin: EdgeInsets.symmetric(
                    // specifying for both directions
                    vertical: 30.0,
                    horizontal: 20.0),

                padding: EdgeInsets.all(10.0), // for text inside container

                child: Text("Container 2"),
              ),
              Container(
                height: 100.0,
                width: 100.0,
                color: Colors.red,
                margin: EdgeInsets.symmetric(
                    // specifying for both directions
                    vertical: 30.0,
                    horizontal: 20.0),

                padding: EdgeInsets.all(10.0), // for text inside container
                child: Text("Container 3"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ************* FOR A SINGLE CHILD BASED WIDGETS ******************
//     child: Container(
//     // CAN HAVE ONLY A SINGLE CHILD
//     // SIZE of the container
//     height: 100.0,
//     width: 100.0,
//     // Setting MARGINS/OFFSETS for the Container
//     // margin: EdgeInsets.all(20.0), // same offset in every direction\
//
//     margin: EdgeInsets.symmetric(
//     // specifying for both directions
//     vertical: 30.0,
//     horizontal: 20.0),
//
//     padding: EdgeInsets.all(20.0), // for text inside container
//     color: Colors.white,
//     child: Text("Hello"),
//     ),
