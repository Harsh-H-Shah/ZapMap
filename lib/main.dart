import 'package:flutter/material.dart';

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
              // Open preferences modal
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            height: 200,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                // Add advertisements images here
                Image.network('https://example.com/advertisement1.jpg'),
                Image.network('https://example.com/advertisement2.jpg'),
                Image.network('https://example.com/advertisement3.jpg'),
              ],
            ),
          ),
          Container(
            height: 100,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                // Add shortcut buttons here
                _buildShortcutButton('Plan your trips', Icons.directions),
                _buildShortcutButton('Booking history', Icons.history),
                _buildShortcutButton('Find a charger', Icons.search),
                _buildShortcutButton('Your rewards', Icons.star),
              ],
            ),
          ),
          Expanded(
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text('Nearby Stations'),
                  // Add map component here
                  Container(
                    height: MediaQuery.of(context).size.height * 0.4,
                    width: MediaQuery.of(context).size.width * 0.9,
                    color: Colors.grey,
                  ),
                ],
              ),
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
          // Scan QR code
        },
        child: Icon(Icons.qr_code),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  Widget _buildShortcutButton(String label, IconData icon) {
    return Container(
      margin: EdgeInsets.all(8.0),
      child: Column(
        children: [
          Icon(icon),
          SizedBox(height: 5.0),
          Text(label),
        ],
      ),
    );
  }
}
