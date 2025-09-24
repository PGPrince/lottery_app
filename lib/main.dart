import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Random random = Random();
  int x = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Center(
            child: Text(
              'Lottery App',
              style: TextStyle(fontSize: 40, color: Colors.white),
            ),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Text(
                'Lottery wining number is $x',
                style: TextStyle(fontSize: 30, color: Colors.deepOrange),
              ),
            ),
            SizedBox(height: 30),
            x == 8
                ? Container(
                    height: 300,
                    width: 300,
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          ' $x',
                          style: TextStyle(
                            fontSize: 100,
                            color: Colors.blueAccent,
                          ),
                        ),
                        SizedBox(height: 20),
                        Text(
                          'Congratulations!\n You won. ',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 30, color: Colors.pink),
                        ),
                      ],
                    ),
                  )
                : Center(
                    child: Container(
                      height: 300,
                      width: 300,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(Icons.error, size: 100, color: Colors.red),
                          SizedBox(height: 20),
                          Text('Try Again', style: TextStyle(fontSize: 50)),
                        ],
                      ),
                    ),
                  ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              x = random.nextInt(10);
            });
          },
          child: Icon(Icons.refresh, size: 30),
        ),
      ),
    );
  }
}
