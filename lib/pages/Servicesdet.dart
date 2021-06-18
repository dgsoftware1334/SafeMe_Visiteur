import 'package:flutter/material.dart';

class Servicesdet extends StatefulWidget {
  @override
  _ServicesdetState createState() => _ServicesdetState();
}

class _ServicesdetState extends State<Servicesdet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'ANATHOMIE PATHOLOGIQUE',
          style: TextStyle(color: Colors.black, fontSize: 18),
        ),
        backgroundColor: Colors.greenAccent,
      ),
      body: ListView(
        children: [
          Container(
              height: 150,
              width: double.infinity,
              child: Image.asset('images/slider/pic_2.jpg')),
          Container(
            color: Colors.black87,
            child: ListTile(
              title: Text(
                'Pathologie digestive',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Container(
            color: Colors.white,
            child: ListTile(
              title: Text(
                'Pathologie gynécologique Et urologique',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
          Container(
            color: Colors.black87,
            child: ListTile(
              title: Text(
                'Pathologie générale',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Container(
            color: Colors.white,
            child: ListTile(
              title: Text(
                'Cytopathologie',
                style: TextStyle(color: Colors.black),
              ),
            ),
          )
        ],
      ),
    );
  }
}
