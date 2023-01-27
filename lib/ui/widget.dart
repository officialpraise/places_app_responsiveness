import 'package:flutter/material.dart';
import '../model/place.dart';
//LargeScreen widget
class LargeScreen extends StatefulWidget {
  LargeScreenState createState() => LargeScreenState();
}

class LargeScreenState extends State<LargeScreen> {
  int indexx = 0;
  List places = placesList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("PLACES",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold)),
          centerTitle: true,
        ),
        body: Container(
            child: Row(children: [
              Container(
                width: MediaQuery.of(context).size.width / 4,
                height: MediaQuery.of(context).size.height,
                child: drawer(context, MediaQuery.of(context).size.width / 4),
              ),
              Container(
                  width: MediaQuery.of(context).size.width * 3 / 4,
                  height: MediaQuery.of(context).size.height,
                  child: ListView(
                    children: [
                      Column(
                        children: [
                          Container(
                              width: MediaQuery.of(context).size.width * 3 / 4,
                              height: 200,
                              child: GridWidgetMax(false, places)),
                          Container(
                            width: MediaQuery.of(context).size.width * 3 / 4,
                            child: Row(
                              children: [
                                Container(
                                  width: MediaQuery.of(context).size.width * 3 / 8,
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(left: 8),
                                        child: image(
                                            places,
                                            indexx,
                                            context,
                                            MediaQuery.of(context).size.width * 3 / 8,
                                            300),
                                      ),
                                      toggle(places, indexx)
                                    ],
                                  ),
                                ),
                                Container(
                                  width: MediaQuery.of(context).size.width * 3 / 8,
                                  child: Column(
                                    children: [
                                      thirdWidget(),

                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 5, right: 5, bottom: 5),
                                        child: fourt(
                                            MediaQuery.of(context).size.width *
                                                3 /
                                                8  ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ],
                  )),
            ])));
  }

  Widget GridWidgetMax(bool scrolDirection, List place) {
    int itemCount;
    Axis axisDirection;
    if (scrolDirection == true) {
      axisDirection = Axis.vertical;
      itemCount = 2;
    } else {
      axisDirection = Axis.horizontal;
      itemCount = 1;
    }
    return GridView.builder(
        scrollDirection: axisDirection,
        itemCount: place.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: itemCount,
          childAspectRatio: 1 / 1,
          crossAxisSpacing: 1,
          mainAxisSpacing: 3,
        ),
        itemBuilder: (context, index) {
          return gridChildrenMax(place, index);
        });
  }

  Widget gridChildrenMax(List place, int index) {
    return Card(
        clipBehavior: Clip.antiAlias,
        child: InkWell(
            child: GridTile(
              footer: GridTileBar(
                  backgroundColor: Colors.black38,
                  title: Text("${place[index].title}"),
                  subtitle: Text("${place[index].subtitle}")),
              child: Ink.image(
                  image: AssetImage("${place[index].image}"), fit: BoxFit.fill),
            ),
            onTap: () {
              setState(() {
                indexx = index;
              });
            }));
  }
}








//medium screen widget
class MediumScreen extends StatefulWidget {
  MediumScreenState createState() => MediumScreenState();
}

class MediumScreenState extends State<MediumScreen> {
  int indexx = 0;
  List places = placesList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("PLACES",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold)),
          centerTitle: true,
        ),
        body: Container(
            child: Row(children: [
          Container(
            width: MediaQuery.of(context).size.width / 4,
            height: MediaQuery.of(context).size.height,
            child: drawer(context, MediaQuery.of(context).size.width / 4),
          ),
          Container(
              width: MediaQuery.of(context).size.width * 3 / 4,
              height: MediaQuery.of(context).size.height,
              child: ListView(
                children: [
                  Column(
                    children: [
                      Container(
                          width: MediaQuery.of(context).size.width * 3 / 4,
                          height: 150,
                          child: GridWidgetMax(false, places)),
                      Container(
                        width: MediaQuery.of(context).size.width * 3 / 4,
                        child: Row(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * 3 / 8,
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8),
                                    child: image(
                                        places,
                                        indexx,
                                        context,
                                        MediaQuery.of(context).size.width * 3 / 8,
                                        300),
                                  ),
                                  toggle(places, indexx)
                                ],
                              ),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * 3 / 8,
                              child: Column(
                                children: [
                                  thirdWidget(),

                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 5, right: 5, bottom: 5),
                                    child: fourt(
                                        MediaQuery.of(context).size.width *
                                            3 /
                                          8  ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              )),
        ])));
  }

  Widget GridWidgetMax(bool scrolDirection, List place) {
    int itemCount;
    Axis axisDirection;
    if (scrolDirection == true) {
      axisDirection = Axis.vertical;
      itemCount = 2;
    } else {
      axisDirection = Axis.horizontal;
      itemCount = 1;
    }
    return GridView.builder(
        scrollDirection: axisDirection,
        itemCount: place.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: itemCount,
          childAspectRatio: 1 / 1,
          crossAxisSpacing: 1,
          mainAxisSpacing: 3,
        ),
        itemBuilder: (context, index) {
          return gridChildrenMax(place, index);
        });
  }

  Widget gridChildrenMax(List place, int index) {
    return Card(
        clipBehavior: Clip.antiAlias,
        child: InkWell(
            child: GridTile(
              footer: GridTileBar(
                  backgroundColor: Colors.black38,
                  title: Text("${place[index].title}"),
                  subtitle: Text("${place[index].subtitle}")),
              child: Ink.image(
                  image: AssetImage("${place[index].image}"), fit: BoxFit.fill),
            ),
            onTap: () {
              setState(() {
                indexx = index;
              });
            }));
  }
}

