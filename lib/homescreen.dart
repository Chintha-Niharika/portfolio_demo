import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class homescreen extends StatelessWidget {
   launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[900],
        leading: Icon(
          Icons.person,
          color: Colors.blueGrey,
          //onPressed: () {}
        ),
        title: Text(
          'PORTFOLIO',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 20.0,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.call,
              color: Colors.blueGrey,
              //onPressed: () {}
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.mail,
              color: Colors.blueGrey,
              //onPressed: () {}
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.menu,
              color: Colors.blueGrey,
              //onPressed: () {}
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Center(
            child: CircleAvatar(
              backgroundImage: AssetImage('images/profile.jpg'),
              radius: height / 4,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Niharika chintha',
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Pacifico',
                ),
              ),
              Text(
                'Flutter Developer',
                style: TextStyle(
                  letterSpacing: 1.0,
                  fontSize: 20.0,
                  color: Colors.blueGrey,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'SourceSerifPro',
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                padding: EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.black, // background
                        onPrimary: Colors.white, // foreground
                      ),
                      onPressed: () {
                        const url =
                            'https://drive.google.com/drive/folders/1wIotHUDIY3HNhMNsIDSKqS0Yoe9KElSC?usp=share_link';
                        launchURL(url);
                      },
                      child: Text('Resume'),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        side: BorderSide(
                          style: BorderStyle.solid,
                        ),
                        shadowColor: Colors.grey,
                        primary: Colors.black, // background
                        onPrimary: Colors.white, // foreground
                      ),
                      onPressed: () {
                        const url = 'https://github.com/Chintha-Niharika';
                        launchURL(url);
                      },
                      child: Text('Github Profile'),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.black, // background
                        onPrimary: Colors.white, // foreground
                      ),
                      onPressed: () {
                        const url =
                            'https://www.linkedin.com/in/chintha-niharika-88a4a61b2/';
                        launchURL(url);
                      },
                      child: Text('Linkedin'),
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
