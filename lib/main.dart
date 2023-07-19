import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
          primarySwatch: Colors.green,
          colorScheme: ColorScheme.dark(),
          shadowColor: Color.fromARGB(255, 180, 224, 184)),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

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

  var number = TextEditingController();
  var repetitions = TextEditingController();
  int i = 0;
  bool firstTimeflag = true;
  bool endClick = false;

  Future call() async {
    print("++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++");
    int repet = int.parse(repetitions.text);
    print("........................ the repetions = " + repet.toString());

    for (i = repet + 1; i > 0; i--) {
      // while (i <= repet) {
      // int number = 01224318946;
      // if (firstTimeflag == true) {

      print("print value = " + number.toString());
      // if (endClick == true) firstTimeflag = false;
      await FlutterPhoneDirectCaller.callNumber(number.text.toString());
      print("before the wait function");
      await Future.delayed(Duration(seconds: 10)); //70
      print("after the wait function-");
      print("++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++");
      // }
    }
  }

  @override
  Widget build(BuildContext context) {
    var texclr = Colors.green;
    var focsbordersClr =
        Color.fromARGB(255, 141, 20, 20); //Color.fromARGB(255, 48, 135, 241);
    var iconclr = Colors.green;
    final shape = StadiumBorder();

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 20,
        shadowColor: Color.fromARGB(255, 138, 249, 168),
        title: const Text(
          "wake up him",
          style: TextStyle(
            color: Colors.black,
            fontSize: 27,
            fontFamily: 'RockSalt',
            // fontWeight: FontWeight.bold,
          ),
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(0),
            gradient: LinearGradient(colors: [
              Color.fromARGB(255, 5, 56, 7),
              Color.fromARGB(255, 17, 138, 79),
              Color.fromARGB(255, 5, 53, 7),
              // Color.fromARGB(255, 2, 0, 0),
              // Colors.red,
            ], begin: Alignment.topLeft, end: Alignment.bottomRight),
          ),
        ),
      ),
      body: Container(
        // decoration: BoxDecoration(
        //   gradient: LinearGradient(
        //     begin: Alignment.bottomLeft,
        //     end: Alignment.topRight,
        //     colors: [
        //       Color.fromARGB(255, 170, 247, 173),
        //       Color.fromARGB(255, 247, 186, 182),
        //     ],
        //   ),
        // ),
        alignment: Alignment.bottomCenter,
        height: double.infinity,
        // color: Colors.greenAccent[100],
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Container(
                margin: const EdgeInsets.all(10),
                child: TextField(
                  textAlign: TextAlign.center,
                  // autocorrect: true,
                  decoration: InputDecoration(
                    // alignLabelWithHint: true,
                    border: OutlineInputBorder(
                      borderSide: BorderSide(width: 2),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(40),
                        bottomLeft: Radius.circular(40),
                        bottomRight: Radius.circular(20),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 2, color: focsbordersClr),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(40),
                        bottomLeft: Radius.circular(40),
                        bottomRight: Radius.circular(20),
                      ),
                    ),
                    labelText: " Number",
                    labelStyle: TextStyle(
                        color: texclr,
                        fontSize: 25,
                        fontFamily: 'BerkshireSwash'),
                    hintText: "write the number",
                    hintStyle: TextStyle(
                        color: Color.fromARGB(255, 141, 20, 20),
                        fontFamily: 'BerkshireSwash'),
                    icon: Icon(
                      Icons.add_call,
                      color: iconclr,
                    ),
                    helperText: "write the call number",
                    helperStyle: TextStyle(color: texclr, fontSize: 12),
                    // prefix: Text("+02  "),
                  ),
                  keyboardType: TextInputType.number,
                  keyboardAppearance: Brightness.dark,
                  controller: number,
                  //textAlign: TextAlign.center,
                ),
              ),
              Container(
                margin: const EdgeInsets.all(10),
                child: TextField(
                  textAlign: TextAlign.center,
                  // autocorrect: true,
                  decoration: InputDecoration(
                    // alignLabelWithHint: true,
                    border: OutlineInputBorder(
                      borderSide: BorderSide(width: 2),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(40),
                        bottomLeft: Radius.circular(40),
                        bottomRight: Radius.circular(20),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 2, color: focsbordersClr),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(40),
                        bottomLeft: Radius.circular(40),
                        bottomRight: Radius.circular(20),
                      ),
                    ),
                    labelText: " call repetitions",
                    labelStyle: TextStyle(
                        color: texclr,
                        fontSize: 25,
                        fontFamily: 'BerkshireSwash'),
                    hintText: "enter call reptitions",
                    hintStyle:
                        TextStyle(color: Color.fromARGB(255, 141, 20, 20)),
                    icon: Icon(
                      Icons.loop_sharp,
                      color: iconclr,
                    ),
                    helperText: "enter the number of call repetitions ",
                    helperStyle: TextStyle(color: texclr, fontSize: 12),
                    // prefix: Text("+02  "),
                  ),
                  keyboardType: TextInputType.number,
                  keyboardAppearance: Brightness.dark,
                  controller: repetitions,
                  //textAlign: TextAlign.center,
                ),
              ),
              // FloatingActionButton.extended(
              //   label: const Text("give up"),
              //   onPressed: () {},
              //   icon: const Icon(Icons.accessible_forward_outlined),
              //   foregroundColor: Colors.lightGreenAccent[600],
              //   backgroundColor: Colors.red[800],
              //   shape: const RoundedRectangleBorder(
              //     borderRadius: BorderRadius.only(
              //       bottomLeft: Radius.circular(25),
              //       topLeft: Radius.circular(55),
              //       topRight: Radius.circular(25),
              //       bottomRight: Radius.circular(55),
              //     ),
              //     side: BorderSide(color: Colors.teal, width: 2),
              //   ),
              //   splashColor: Colors.lightGreenAccent[400],
              // ),
              // FloatingActionButton.extended(
              //   label: Padding(
              //     padding: const EdgeInsets.all(10.0),
              //     child: const Text(
              //       "End",
              //       style: TextStyle(fontSize: 25),
              //     ),
              //   ),
              //   onPressed: () async {
              //     // i = int.parse(repetitions.text) + 100;

              //     // 27/7/2022
              //     // if (!firstTimeflag) firstTimeflag = true;
              //     // if (!endClick) endClick = true;

              //     // await Future.delayed(Duration(seconds: 11));
              //     // if (firstTimeflag) firstTimeflag = false;
              //     // if (endClick) endClick = false;

              //     // 27/7/2022
              //     i = 0;
              //   },
              //   icon: const Icon(Icons.exit_to_app_rounded),
              //   foregroundColor: Colors.lightGreenAccent[600],
              //   backgroundColor: Colors.red[800],
              //   shape: const RoundedRectangleBorder(
              //     borderRadius: BorderRadius.only(
              //       bottomLeft: Radius.circular(25),
              //       topLeft: Radius.circular(55),
              //       topRight: Radius.circular(25),
              //       bottomRight: Radius.circular(55),
              //     ),
              //     side: BorderSide(
              //         color: Color.fromARGB(255, 141, 20, 20), width: 2),
              //   ),
              //   splashColor: Color.fromARGB(255, 141, 20, 20),
              //   elevation: 20,
              // ),
              const SizedBox(
                height: 250,
              ),

              Container(
                // height: double.infinity,
                // width: double.infinity,
                margin: EdgeInsets.only(
                  left: 10,
                  right: 10,
                  bottom: 10,
                  top: 10,
                ), //only(right: 10, left: 10, top: 350, bottom: 10),
                child: Table(
                  children: [
                    TableRow(
                      children: [
                        callbutton(),
                        endbutton(),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),

              Container(
                margin:
                    EdgeInsets.only(top: 0, left: 30, right: 10, bottom: 15),
                alignment: Alignment.centerRight,
                child: Text(
                  "made by gerges salah",
                  style: TextStyle(
                    fontFamily: 'Parisienne',
                    fontSize: 18,
                    color: Colors.green[200],
                    fontWeight: FontWeight.bold,
                    shadows: [
                      Shadow(
                        blurRadius: 40.0,
                        color: Color.fromARGB(255, 247, 106, 106),
                        offset: Offset(5.0, 5.0),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),

      // floatingActionButton: FloatingActionButton(
      //   onPressed: call,
      //   tooltip: 'call the number with repetitions times which you determined!',
      //   child: const Icon(Icons.phone),
      //   // icon: const Icon(Icons.accessible_forward_outlined),
      //   foregroundColor: Color.fromARGB(255, 141, 20, 20),
      //   backgroundColor: Colors.greenAccent[400],
      //   shape: const RoundedRectangleBorder(
      //     borderRadius: BorderRadius.only(
      //       bottomLeft: Radius.circular(255),
      //       topLeft: Radius.circular(255),
      //       topRight: Radius.circular(255),
      //       bottomRight: Radius.circular(255),
      //     ),
      //     side: BorderSide(color: Color.fromARGB(255, 141, 20, 20), width: 1),
      //   ),
      //   splashColor: Colors.white,
      //   hoverColor: Color.fromARGB(255, 141, 20, 20),
      //   elevation: 10,
      // ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  Widget callbutton() {
    // final iti = title;
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: 250,
        child: FloatingActionButton.extended(
          heroTag: "call",
          label: const Text(
            "call",
            style: TextStyle(
              fontSize: 20,
              fontFamily: 'Pacifico',
              // fontWeight: FontWeight.bold,
            ),
          ),
          onPressed: () {
            call();
          },
          icon: const Icon(Icons.phone),
          elevation: 7,
          foregroundColor: Colors.lightGreenAccent[600],
          backgroundColor: Color.fromARGB(255, 32, 88, 35),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(25),
              topLeft: Radius.circular(55),
              topRight: Radius.circular(25),
              bottomRight: Radius.circular(55),
            ),
            side: BorderSide(color: Colors.green, width: 0),
          ),
          splashColor: Colors.lightGreenAccent.withOpacity(1),
          hoverColor: Colors.greenAccent,
          highlightElevation: 20,
          // disabledElevation: 0,
        ),
      ),
    );
  }

  Widget endbutton() {
    // final iti = title;
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: 250,
        child: FloatingActionButton.extended(
          heroTag: "End",
          elevation: 7,
          label: const Text(
            "End",
            style: TextStyle(
                color: Colors.black, fontSize: 20, fontFamily: 'Pacifico'),
          ), //exit(0);
          onPressed: () {
            i = 0;
          },
          icon: const Icon(Icons.exit_to_app, color: Colors.black),
          foregroundColor: Colors.white,
          backgroundColor: Color.fromARGB(255, 114, 16, 16),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(25),
              topLeft: Radius.circular(55),
              topRight: Radius.circular(25),
              bottomRight: Radius.circular(55),
            ),
            side: BorderSide(color: Colors.red, width: 0),
          ),
          splashColor: Color.fromARGB(255, 255, 17, 0),
        ),
      ),
    );
  }
}
