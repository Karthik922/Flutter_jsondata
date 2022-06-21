import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:http/http.dart';
// import 'package:intl/intl.dart';
// import 'package:jsondata/dashboard.dart';

void main() {
  runApp(new MaterialApp(
    home: new MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Json Data',
      theme: ThemeData(
        brightness: Brightness.dark,
        textTheme: TextTheme(
            bodyText1: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
            headline1:
                TextStyle(color: Colors.white, fontWeight: FontWeight.normal)),
      ),
      home: startScreen(),
    );
  }
}

class startScreen extends StatelessWidget {
  const startScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/img.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Expanded(
            child: Column(
              children: <Widget>[
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(children: [
                    TextSpan(
                      text: "Covid-19\n",
                      style: Theme.of(context).textTheme.headline5,
                    ),
                    TextSpan(
                      text: "STAY HOME BE SAFE",
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                  ]),
                )
              ],
            ),
          ),
          FittedBox(
            child: GestureDetector(
              onTap: () {
                print('hi');
                // Navigator.push(context, MaterialPageRoute(builder: (context) {
                //   return DashBoard();
                // }),
                // );
              },
              child: Container(
                margin: EdgeInsets.only(bottom: 20.0),
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25.0),
                    color: Colors.red),
                child: Row(
                  children: [
                    Text(
                      'View Details',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Icon(Icons.arrow_forward_ios),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
