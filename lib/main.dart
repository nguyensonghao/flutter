import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);  
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {  
  @override
  Widget build(BuildContext context) {    
    List<int> listWidget = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
    return Scaffold(
      appBar: AppBar(        
        title: Text(widget.title),
      ),
      body: Container(
        // decoration: BoxDecoration(
        //   image: DecorationImage(
        //     image: AssetImage("assets/images/logo.png"),
        //     fit: BoxFit.cover,
        //   ),
        // ),        
        child: SingleChildScrollView(
          child: Column(children: [            
            for (var i in listWidget) Row(
              children: [
                Expanded(
                  child: MenuItem(title: 'Truyện trinh thám')
                ),
                Expanded(
                  child: MenuItem(title: 'Truyện trinh thám')
                ),
                Expanded(
                  child: MenuItem(title: 'Truyện trinh thám')
                )
              ],
            )
          ])
        )
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(children: [
          Expanded(
            child: SizedBox(
              height: 50,
              child: GestureDetector(
                child: Column(children: [
                  Text(
                    'Test'
                  )
                ],)
              )
            )
          ),
          Expanded(
            child: SizedBox(
              height: 50,
              child: GestureDetector(
                child: Column(children: [
                  Text(
                    'Test'
                  )
                ]
              )
              )
            )
          ),
          Expanded(
            child: SizedBox(
              height: 50,
              child: GestureDetector(
                child: Column(children: [
                  Text(
                    'Test'
                  )
                ],)
              )
            )
          )
        ])        
      )
    );
  }
}

class MenuItem extends StatelessWidget {
  MenuItem({Key key, this.title, this.icon}) : super(key: key);  
  final String title;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('test');        
      },
      child: Container(
        margin: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(6),
            topRight: Radius.circular(6),
            bottomLeft: Radius.circular(6),
            bottomRight: Radius.circular(6)
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Column(
          children: <Widget>[        
            Image.asset(
              'assets/images/logo.png'
            ),
            Text(
              title,
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.center
            )
          ],
        )
      )
    );
  }
}