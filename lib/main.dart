import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(myapp());
}

class myapp extends StatefulWidget {
  const myapp({Key? key}) : super(key: key);

  @override
  _myappState createState() => _myappState();
}

class _myappState extends State<myapp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primaryColor: Colors.blue), home: homescreen());
  }
}

class homescreen extends StatefulWidget {
  const homescreen({Key? key}) : super(key: key);

  @override
  _homescreenState createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Row(
            children: <Widget>[
              SizedBox(
                width: 20,
              ),
              Icon(
                Icons.camera_alt,
                color: Colors.grey[800],
                size: 30,
              ),
              Text(' '),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.grey[200]),
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.grey,
                      ),
                      border: InputBorder.none,
                      hintStyle: TextStyle(color: Colors.grey),
                      hintText: "Lionel Messi",
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              CircleAvatar(
                backgroundImage: AssetImage('assets/images/share.png'),
                radius: 15,
                backgroundColor: Colors.white10,
              )
            ],
          ),
          Text(' '),
          Center(child: Image.asset('assets/images/bg.jpg')),
          ListTile(
              title: Text(
                'Lionel Messi',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text('Professional Footballer '),
              leading: CircleAvatar(
                  radius: 30.0,
                  backgroundColor: Colors.green,
                  backgroundImage: AssetImage('assets/images/messi.jpg')),
              trailing: Icon(Icons.thumb_up)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                height: 40.0,
                width: 350.0,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(5.0)),
                child: Center(
                    child: Text('Follow',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0))),
              ),
              Container(
                height: 40.0,
                width: 45.0,
                decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(5.0)),
                child: Icon(Icons.messenger),
              ),
              Container(
                height: 40.0,
                width: 45.0,
                decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(5.0)),
                child: Icon(Icons.more_horiz),
              )
            ],
          ),
          Text(''),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text('      '),
              Icon(
                Icons.circle_rounded,
                color: Colors.grey,
              ),
              Icon(
                Icons.circle_rounded,
                color: Colors.grey,
              ),
              Text(
                  'Sarath,Sangeeth,Sachin,Pranav and 2,307,773 others like this')
            ],
          ),
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(onPressed: () {}, child: Text('Home')),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    'Posts',
                    style: TextStyle(color: Colors.grey),
                  )),
              TextButton(
                  onPressed: () {},
                  child: Text('About', style: TextStyle(color: Colors.grey))),
              TextButton(
                  onPressed: () {},
                  child: Text('Videos', style: TextStyle(color: Colors.grey))),
              TextButton(
                  onPressed: () {},
                  child: Text('Photos', style: TextStyle(color: Colors.grey)))
            ],
          ),
          Divider(
            thickness: 9.0,
            color: Colors.grey[400],
          ),
          Text(''),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text('       '),
              Text(
                'About',
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          )
        ],
      )),
    );
  }
}
