import 'package:flutter/material.dart';
import 'package:flutter_basics/users_list_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue , brightness: Brightness.dark),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Basics'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController textEditingController = TextEditingController();

  String newText = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme
              .of(context)
              .colorScheme
              .inversePrimary,
          title: Text(widget.title),
        ),
        body: Center(
            child: Column(
              children: [
                TextField(
                  decoration: const InputDecoration(labelText: "Enter text"),
                  controller: textEditingController,
                ),
                SizedBox(height: 10,),
                OutlinedButton(
                    onPressed: () {
                      _displayText();
                    },
                    child: const Text("Submit")),
                SizedBox(height: 10,),
                newText.isNotEmpty
                    ? Text("Entered text is $newText")
                    : Container(),
                SizedBox(height: 10,),
                ElevatedButton(
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (_) {
                            return AlertDialog(
                              title: const Text("Alert"),
                              content: const Text(
                                  "Please consider this as an alert popup"),
                              actions: [
                                TextButton(
                                    onPressed: () {
                                      return Navigator.pop(context);
                                    },
                                    child: const Text("Close"))
                              ],
                            );
                          });
                    },
                    child: const Text("Open dialog")),
                SizedBox(height: 10,),
                OutlinedButton(onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_) {
                    return const UsersListScreen();
                  }));
                }, child: const Text("Fetch Users"))

              ],
            ))); // This trailing comma makes auto-formatting nicer for build methods.
  }

  void _displayText() {
    setState(() {
      newText = textEditingController.text.toString();
    });
  }
}




