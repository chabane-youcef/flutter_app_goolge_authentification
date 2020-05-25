import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {

  final List<MenuItem> options = [
    MenuItem(Icons.search, 'Search'),
    MenuItem(Icons.shopping_cart, 'Basket'),
    MenuItem(Icons.email, 'Emails'),
    MenuItem(Icons.format_list_bulleted, 'Orders'),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.teal,
      padding: EdgeInsets.only(
        top: 62,
        left: 32,
        bottom: 8,
        right: MediaQuery.of(context).size.width / 2.9,
      ),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(right: 16),
                child: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: NetworkImage(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRYlaSpNe6EvoOs4Rz4MOyStYfmOEKQLBj0xpZQowvzbSU77yLm&usqp=CAU',
                      ),
                    ),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 10,
                        color: Colors.black45,
                      ),
                    ],
                  ),
                ),
              ),
              Text(
                'Chabane',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ],
          ),
          Spacer(),
          Column(
            children: options.map((item) {
              return ListTile(
                leading: Icon(
                  item.icon,
                  color: Colors.white,
                  size: 20,
                ),
                title: Text(
                  item.title,
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              );
            }).toList(),
          ),
          Spacer(),
          ListTile(
            onTap: () {},
            leading: Icon(
              Icons.settings,
              color: Colors.white,
              size: 20,
            ),
            title: Text('Settings',
                style: TextStyle(fontSize: 14, color: Colors.white)),
          ),
          ListTile(
            onTap: () {},
            leading: Icon(
              Icons.headset_mic,
              color: Colors.white,
              size: 20,
            ),
            title: Text('Support',
                style: TextStyle(fontSize: 14, color: Colors.white)),
          ),
        ],
      ),
    );
  }
}

class MenuItem {
  String title;
  IconData icon;

  MenuItem(this.icon, this.title);
}