//small screen widget
Widget SmallScreen(List place, context) {
  return Scaffold(
    appBar: AppBar(
      title: Text("Places",
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold)),
      centerTitle: true,
    ),
    body: GridWidget(true, place),
    drawer: drawer(context, MediaQuery.of(context).size.width / 2),
  );
}

//gridview widget
class GridWidget extends StatelessWidget {
  bool scrolDirection;
  List place;

  GridWidget(this.scrolDirection, this.place);

  @override
  Widget build(BuildContext context) {
    Axis axisDirection;
    int itemCount;
    if (scrolDirection == true) {
      axisDirection = Axis.vertical;
      itemCount = 2;
    } else {
      axisDirection = Axis.horizontal;
      itemCount = 1;
    }
    return GridView.builder(
        scrollDirection: axisDirection,
        itemCount: place.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: itemCount,
          childAspectRatio: 1 / 1.2,
          crossAxisSpacing: 3,
          mainAxisSpacing: 8,
        ),
        itemBuilder: (context, index) {
          return gridChildren(place, index);
        });
  }
}

//child for the gridview
class gridChildren extends StatelessWidget {
  List place;
  int index;

  gridChildren(this.place, this.index);

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        child: GridTile(
          footer: GridTileBar(
              backgroundColor: Colors.black38,
              title: Text("${place[index].title}"),
              subtitle: Text("${place[index].subtitle}")),
          child: Ink.image(
              image: AssetImage("${place[index].image}"), fit: BoxFit.fill),
        ),
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return SecondScreen(index, place);
          }));
        },
      ),
    );
  }
}

//drawer widget
Widget drawer(context, double wid) {
  List<String> name = getStatesOfSouthIndia();
  return Drawer(
    width: wid,
    elevation: 8,
    semanticLabel: "places",
    child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: name.length,
        itemBuilder: (context, index) {
          if (index == 0) {
            return DrawerHeader(
                decoration: BoxDecoration(
                    border: Border.all(
                        width: 1,
                        color: Colors.white,
                        style: BorderStyle.solid),
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage(
                          "image/india_chettinad_silk_maker.png",
                        ))),
                child: Padding(
                  padding: const EdgeInsets.only(top: 100),
                  child: Text(
                    "SOUTH INDIA",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ));
          } else {
            return ListTile(
              leading: Icon(Icons.fireplace_rounded),
              title: Text("${name[index]}"),
              onTap: () {},
            );
          }
        }),
  );
}

//Second Screen design for small
class SecondScreen extends StatelessWidget {
  late int index;
  late List places;

  SecondScreen(this.index, this.places);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${places[index].title}",
            style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold)),
        centerTitle: true,
      ),
      body: Container(
          child: ListView(scrollDirection: Axis.vertical, children: [
        image(places, index, context, MediaQuery.of(context).size.width*0.9, 200),
        Padding(
          padding: const EdgeInsets.all(6.0),
          child: toggle(places, index),
        ),
        Padding(
          padding: const EdgeInsets.all(2.0),
          child: thirdWidget(),
        ),
        Padding(
          padding: const EdgeInsets.all(6.0),
          child: fourt(MediaQuery.of(context).size.width),
        ),
      ])),
    );
  }
}

//image for second page
Widget image(List place, index, context, double wid, double heigh) {
  return Container(
    width: wid,
    height: heigh,
    decoration: BoxDecoration(
        image: DecorationImage(
      image: AssetImage("${place[index].image}"),
      fit: BoxFit.fitHeight,
    )),
  );
}

//second page second widget
Widget toggle(List place, index) {
  return Container(
      child: ListTile(
    title: Text("${place[index].title}"),
    subtitle: Text("${place[index].subtitle}"),
    trailing: Icon(
      Icons.star,
      color: Colors.yellow.shade900,
      size: 30,
    ),
  ));
}

//second page third widget
Widget thirdWidget() {
  return Card(
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
    Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.call,
            size: 20,
            color: Colors.purple.shade800,
          )),
      Text("CALL",
          style: TextStyle(
              color: Colors.purple, fontSize: 10, fontWeight: FontWeight.bold)),
    ]),
    Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.route,
            size: 20,
            color: Colors.purple.shade800,
          )),
      Text("ROUTE",
          style: TextStyle(
              color: Colors.purple, fontSize: 10, fontWeight: FontWeight.bold)),
    ]),
    Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.share,
            size: 20,
            color: Colors.purple.shade800,
          )),
      Text("SHARE",
          style: TextStyle(
              color: Colors.purple, fontSize: 10, fontWeight: FontWeight.bold))
    ])
  ]));
}

//fourt widget second screen
Widget fourt(double wid) {
  return Container(
    width: wid,
    child: Flexible(
      child: Text(getPlaceDescription()),
    ),
  );
}
