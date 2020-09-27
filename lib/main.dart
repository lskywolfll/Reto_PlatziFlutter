import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:testing_now/components/Contact.dart';
import 'package:testing_now/components/header_appBar.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final urlImagePerson =
      "https://images.unsplash.com/photo-1600631965708-89abd5b68ab9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80";

  final List<dynamic> urlsPersons = [ 
    "https://images.unsplash.com/photo-1600631965708-89abd5b68ab9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80"
    , "https://images.unsplash.com/photo-1542103749-8ef59b94f47e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80"
    , "https://images.unsplash.com/photo-1522925875192-02df6922c92f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80"
    , "https://images.unsplash.com/photo-1503249023995-51b0f3778ccf?ixlib=rb-1.2.1&auto=format&fit=crop&w=311&q=80"
    , "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80"
    , "https://images.unsplash.com/flagged/photo-1570612861542-284f4c12e75f?ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80"
    , "https://images.unsplash.com/photo-1544723795-3fb6469f5b39?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=335&q=80"
    , "https://images.unsplash.com/photo-1544005313-94ddf0286df2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=334&q=80"
  ];
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: Scaffold(
          body: Column(
            children: <Widget>[
              CustomAppBar(),
              Expanded(
                child: ListView(
                  children: <Widget>[
                    Contact(urlsPersons[0], "Anastasia", 1),
                    Contact(urlsPersons[1], "Maria", 2),
                    Contact(urlsPersons[2], "Jose", 4),
                    Contact(urlsPersons[3], "Jorge", 1),
                    Contact(urlsPersons[4], "Melisa", 4),
                    Contact(urlsPersons[5], "Pedro", 1),
                    Contact(urlsPersons[6], "Juan", 1),
                    Contact(urlsPersons[7], "Fernanda", 3),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
