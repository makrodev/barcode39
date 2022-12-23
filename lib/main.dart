import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Талоны отдела цифровых решений'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              Container(
                height: 50,
              ),

              Container(
                child: Text(
                    style: TextStyle(
                      fontSize: 22
                    ), "Кидиралиев Алибек Абаевич"),
              ),
              Container(
                padding: EdgeInsets.all(5),
                color: Colors.white,
                width: MediaQuery.of(context).size.width / 2 + 100,
                child: Center(
                  child: BarcodeWidget(
                    width: 400,
                    height: 100,
                    data: '00DS-07729',
                    barcode: Barcode.code39(),
                  ),
                ),
              ),

              Container(
                child: Text(
                    style: TextStyle(
                        fontSize: 22
                    ), "Дворянчикова Эвелина Олеговна"),
              ),
              Container(
                padding: EdgeInsets.all(5),
                color: Colors.white,
                width: MediaQuery.of(context).size.width / 2 + 100,
                child: Center(
                  child: BarcodeWidget(
                    width: 400,
                    height: 100,
                    data: '00DS-04040',
                    barcode: Barcode.code39(),
                  ),
                ),
              ),

              Container(
                height: 50,
              ),

              Container(
                child: Text(
                    style: TextStyle(
                        fontSize: 22
                    ), "Луценко Николай Станиславович"),
              ),
              Container(
                padding: EdgeInsets.all(5),
                color: Colors.white,
                width: MediaQuery.of(context).size.width / 2 + 100,
                child: Center(
                  child: BarcodeWidget(
                    width: 400,
                    height: 100,
                    data: '00DS-02994',
                    barcode: Barcode.code39(),
                  ),
                ),
              ),

              Container(
                child: Text(
                    style: TextStyle(
                        fontSize: 22
                    ), "Ким Евгений Юрьевич"),
              ),
              Container(
                padding: EdgeInsets.all(5),
                color: Colors.white,
                width: MediaQuery.of(context).size.width / 2 + 100,
                child: Center(
                  child: BarcodeWidget(
                    width: 400,
                    height: 100,
                    data: '00DS-07276',
                    barcode: Barcode.code39(),
                  ),
                ),
              ),
            ],
          )
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
