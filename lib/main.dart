import 'package:flutter/material.dart';
void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Flutter App',
      home: Home(),
      theme: ThemeData(
        primaryColor: Color.fromRGBO(30, 43, 56, 1.0),
        accentColor: Color.fromRGBO(238, 240, 241, 1.0),
        disabledColor: Color.fromRGBO(0, 149, 156, 1.0),
      ),
    );
  }
}

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

void test() {

}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(238, 240, 241, 1.0),
      appBar: AppBar(
        centerTitle: true,
        title: Text('SimpleMarket'),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.settings,
            ),
            color: Colors.grey[300],
            onPressed: test,
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1, // this will be set when a new tab is tapped
        fixedColor: Color.fromRGBO(0, 96, 217, 1.0),
        items: [
          BottomNavigationBarItem(
              icon: new Icon(Icons.book),
              title: new Text('Lessons'),

          ),
          BottomNavigationBarItem(
              icon: new Icon(Icons.trending_up),
              title: new Text('Market'),
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.whatshot),
              title: Text('Market News')
          )
        ],
      ),
    );
  }
}