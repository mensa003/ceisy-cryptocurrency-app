import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';

void main() => runApp(
      DevicePreview(
        enabled: !kReleaseMode,
        builder: (context) => MyApp(), // Wrap your app
      ),
    );

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(left: 150.0),
          child: Text(
            "ceisy",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ),
        elevation: 0,
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 90.0),
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                    "data:image/jpeg;base64,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"),
                radius: 50,
              ),
            ),
            SizedBox(
              height: 70,
            ),
            Text("cryptocurrency \n   made easy",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            SizedBox(
              height: 40,
            ),
            Text(
              "start exploring the crypto world now \n   with our app it's easy and secure",
              style: TextStyle(
                fontSize: 15,
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              "_ _  _ _",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.green),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 60,
              width: 200,
              //color: Colors.lightBlue,
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(20)),
              child: Padding(
                padding: const EdgeInsets.all(19.0),
                child: Text(
                  "create a profile",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 14, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
