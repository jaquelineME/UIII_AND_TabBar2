import 'package:flutter/material.dart';
import 'package:melendez/paginas_tabs/pagina1.dart';
import 'package:melendez/paginas_tabs/pagina2.dart';
import 'package:melendez/paginas_tabs/pagina3.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      // Title
      title: "Melendez",
      // Home
      home: Micasa()));
} //fin de main

class Micasa extends StatefulWidget {
  @override
  MicasaState createState() => MicasaState();
} //fin de clase

class MicasaState extends State<Micasa> with SingleTickerProviderStateMixin {
  TabController controller;
  @override
  void initState() {
    super.initState();

    // Initialize the Tab Controller
    controller = TabController(length: 3, vsync: this);
  } //fin de iniciar estado

  @override
  void dispose() {
    // Dispose of the Tab Controller
    controller.dispose();
    super.dispose();
  } //fin de dispose

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Usando la barra de navegacion por Melendez"),
        // Set the background color of the App Bar
        backgroundColor: Colors.lightBlue[200],
      ),
      // Set the TabBar view as the body of the Scaffold
      body: TabBarView(
        // Add tabs as widgets
        children: <Widget>[
          PrimerTab(),
          SegundoTab(),
          TercerTab()
        ],
        // set the controller
        controller: controller,
      ),
      // Set the bottom navigation bar
      bottomNavigationBar: Material(
        // set the color of the bottom navigation bar
        color: Colors.lightBlue[200],
        // set the tab bar as the child of bottom navigation bar
        child: TabBar(
          tabs: <Tab>[
            Tab(
              // set icon to the tab
              icon: Icon(Icons.bug_report_rounded),
            ),
            Tab(
              icon: Icon(Icons.cake),
            ),
            Tab(
              icon: Icon(Icons.child_friendly),
            ),
          ],
          // setup the controller
          controller: controller,
        ),
      ), //navigator pie de pagina
    ); //fin de scaffold
  } //fin del widget
} //fin de MicasaState
