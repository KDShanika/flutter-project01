// TODO: import libary
import 'package:flutter/material.dart';


// TODO: create a main function
void main() => runApp(MaterialApp(
  home: Home(),
));

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int level = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],

      appBar: AppBar(
        title: Text('My Profile'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            level += 1;
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.grey[850],

        ),

      body: Padding(
        //content wont go for the very end of the edges
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[

            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/shani.jpg'),
                radius: 40.0,
              ),
            ),

            Divider(
              height: 90.0,
              color: Colors.grey[800],
            ),
            //SizedBox(height: 30.0),


            Text(
              'Name',
              style: TextStyle(
              color: Colors.grey,
              letterSpacing: 2.0,
              )
            ),
            SizedBox(height: 10.0),

            Text(
              'K.D.S.L.Waidyarathne',
              style: TextStyle(
              color: Colors.amberAccent[200],
              letterSpacing: 2.0,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              )
            ),
            SizedBox(height: 30.0),

            Text(
              'NIC',
              style: TextStyle(
              color: Colors.grey,
              letterSpacing: 2.0,
              )
            ),
            SizedBox(height: 10.0),

            Text(
              '957622488v',
              style: TextStyle(
              color: Colors.amberAccent[200],
              letterSpacing: 2.0,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              )
            ),
            SizedBox(height: 30.0),

            Text(
              'Level',
              style: TextStyle(
              color: Colors.grey,
              letterSpacing: 2.0,
              )
            ),
            SizedBox(height: 10.0),

            Text(
              '$level',
              style: TextStyle(
              color: Colors.amberAccent[200],
              letterSpacing: 2.0,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              )
            ),
            SizedBox(height: 30.0),
            

            Row(
              children: <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.grey[400],
                ),
                SizedBox(width: 10.0),
                Text(
                  'shanikawaidyarathne@gmail.com',
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 15.0,
                    letterSpacing: 1.0,
                  ),

                )

              ]
            )

          ]
        ),
        
        ),

    );
  }
}




