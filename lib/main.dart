import 'package:flutter/material.dart';
import 'package:midterm_620710484/temp.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Midterm Exam',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);



  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

        var process = temp();

        final input = TextEditingController();



  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: Container(
        padding: const EdgeInsets.all(20.0),
        margin: const EdgeInsets.all(200.0),
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(width: 5.0, color: Colors.deepPurple.shade200),
            borderRadius: BorderRadius.circular(8.0),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: const Offset(0,3),
                  )
            ]),
    child: Padding(
    padding: const EdgeInsets.all(12.0),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
            padding:EdgeInsets.all(8.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,

              children: const [
                Text(
                       'Temperature Converter',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30.0,
                  ),
                ),
              ],
            )
            ),


            Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
                        color: Colors.white,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: TextField(
                                  controller: input,
                                  textAlign: TextAlign.center,
                                  decoration: InputDecoration(
                                    hintText:
                                    'Enter a termperature value to convert',
                                  ),
                                ),
                              )
                            ],
                          ),
                        )),
                  ),
                  Expanded(
                    //ปุ่ม
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Celsius to Fahrenheit',
                              style: TextStyle(
                                  fontSize: 15.0, color: Colors.black),
                            ),
                          ),
                          onPressed: () {
                            var data1 = double.tryParse(input.text);
                            if (data1 == null) {
                              showDialog(
                                context: context,
                                barrierDismissible: false,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    title: Text('ERROR'),
                                    content: Text(
                                        "Please enter a value to convert"),
                                    actions: [
                                      TextButton(
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                        child: Text('OK'),
                                      ),
                                    ],
                                  );
                                },
                              );
                            } else {
                              var ctof = process
                                  .celtofah(data1);

                              showDialog(
                                context: context,
                                barrierDismissible: false,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    title: Text('Celsius to Farenheit'),
                                    content: Text(
                                        "$data1 Celsius = $ctof Farenheit"),
                                    actions: [
                                      TextButton(
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                        child: Text('OK'),
                                      ),
                                    ],
                                  );
                                },
                              );
                            }
                          },
                        ),
                      ],
                    ),
                  ),


                  Expanded(
                    //ปุ่ม
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Celsius to Kelvin',
                              style: TextStyle(
                                  fontSize: 15.0, color: Colors.black),
                            ),
                          ),
                          onPressed: () {
                            var data2 = double.tryParse(input.text);
                            if (data2 == null) {
                              showDialog(
                                context: context,
                                barrierDismissible: false,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    title: Text('ERROR'),
                                    content: Text(
                                        "Please enter a value to convert"),
                                    actions: [
                                      TextButton(
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                        child: Text('OK'),
                                      ),
                                    ],
                                  );
                                },
                              );
                            } else {
                              var ctok = process.celtokel(
                                  data2);

                              showDialog(
                                context: context,
                                barrierDismissible: false,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    title: Text('Celsius to Kelvin'),
                                    content: Text("$data2 Celsius = $ctok Kelvin"),
                                    actions: [
                                      TextButton(
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                        child: Text('OK'),
                                      ),
                                    ],
                                  );
                                },
                              );
                            }
                          },
                        ),
                      ],
                    ),
                  ),

                  Expanded(
                    //ปุ่ม
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Fahrenheit to Celsius',
                              style: TextStyle(
                                  fontSize: 15.0, color: Colors.black),
                            ),
                          ),
                          onPressed: () {
                            var data3 = double.tryParse(input.text);
                            if (data3 == null) {
                              showDialog(
                                context: context,
                                barrierDismissible: false,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    title: Text('ERROR'),
                                    content: Text(
                                        "Please enter a value to convert"),
                                    actions: [
                                      TextButton(
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                        child: Text('OK'),
                                      ),
                                    ],
                                  );
                                },
                              );
                            } else {
                              var ftoc = process.fahtocel(
                                  data3);

                              showDialog(
                                context: context,
                                barrierDismissible: false,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    title: Text(
                                        'Fahrenheit to Celsius'),
                                    content: Text("$data3 Fahrenheit =  $ftoc Celsius"),
                                    actions: [
                                      TextButton(
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                        child: Text('OK'),
                                      ),
                                    ],
                                  );
                                },
                              );
                            }
                          },
                        ),
                      ],
                    ),
                  ),


                  Expanded(
                    //ปุ่ม
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Fahrenheit to Kelvin',
                              style: TextStyle(
                                  fontSize: 15.0, color: Colors.black),
                            ),
                          ),
                          onPressed: () {
                            var data4 = double.tryParse(input.text);
                            if (data4 == null) {
                              showDialog(
                                context: context,
                                barrierDismissible: false,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    title: Text('ERROR'),
                                    content: Text(
                                        "Please enter a value to convert"),
                                    actions: [
                                      TextButton(
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                        child: Text('OK'),
                                      ),
                                    ],
                                  );
                                },
                              );
                            } else {
                              var ftok = process.fahtokel(
                                  data4);

                              showDialog(
                                context: context,
                                barrierDismissible: false,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    title: Text('Fahrenheit to Kelvin'),
                                    content: Text("$data4 Fahrenheit = $ftok Kelvin"),
                                    actions: [
                                      TextButton(
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                        child: Text('OK'),
                                      ),
                                    ],
                                  );
                                },
                              );
                            }
                          },
                        ),
                      ],
                    ),
                  ),


                  Expanded(
                    //ปุ่ม
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Kelvin to Celsius',
                              style: TextStyle(
                                  fontSize: 15.0, color: Colors.black),
                            ),
                          ),
                          onPressed: () {
                            var data5 = double.tryParse(input.text);
                            if (data5 == null) {
                              showDialog(
                                context: context,
                                barrierDismissible: false,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    title: Text('ERROR'),
                                    content: Text(
                                        "Please enter a value to convert"),
                                    actions: [
                                      TextButton(
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                        child: Text('OK'),
                                      ),
                                    ],
                                  );
                                },
                              );
                            } else {
                              var ktoc = process.keltocel(
                                  data5);

                              showDialog(
                                context: context,
                                barrierDismissible: false,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    title: Text('Kelvin to Celsius'),
                                    content: Text("$data5 Kelvin = $ktoc Celsius "),
                                    actions: [
                                      TextButton(
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                        child: Text('OK'),
                                      ),
                                    ],
                                  );
                                },
                              );
                            }
                          },
                        ),
                      ],
                    ),
                  ),


                  Expanded(

                    //ปุ่ม
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Kelvin to Fahrenheit',
                              style: TextStyle(
                                  fontSize: 15.0, color: Colors.black),
                            ),
                          ),
                          onPressed: () {
                            var data6 = double.tryParse(input.text);
                            if (data6 == null) {
                              showDialog(
                                context: context,
                                barrierDismissible: false,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    title: Text('ERROR'),
                                    content: Text(
                                        "Please enter a value to convert"),
                                    actions: [
                                      TextButton(
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                        child: Text('OK'),
                                      ),
                                    ],
                                  );
                                },
                              );
                            } else {
                              var ktof = process.keltofah(
                                  data6);

                              showDialog(
                                context: context,
                                barrierDismissible: false,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    title: Text('Kelvin to Fahrenheit'),
                                    content: Text("$data6 Kelvin = $ktof Fahrenheit "),
                                    actions: [
                                      TextButton(
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                        child: Text('OK'),
                                      ),
                                    ],
                                  );
                                },
                              );
                            }
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      )),
       // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
