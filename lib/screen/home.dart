import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Icon(
            Icons.explore_outlined,
            color: Colors.grey,
          ),
          backgroundColor: Colors.white,
          actions: <Widget>[
            IconButton(
                icon: Icon(
                  Icons.notifications_none,
                ),
                onPressed: null),
            IconButton(
                icon: Icon(
                  Icons.question_answer_outlined,
                  color: Colors.grey,
                ),
                onPressed: null)
          ],
        ),
        body: ListView(
          children: <Widget>[
            _buildCard("event1", "event4", "event3", "Aris Prasetyo",
                "Thursday, 10 December 2020"),
            SizedBox(
              height: 10,
            ),
            _buildCard("event3", "event1", "event5", "Asep Solihi",
                "Friday, 5 Januari 2019"),
            SizedBox(
              height: 10,
            ),
            _buildCard("event4", "event3", "event1", "Riski Asiki",
                "Sunday, 11 Februari 2021"),
            SizedBox(
              height: 10,
            ),
            _buildCard("event5", "event1", "event3", "Mark Zuckerberg",
                "Monday, 27 November 2022"),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text("Home"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add_shopping_cart),
              title: Text("Shop"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add_a_photo_outlined),
              title: Text("Add"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.people_outline_outlined),
              title: Text("People"),
            ),
            BottomNavigationBarItem(
              icon: CircleAvatar(
                radius: 15,
                backgroundImage: AssetImage("images/twit2.png"),
                backgroundColor: Colors.white,
              ),
              title: Text("Aris"),
            ),
          ],
          selectedItemColor: Colors.red,
          unselectedItemColor: Colors.grey,
          type: BottomNavigationBarType.fixed,
        ));
  }

  _buildCard(slide1, slide2, slide3, judul, textWaktu) {
    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          SizedBox(
            height: 8,
          ),
          Row(
            children: <Widget>[
              SizedBox(
                width: 10,
              ),
              CircleAvatar(
                radius: 13,
                backgroundImage: AssetImage("images/twit2.png"),
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(children: <Widget>[
                      Text(
                        "$judul",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        " · attend this event",
                        style: TextStyle(color: Colors.grey[400], fontSize: 12),
                      )
                    ]),
                    Row(
                      children: <Widget>[
                        Text(
                          "$textWaktu",
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.grey[400],
                          ),
                        ),
                        Icon(
                          Icons.public_outlined,
                          color: Colors.grey[400],
                          size: 13,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
              Icon(Icons.more_vert),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            height: 250,
            child: Carousel(
              images: [
                AssetImage("images/$slide1.jpg"),
                AssetImage("images/$slide2.jpg"),
                AssetImage("images/$slide3.jpg"),
              ],
              autoplay: false,
              indicatorBgPadding: 1.0,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.all(5),
            height: 80,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("$textWaktu"),
                SizedBox(
                  height: 10,
                ),
                Expanded(
                  child: ListView(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Text(
                            "12:01:38",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
