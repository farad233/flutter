import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dymov first app',
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Dymov first app'),
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
  int _counter = 0;
  var exellent = 5;
  var good = 4;
  var bad = 2;
  void _reset() {
    setState(() {
      _counter = 0;
    });
  }

  void _bad() {
    setState(() {
      _counter = bad;
    });
  }

  void _good() {
    setState(() {
      _counter = good;
    });
  }

  void _exellent() {
    setState(() {
      _counter = exellent;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'what assessment you will give me:',
                style: Theme.of(context).textTheme.headline5,
              ),
              Text(
                '$_counter',
                style: Theme.of(context).textTheme.headline2,
              ),
              const SizedBox(height: 60),
              RaisedButton(
                color: Colors.red[300],
                onPressed: _bad,
                child: const Text(
                  'bad',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              RaisedButton(
                color: Colors.blue[300],
                onPressed: _good,
                child: const Text(
                  'good',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              RaisedButton(
                color: Colors.green[300],
                onPressed: _exellent,
                child: const Text(
                  'excellent',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _reset,
        tooltip: '',
        child: Text('reset'),
      ),
    );
  }
}
