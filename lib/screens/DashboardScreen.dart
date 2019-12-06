import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  var _selectedIndex = 0;
  final _pageController = PageController();

  var currentPage  = Container(
    child: SafeArea(
      child: Center(
        child: Column(
          children: <Widget>[
            Text("Test"),
          ],
        ),
      ),
    ),
  ),
//  final navBotton = Destination(title: "test", icon: Icons.home, color: Colors.lightBlueAccent)

  @override
  Widget build(BuildContext context) {
    return Scaffold(
//      bottomNavigationBar: allDestinations,
      body: currentPage,
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: _selectedIndex,
        showElevation: true, // use this to remove appBar's elevation
        onItemSelected: (index) => setState(() {
          _selectedIndex = index;



          //  _pageController.animateToPage(index, duration: Duration(milliseconds: 300), curve: Curves.ease);
        }),
        items: [
          BottomNavyBarItem(
            icon: Icon(Icons.restore),
            title: Text('Recent'),
            activeColor: Colors.red,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.favorite_border),
            title: Text('Gender Stats'),
            activeColor: Colors.purpleAccent,
          ),
          BottomNavyBarItem(
              icon: Icon(Icons.school),
              title: Text('School'),
              activeColor: Colors.pink),
          BottomNavyBarItem(
              icon: Icon(Icons.gps_fixed),
              title: Text('Profile'),
              activeColor: Colors.blue),
        ],
      ),
    );
  }
}

 List pages<Widget> = [
   Profile(),
   GenderStats(),

]


class Destination {
  const Destination(this.title, this.icon, this.color);
  final String title;
  final IconData icon;
  final MaterialColor color;
}

const List<Destination> allDestinations = <Destination>[
  Destination('Recent', Icons.restore, Colors.teal),
  Destination('Favorites', Icons.favorite_border, Colors.cyan),
  Destination('School', Icons.school, Colors.orange),
  Destination('Location', Icons.gps_fixed, Colors.blue)
];
