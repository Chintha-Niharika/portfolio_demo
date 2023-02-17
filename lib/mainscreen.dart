import 'package:flutter/material.dart';
import 'package:portfolio/homescreen.dart';

class mainscreen extends StatefulWidget {
  @override
  State<mainscreen> createState() => _mainscreenState();
}

class _mainscreenState extends State<mainscreen> {
  final formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    double height = (MediaQuery.of(context).size.height) / 2;
    double width = (MediaQuery.of(context).size.width) / 2;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.only(top: 30.0),
            child: SingleChildScrollView(
              child: Form(
                key: formkey,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        backgroundImage: AssetImage('images/profileicon.png'),
                        radius: 50,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 10.0, left: 20.0, right: 20.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                          fillColor: Colors.grey[100],
                          filled: true,
                          hintText: 'Email',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        validator: (value) {
                          if (value!.isEmpty ||
                              !RegExp(r'^[\w-\.]+@[a-z 0-9]+[\.][\w-]{2,4}$')
                                  .hasMatch(value!))
                            return "Enter correct email";
                          else
                            return null;
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 10.0, left: 20.0, right: 20.0),
                      child: TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          fillColor: Colors.grey[100],
                          filled: true,
                          hintText: 'password',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        validator: (value) {
                          if (value!.isEmpty ||
                              RegExp(r'^[\w-\.@]{8,15}$').hasMatch(value!))
                            return "enter correct pass";
                          else
                            return null;
                        },
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Center(
                      child: ConstrainedBox(
                        constraints: BoxConstraints.tightFor(width: 85),
                        child: ElevatedButton(
                          onPressed: () {
                            if (formkey.currentState!.validate()) {
                              final snackBar =
                                  SnackBar(content: Text('submitting form'));
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => homescreen()),
                              );
                              var _scaffoldKey;
                              _scaffoldKey.currentState!.showSnackBar(snackBar);
                            }
                          },
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            primary: Colors.black,
                            shadowColor: Colors.grey,
                          ),
                          child: Text(
                            'Login',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Don't have an account?"),
                          SizedBox(
                            width: 7,
                          ),
                          TextButton(
                              onPressed: null,
                              child: Padding(
                                padding: const EdgeInsets.only(top: 20.0),
                                child: Text(
                                  'Sign up',
                                  style: TextStyle(
                                    decoration: TextDecoration.underline,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                              ))
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
