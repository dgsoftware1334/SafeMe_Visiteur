import 'package:flutter/material.dart';
import 'package:Safe_Visiteur/pages/drawer.dart';
import 'package:carousel_pro/carousel_pro.dart';

class Home extends StatefulWidget {
  State<StatefulWidget> createState() {
    return HomeState();
  }
}

class HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'page d`accueil',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.greenAccent,
        actions: [
          IconButton(
              icon: Icon(Icons.search_off_outlined),
              onPressed: () {
                showSearch(context: context, delegate: DataSearch());
              })
        ],
      ),
      body: ListView(
        children: <Widget>[
          SizedBox(
            height: 250,
            width: double.infinity,
            child: Carousel(
              dotIncreasedColor: Colors.greenAccent,
              dotBgColor: Colors.black.withOpacity(0.5),
              dotSpacing: 15,
              images: [
                AssetImage('images/slider/pic_1.jpg'),
                AssetImage('images/slider/pic_2.jpg'),
                AssetImage('images/slider/pic_3.jpg'),
              ],
            ),
          ),
          InkWell(
            child: Container(
              width: double.infinity,
              height: 100,
              child: Image.asset(
                'images/drawer.jpg',
                fit: BoxFit.fill,
              ),
            ),
            onLongPress: () {
              Navigator.of(context).pushNamed('AboutApp');
            },
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 80, 10, 0),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [BoxShadow(color: Colors.black38, blurRadius: 4)]),
              height: 110,
              width: double.infinity,
              child: InkWell(
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  color: Colors.blue,
                  child: Padding(
                    padding: EdgeInsets.only(top: 29),
                    child: Text('Services',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 35,
                            letterSpacing: 1.2),
                        textAlign: TextAlign.center),
                  ),
                ),
                onTap: () {
                  Navigator.of(context).pushNamed('Services');
                },
              ),
            ),
          ),
        ],
      ),
      drawer: Drawers(),
    );
  }
}

class DataSearch extends SearchDelegate<String> {
  @override
  List<Widget> buildActions(BuildContext context) {
    // Action for AppBar
    return [IconButton(icon: Icon(Icons.clear), onPressed: () {})];
  }

  @override
  Widget buildLeading(BuildContext context) {
    // Icon li tji f lewel kima ListTile
    return IconButton(
        icon: Icon(Icons.arrow_back_ios),
        onPressed: () {
          close(context, null);
        });
  }

  @override
  Widget buildResults(BuildContext context) {
    // result
    return null;
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // كي يكون واحد يحوس على حاجة
    return Text('body search');
  }
}
