import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:modaapp/detay.dart';

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

class _AnasayfaState extends State<Anasayfa>
    with SingleTickerProviderStateMixin {
  TabController tabController;
  Color likeColor = Colors.red;
  bool basildiMi = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        bottomNavigationBar: SafeArea(
          child: TabBar(
            indicatorColor: Colors.transparent,
            controller: tabController,
            tabs: <Widget>[
              Tab(
                icon: Icon(
                  Foundation.home,
                  color: Colors.grey,
                ),
              ),
              Tab(
                icon: Icon(
                  Foundation.play_video,
                  color: Colors.grey,
                ),
              ),
              Tab(
                icon: Icon(
                  Fontisto.compass,
                  color: Colors.grey,
                ),
              ),
              Tab(
                icon: Icon(
                  Octicons.person,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
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
              Padding(
                padding: const EdgeInsets.only(
                    left: 20, right: 20, top: 10, bottom: 20),
                child: Material(
                  borderRadius: BorderRadius.circular(15),
                  elevation: 2,
                  child: Container(
                    padding: EdgeInsets.all(16),
                    height: 560,
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
                                  Text("A.Oğuz",
                                      style: TextStyle(fontSize: 18)),
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
                            IconButton(
                                icon: Icon(Icons.more_vert), onPressed: () {})
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
                        Row(
                          children: <Widget>[
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Detay(
                                      imgPath: "assets/modelGrid1.jpg",
                                    ),
                                  ),
                                );
                                // buraya sayfa yönlendirmesi gelecek.
                              },
                              child: Hero(
                                tag: "assets/modelGrid1.jpg",
                                child: Container(
                                  width:
                                      (MediaQuery.of(context).size.width - 50) /
                                          2,
                                  height: 250,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    image: DecorationImage(
                                        image:
                                            AssetImage("assets/modelGrid1.jpg"),
                                        fit: BoxFit.cover),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              children: <Widget>[
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Detay(
                                                  imgPath:
                                                      "assets/modelGrid2.jpg",
                                                )));
                                    //buraya sayfa yönlendirmesi gelecek,
                                  },
                                  child: Hero(
                                    tag: "assets/modelGrid2.jpg",
                                    child: Container(
                                      width:
                                          (MediaQuery.of(context).size.width -
                                                  150) /
                                              2,
                                      height: 120,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  "assets/modelGrid2.jpg"),
                                              alignment: Alignment.topCenter,
                                              fit: BoxFit.cover)),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Detay(
                                                  imgPath:
                                                      "assets/modelGrid3.jpg",
                                                )));
                                    // buraya sayfa yönlendirmesi gelecek;
                                  },
                                  child: Hero(
                                    tag: "assets/modelGrid3.jpg",
                                    child: Container(
                                      width:
                                          (MediaQuery.of(context).size.width -
                                                  150) /
                                              2,
                                      height: 120,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          image: DecorationImage(
                                            image: AssetImage(
                                                "assets/modelGrid3.jpg"),
                                            fit: BoxFit.cover,
                                            alignment: Alignment.topCenter,
                                          )),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
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
                            SizedBox(
                              width: 10,
                            ),
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
                            IconButton(
                              icon: Icon(
                                MaterialCommunityIcons.share,
                                color: Colors.grey,
                              ),
                              onPressed: () {},
                            ),
                            Text(
                              "1.7k",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w100),
                            ),
                            IconButton(
                              icon: Icon(
                                FontAwesome.commenting,
                                color: Colors.grey,
                                size: 20,
                              ),
                              onPressed: () {},
                            ),
                            Text(
                              "325",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w100),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width - 260,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: <Widget>[
                                  IconButton(
                                      icon: Icon(
                                        AntDesign.heart,
                                        size: 22,
                                        color: basildiMi
                                            ? Colors.red
                                            : Colors.grey,
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          basildiMi = !basildiMi;
                                        });
                                      }),
                                  Text("2.3k",
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontWeight: FontWeight.w100)),
                                ],
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
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
