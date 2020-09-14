import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                child: Text('Drawer Header'),
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
              ),
              ListTile(
                title: Text('Item 1'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text('Item 2'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
        backgroundColor: Color(0xffE5E5E5),
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              Tab(
                text: 'Home',
              ),
              Tab(text: 'Favourites'),
            ],
          ),
          backgroundColor: Colors.cyan,
          actions: <Widget>[
            IconButton(
              splashColor: Colors.orange, // Splash colors onlongpressed
              tooltip: 'search here',
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {},
            ),
          ],
          centerTitle: true,
          title: Text(
            "GridViewSearch",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: HelpingApp(),
      ),
    );
  }
}

class HelpingApp extends StatefulWidget {
  HelpingApp({
    Key key,
  }) : super(key: key);

  @override
  _HelpingAppState createState() => _HelpingAppState();
}

class _HelpingAppState extends State<HelpingApp> {
  @override
  Widget build(BuildContext context) {
    return TabBarView(children: [
      Container(
        color: Colors.deepPurple,
        child: StaggeredGridView.count(
          padding: EdgeInsets.all(12.0),
          scrollDirection: Axis.vertical,
          crossAxisCount: 3,
          crossAxisSpacing: 12.0,
          mainAxisSpacing: 12.0,
          children: <Widget>[
            Tooltip(
              message: 'facebook',
              child: Material(
                color: Colors.tealAccent,
                elevation: 14.0,
                borderRadius: BorderRadius.circular(10.0),
                shadowColor: Color(0x802196F3),
                child: FlatButton(
                  shape: new RoundedRectangleBorder(
                    borderRadius:
                        new BorderRadius.only(topRight: Radius.circular(56)),
                  ),
                  onPressed: () {
                    print('facebook clicked');
                  },
                  child: Column(
                    children: <Widget>[
                      Container(
                        child: Image(
                          width: 200,
                          height: 68,
                          fit: BoxFit.contain,
                          image: AssetImage(
                            'assets/f.jpg',
                          ),
                        ),
                      ),
                      Container(
                        child: FittedBox(
                          fit: BoxFit.contain,
                          child: Text(
                            'FaceBook',
                            style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.bold,
                              decorationThickness: 8,
                              letterSpacing: 2,
                              color: Colors.black,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Tooltip(
              message: 'Google',
              child: Material(
                color: Colors.tealAccent,
                elevation: 14.0,
                borderRadius: BorderRadius.circular(10.0),
                shadowColor: Color(0x802196F3),
                child: FlatButton(
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(10.0),
                  ),
                  onPressed: () {},
                  child: Column(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(top: 8.0),
                        child: Image(
                          width: 200,
                          height: 68,
                          fit: BoxFit.contain,
                          image: AssetImage(
                            'assets/g.jpg',
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 3.0),
                        child: Text(
                          'Google',
                          style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.bold,
                            decorationThickness: 8,
                            letterSpacing: 2,
                            color: Colors.black,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Tooltip(
              message: 'Microsoft',
              child: Material(
                color: Colors.tealAccent,
                elevation: 14.0,
                borderRadius: BorderRadius.circular(10.0),
                shadowColor: Color(0x802196F3),
                child: FlatButton(
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(10.0),
                  ),
                  onPressed: () {},
                  child: Column(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(top: 8.0),
                        child: Image(
                          width: 200,
                          height: 68,
                          fit: BoxFit.contain,
                          image: AssetImage(
                            'assets/m.jpg',
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 3.0),
                        child: Text(
                          'Microsoft',
                          style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.bold,
                            decorationThickness: 8,
                            letterSpacing: 2,
                            color: Colors.black,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Tooltip(
              message: 'GitHub',
              child: Material(
                color: Colors.tealAccent,
                elevation: 14.0,
                borderRadius: BorderRadius.circular(10.0),
                shadowColor: Color(0x802196F3),
                child: FlatButton(
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(10.0),
                  ),
                  onPressed: () {},
                  child: Column(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(top: 8.0),
                        child: Image(
                          width: 200,
                          height: 68,
                          fit: BoxFit.contain,
                          image: AssetImage(
                            'assets/git.png',
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 3.0),
                        child: Text(
                          'GitHub',
                          style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.bold,
                            decorationThickness: 8,
                            letterSpacing: 2,
                            color: Colors.black,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Tooltip(
              message: 'Guy',
              child: Material(
                color: Colors.tealAccent,
                elevation: 14.0,
                borderRadius: BorderRadius.circular(10.0),
                shadowColor: Color(0x802196F3),
                child: FlatButton(
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(10.0),
                  ),
                  onPressed: () {},
                  child: Column(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(top: 8.0),
                        child: Image(
                          width: 200,
                          height: 68,
                          fit: BoxFit.contain,
                          image: AssetImage(
                            'assets/guy.gif',
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 3.0),
                        child: Text(
                          'Guy',
                          style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.bold,
                            decorationThickness: 8,
                            letterSpacing: 2,
                            color: Colors.black,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
          staggeredTiles: [
            StaggeredTile.extent(1, 100.0),
            StaggeredTile.extent(1, 100.0),
            StaggeredTile.extent(1, 100.0),
            StaggeredTile.extent(1, 100.0),
            StaggeredTile.extent(1, 100.0),
          ],
        ),
      ),
      Container(
        child: Center(child: Text('No Favourites are Added')),
      )
    ]);
  }
}
