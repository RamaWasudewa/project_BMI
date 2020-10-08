import 'package:flutter/material.dart';

class Profiles extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Profile Depelover'),
          centerTitle: true,
          actions: [
            IconButton(
              icon: Icon(
                Icons.close,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            SizedBox(
              width: 15,
            )
          ],
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Picture(),
              TextName(),
              TextWeb(),
              RowCardOne(),
              RowCardTwo(),
            ],
          ),
        ),
      ),
    );
  }
}

class Picture extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: CircleAvatar(
        radius: 95,
        backgroundColor: Colors.lightBlue,
        child: CircleAvatar(
          radius: 90,
          backgroundImage: AssetImage('images/img1.jpg'),
        ),
      ),
      margin: const EdgeInsets.only(top: 35.0),
    );
  }
}

class TextName extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        'Kadek Rama Wasudewa',
        style: TextStyle(
          color: Colors.blueGrey,
          fontSize: 23,
        ),
      ),
      margin: const EdgeInsets.only(top: 20.0),
    );
  }
}

class TextWeb extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        'https://github.com/RamaWasudewa',
        style: TextStyle(
          color: Colors.blueGrey,
          fontSize: 20,
        ),
      ),
    );
  }
}

class RowCardOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Container(
          width: 150,
          margin: const EdgeInsets.only(top: 20.0),
          child: Card(
            child: Padding(
              padding: EdgeInsets.all(18.0),
              child: Column(
                children: <Widget>[
                  Icon(
                    Icons.school,
                    size: 50,
                    color: Colors.blueGrey,
                  ),
                  Text(
                    'Undiksha',
                    style: TextStyle(color: Colors.blue, fontSize: 18),
                  )
                ],
              ),
            ),
          ),
        ),
        Container(
          width: 150,
          margin: const EdgeInsets.only(top: 20.0),
          child: Card(
            child: Padding(
              padding: EdgeInsets.all(18.0),
              child: Column(
                children: <Widget>[
                  Icon(
                    Icons.location_on,
                    size: 50,
                    color: Colors.blueGrey,
                  ),
                  Text(
                    'Singaraja',
                    style: TextStyle(color: Colors.blue, fontSize: 18),
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}

class RowCardTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Container(
          width: 150,
          margin: const EdgeInsets.only(top: 20.0),
          child: Card(
            child: Padding(
              padding: EdgeInsets.all(18.0),
              child: Column(
                children: <Widget>[
                  Icon(
                    Icons.games,
                    size: 50,
                    color: Colors.blueGrey,
                  ),
                  Text(
                    'Game',
                    style: TextStyle(color: Colors.blue, fontSize: 18),
                  )
                ],
              ),
            ),
          ),
        ),
        Container(
          width: 150,
          margin: const EdgeInsets.only(top: 20.0),
          child: Card(
            child: Padding(
              padding: EdgeInsets.all(18.0),
              child: Column(
                children: <Widget>[
                  Icon(
                    Icons.music_note,
                    size: 50,
                    color: Colors.blueGrey,
                  ),
                  Text(
                    'EDM',
                    style: TextStyle(color: Colors.blue, fontSize: 18),
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
