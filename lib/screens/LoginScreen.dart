import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pl_learning/screens/DashboardScreen.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  dynamic myController = TextEditingController();
  bool isSwitched = false;
  String _email = '';
  String _password = '';

  String _currentValue = "Mentor or Mentee";

  String _currentProg = "Programming Language";

  getEmail(value) {
    setState(() {
      _email = value;

      myController.clear();
    });
  }

  getPassword(value) {
    setState(() {
      _password = value;
      myController.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Peer-Learning"),
      ),
      backgroundColor: Colors.white,
      body: Container(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              SizedBox(
                height: 10,
              ),
              TextField(
                controller: myController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(23)),
                    hintText: 'Your name'),
                onChanged: getEmail(myController.text),
              ),
              TextField(
                controller: myController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(23)),
                    hintText: 'Email'),
                onChanged: getEmail(myController.text),
              ), //textArea for email
              TextField(
                controller: myController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(23)),
                  hintText: 'Password',
                ),
                onChanged: getPassword(myController.text),
              ), //
              // textArea for password
              DropdownButton<String>(
                hint: Text(_currentValue),
                items: <String>[
                  "Mentor",
                  'Mentee',
                ].map((String value) {
                  return new DropdownMenuItem<String>(
                    value: value,
                    child: new Text(value),
                  );
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    _currentValue = value;
                  });
                },
              ),
              DropdownButton<String>(
                hint: Text(_currentProg),
                items: <String>[
                  "C",
                  'C++',
                  "Dart",
                  "Python",
                  "JavaScript",
                ].map((String value) {
                  return new DropdownMenuItem<String>(
                    value: value,
                    child: new Text(value),
                  );
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    _currentProg = value;
                  });
                },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("male"),
                  Switch(
                    value: isSwitched,
                    onChanged: (value) {
                      setState(() {
                        isSwitched = value;
                      });
                    },
                    activeTrackColor: Colors.lightGreenAccent,
                    //activeColor: Colors.green,
                  ),
                  Text('female'),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              RaisedButton(
                onPressed: () {
                  setState(() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Dashboard(),
                      ),
                    );
                  });
                }, // upon login we navigate to the dashboard
                child: Text("Sign In"),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
