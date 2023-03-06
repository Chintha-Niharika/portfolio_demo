import 'package:flutter/material.dart';
import 'package:portfolio/homescreen.dart';

class profilepage extends StatelessWidget {
  const profilepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(
            Icons.person,
            color: Colors.blueGrey[50],
          ),
          backgroundColor: Colors.blueGrey[900],
          centerTitle: true,
          title: Text(
            'Profiles',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Expanded(
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => homescreen(),
                      ),
                    );
                  },
                  child: Card(
                    elevation: 20.0,
                    color: Colors.blueGrey[50],
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundImage: AssetImage('images/profile.jpg'),
                          radius: 30.0,
                        ),
                        title: Text(
                          'Niharika Chintha',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Expanded(
                child: Card(
                  elevation: 20.0,
                  color: Colors.blueGrey[50],
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage('images/profileicon.png'),
                        radius: 30.0,
                      ),
                      title: Text(
                        'Sahith',
                        style: TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Expanded(
                child: Card(
                  color: Colors.blueGrey[50],
                  elevation: 20.0,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage('images/profileicon.png'),
                        radius: 30.0,
                      ),
                      title: Text(
                        'Likitha',
                        style: TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
