import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:flutter/cupertino.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryTextTheme: GoogleFonts.montserratTextTheme(
          Theme.of(context).textTheme,
        ),
        textTheme: GoogleFonts.montserratTextTheme(
          Theme.of(context).textTheme,
        ),
        appBarTheme: AppBarTheme(elevation: 0),
        primaryColor: Color(hexColor("#F7F7F7")),
      ),
      title: 'Material App',
      home: Anasayfa(),
    );
  }
}

class Anasayfa extends StatefulWidget {
  Anasayfa({Key key}) : super(key: key);

  @override
  _AnasayfaState createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Color(hexColor("#F7F7F7")),
        appBar: AppBar(
          actions: <Widget>[
            IconButton(
                icon: Icon(
                  Feather.camera,
                  color: Colors.grey,
                ),
                onPressed: () {}),
          ],
          backgroundColor: (Color(
            hexColor("#F7F7F7"),
          )),
          title: Text('Discovery'),
          centerTitle: false,
        ),
        body: Container(
          child: ListView(
            children: <Widget>[
              Container(
                height: 140,
                width: double.infinity,
                // color: Colors.amber,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.only(left: 3, top: 10),
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        listeElemani("assets/model1.jpg", "assets/hm.png"),
                        listeElemani("assets/model2.jpg", "assets/coumbia.png"),
                        listeElemani("assets/model3.jpg", "assets/zara.jpg"),
                        listeElemani("assets/model1.jpg", "assets/hm.png"),
                        listeElemani("assets/model2.jpg", "assets/coumbia.png"),
                      ],
                    )
                  ],
                ),
              ),
              card(context),
              card(context),
            ],
          ),
        ),
      ),
    );
  }

  Padding card(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Material(
        borderRadius: BorderRadius.circular(15),
        elevation: 2,
        child: Container(
          padding: EdgeInsets.all(16),
          height: 600,
          width: double.infinity,
          //color: Colors.blue.shade200,
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/model1.jpg"),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width - 205,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("A.Oğuz", style: TextStyle(fontSize: 18)),
                        SizedBox(
                          height: 5,
                        ),
                        Text("34mins ago",
                            style: TextStyle(
                                fontSize: 11,
                                color: Color(hexColor("#E0E0E0")))),
                      ],
                    ),
                  ),
                  IconButton(icon: Icon(Icons.more_vert), onPressed: () {})
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: <Widget>[
                  Flexible(
                      child: Text(
                    "This official website features a ribbed knit zipper jacket that is modern  and stylish. It looks very temperament and is reccomend to friends",
                    style: TextStyle(color: Colors.grey, height: 1.5),
                    overflow: TextOverflow.clip,
                  )),
                ],
              ),
              SizedBox(height: 10),
              Container(
                height: 250,
                child: Row(
                  children: <Widget>[
                    Container(
                      width: (MediaQuery.of(context).size.width - 50) / 2,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: AssetImage(
                              "assets/modelGrid1.jpg",
                            ),
                            fit: BoxFit.cover),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: <Widget>[
                        Container(
                          width: (MediaQuery.of(context).size.width - 160) / 2,
                          height: 120,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: AssetImage("assets/modelGrid2.jpg"),
                                fit: BoxFit.cover,
                                alignment: Alignment.topCenter),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: (MediaQuery.of(context).size.width - 160) / 2,
                          height: 120,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: AssetImage("assets/modelGrid3.jpg"),
                                fit: BoxFit.cover,
                                alignment: Alignment.topCenter),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 20),
              Row(
                children: <Widget>[
                  Container(
                    width: 75,
                    height: 25,
                    decoration: BoxDecoration(
                      color: Color(hexColor("#FCF5F3")),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Center(
                        child: Text(
                      "#Zara",
                      style: TextStyle(color: Colors.brown),
                    )),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    width: 75,
                    height: 30,
                    decoration: BoxDecoration(
                      color: Color(hexColor("#FCF5F3")),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Center(
                        child: Text(
                      "#Beymen",
                      style: TextStyle(color: Colors.brown),
                    )),
                  ),
                ],
              ),

              Divider(),
              
              Row(
                children: <Widget>[
                  IconButton(icon: Icon(MaterialCommunityIcons.share), onPressed: (){})



                ],


              )
            ],
          ),
        ),
      ),
    );
  }

  Widget listeElemani(String modelPath, String markaPath) {
    return Padding(
      padding: const EdgeInsets.only(left: 32.0),
      child: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(38),
                  //image: DecorationImage(image: AssetImage('assets/model1.jpg')),
                  image: DecorationImage(
                      image: AssetImage(
                        modelPath,
                      ),
                      fit: BoxFit.cover),
                ),
              ),
              Positioned(
                top: 50,
                left: 50,
                child: Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(38),
                    image: DecorationImage(
                        image: AssetImage(markaPath), fit: BoxFit.cover),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: 75,
            height: 30,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.brown,
            ),
            child: Center(
                child: Text(
              "Follow",
              style: TextStyle(color: Colors.white),
            )),
          )
        ],
      ),
    );
  }
}

hexColor(String codeHexColor) {
  String newcolor = '0xfff' + codeHexColor;
  newcolor = newcolor.replaceAll('#', '');
  int colornew = int.parse(newcolor);

  return colornew;
}
