import 'package:flutter/material.dart';

class ScrenFour extends StatelessWidget {
  const ScrenFour({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 100,
        foregroundColor: Colors.amber,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.menu),
          tooltip: 'Menu Icon',
          onPressed: () => {},
        ),
        actions: <Widget>[
          //IconButton
          IconButton(
            icon: const Icon(Icons.image),
            tooltip: 'Image Icon',
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(80.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Flexible(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Flexible(
                    child: Container(
                      height: 50,
                      width: 50,
                      color: Colors.white,
                      child: Text(
                        "Hello Ali",
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ),
                  SizedBox(height: 10, width: 970),
                  Flexible(
                    child: Container(
                      height: 50,
                      width: 50,
                      color: Colors.white,
                      child: IconButton(
                        icon: const Icon(Icons.all_inclusive_sharp),
                        tooltip: 'all_inclusive_shar',
                        onPressed: () {},
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              width: 500,
              height: 40,
            ),
            Flexible(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Flexible(
                    child: Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            color: Colors.orange,
                            borderRadius: BorderRadius.circular(10)),
                        alignment: Alignment.center,
                        child: Column(
                          children: [
                            IconButton(
                              icon: const Icon(Icons.settings),
                              tooltip: 'Settings',
                              onPressed: () {},
                            ),
                            Text('230k'),
                            Text('sales'),
                          ],
                        )),
                  ),
                  SizedBox(height: 20, width: 900),
                  Flexible(
                    child: Container(
                      height: 150,
                      width: 90,
                      decoration: BoxDecoration(
                          color: Colors.yellow,
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        children: [
                          IconButton(
                            icon:
                                const Icon(Icons.account_balance_wallet_sharp),
                            tooltip: 'Settings',
                            onPressed: () {},
                          ),
                          Text('8.647k'),
                          Text('sales'),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Flexible(
              child: SizedBox(
                width: 200,
                height: 40,
              ),
            ),
            Flexible(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Flexible(
                    child: Container(
                      height: 150,
                      width: 90,
                      decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        children: [
                          IconButton(
                            icon:
                                const Icon(Icons.account_balance_wallet_sharp),
                            tooltip: 'Settings',
                            onPressed: () {},
                          ),
                          Text('1.432k'),
                          Text('Products'),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 900,
                    height: 20,
                  ),
                  Flexible(
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          color: Colors.yellow,
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        children: [
                          IconButton(
                            icon:
                                const Icon(Icons.account_balance_wallet_sharp),
                            tooltip: 'Settings',
                            onPressed: () {},
                          ),
                          Text('9745k'),
                          Text('Revenue'),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
