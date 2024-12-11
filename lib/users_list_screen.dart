import 'dart:convert';

import 'package:flutter/material.dart';

import 'models/users.dart';

import 'package:http/http.dart' as http;

class UsersListScreen extends StatefulWidget {
  const UsersListScreen({super.key});

  @override
  State<UsersListScreen> createState() => _UsersListScreenState();
}

class _UsersListScreenState extends State<UsersListScreen> {
  List<Users> usersList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Fetch Users"),),
      body: FutureBuilder(future: _getData(), builder: (_, snapshot) {
        if (snapshot.hasData) {
          return ListView.builder(itemCount:usersList.length,itemBuilder: (_, index) {
            return ListTile(title: Text(usersList[index].name!.firstname.toString(),));
          });
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      }),
    );
  }

  Future<List<Users>> _getData() async {
    final response = await http.get(
        Uri.parse("https://fakestoreapi.com/users"));
    var data = jsonDecode(response.body.toString());
    if (response.statusCode == 200) {
      for (Map<String, dynamic> x in data) {
        usersList.add(Users.fromJson(x));
      }
      return usersList;
    }
    return usersList;
  }
}
