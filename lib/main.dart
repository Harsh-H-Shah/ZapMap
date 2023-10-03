import 'package:flutter/material.dart';

void main() => runApp(ZapMapApp());

class ZapMapApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ZapMap',
      theme: ThemeData(
        primaryColor: Color(0xFFF5E1CB), // Light beige primary color
        scaffoldBackgroundColor: Colors.grey[200], // Light greyish background
        colorScheme: ColorScheme.light(
          primary: Color(0xFFF5E1CB), // Light beige primary color
          secondary: Colors.green[200] ??
              Colors.green, // Subtle green color with a default value
        ),
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ZapMap'),
        actions: [
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {
              // Open preferences modal here
              // You can use a package like 'modal_bottom_sheet' for the modal
            },
          ),
        ],
      ),
      body: Column(
        children: [
          // Advertisements Slider (You can replace with actual images)
          Container(
            height: 150,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                // Add your advertisement images here
                // Example: Image.asset('assets/advertisement1.png'),
                // Example: Image.asset('assets/advertisement2.png'),
              ],
            ),
          ),
          // Shortcuts Slider
          Container(
            height: 100,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                // Shortcuts
                ShortcutItem('Plan your trips', Icons.directions_car),
                ShortcutItem('Booking history', Icons.history),
                ShortcutItem('Find a charger', Icons.search),
                ShortcutItem('Your rewards', Icons.star),
                // Add more shortcut items as needed
              ],
            ),
          ),
          // Map Component
          Expanded(
            child: Container(
              margin: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Placeholder(), // Replace with your map widget
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.directions_car),
            label: 'Vehicle',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_balance_wallet),
            label: 'Wallet',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add QR code scan functionality here
        },
        child: Icon(Icons.qr_code),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

class ShortcutItem extends StatelessWidget {
  final String label;
  final IconData icon;

  ShortcutItem(this.label, this.icon);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      child: Column(
        children: [
          Icon(icon, size: 40),
          SizedBox(height: 5),
          Text(label),
        ],
      ),
    );
  }
}
