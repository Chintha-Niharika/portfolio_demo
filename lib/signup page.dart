import 'package:flutter/material.dart';
import 'package:portfolio/mainscreen.dart';

class signup extends StatelessWidget {
  // const signup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Expanded(
              child: CircleAvatar(
                backgroundImage: AssetImage('images/profileicon.png'),
                radius: 50,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0),
            child: Expanded(
              child: TextFormField(
                decoration: InputDecoration(
                  fillColor: Colors.grey[100],
                  filled: true,
                  hintText: 'First Name',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0),
            child: Expanded(
              child: TextFormField(
                decoration: InputDecoration(
                  fillColor: Colors.grey[100],
                  filled: true,
                  hintText: 'Last Name',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0),
            child: Expanded(
              child: TextFormField(
                decoration: InputDecoration(
                  fillColor: Colors.grey[100],
                  filled: true,
                  hintText: 'Enter e-mail',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0),
            child: Expanded(
              child: TextFormField(
                decoration: InputDecoration(
                  fillColor: Colors.grey[100],
                  filled: true,
                  hintText: 'Create password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0),
            child: Expanded(
              child: TextFormField(
                decoration: InputDecoration(
                  fillColor: Colors.grey[100],
                  filled: true,
                  hintText: 'Re-enter password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => mainscreen()),
              );
            },
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              primary: Colors.black,
              shadowColor: Colors.grey,
            ),
            child: Text(
              'Sign up',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
