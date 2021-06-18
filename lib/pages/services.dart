import 'package:flutter/material.dart';
import 'package:Safe_Visiteur/pages/drawer.dart';
import 'package:Safe_Visiteur/pages/Servicesdet.dart';

class Services extends StatefulWidget {
  @override
  _ServicesState createState() => _ServicesState();
}

class _ServicesState extends State<Services> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed('Home');
            },
            icon: Icon(Icons.arrow_back)),
        backgroundColor: Colors.greenAccent,
        title: Text(
          'Services',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      endDrawer: Drawers(),
      body: ListView(
        children: <Widget>[
          InkWell(
              onTap: () {
                Navigator.of(context).pushNamed('Servicesdet');
              },
              child: Container(
                height: 100,
                width: 100,
                child: Card(
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: Image.asset('images/slider/services.png'),
                      ),
                      Expanded(
                        flex: 2,
                        child: Container(
                          alignment: Alignment.topRight,
                          height: 100,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'NESTHESIE REANIMATION',
                                textAlign: TextAlign.center,
                              ),
                              Row(
                                children: <Widget>[
                                  Text(
                                    'Nombre de lits:10',
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ))
        ],
      ),
      drawer: Drawers(),
    );
  }
}
