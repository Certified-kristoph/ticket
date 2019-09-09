import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('DashBoard'),
        elevation: 0.1,
      ),
      body: Container(
        color: Colors.blueAccent,
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 2.0),
        child: GridView.count(
          crossAxisCount: 2,
          padding: EdgeInsets.all(3.0),
          children: <Widget>[
            makeDashboardItem('Place Orders', Icons.move_to_inbox),
            makeDashboardItem('Stores Visited', Icons.store),
            makeDashboardItem('Stores', Icons.store),
            makeDashboardItem('Stores', Icons.store),
            makeDashboardItem('Stores', Icons.store),
            makeDashboardItem('Stores', Icons.store),
          ],
        ),
      ),
      //Floating Action Button(FAB)
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Colors.blue,
        onPressed: () {},
      ),

      //Floating Action Button position
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      //Bottom App Bar
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: Container(
          height: 60.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  MaterialButton(
                    minWidth: 40,
                    onPressed: (){},
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.dashboard,color: Colors.lightBlue,),
                        Text('Dashboard')
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed:(){},
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.receipt, color: Colors.lightBlueAccent,),
                        Text(' Transactions')
                      ],
                    ),
                  )
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  MaterialButton(
                    minWidth: 40,
                    onPressed: (){},
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.account_circle, color: Colors.lightBlueAccent,),
                        Text('Profile')
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed:(){},
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.settings,color: Colors.lightBlue,),
                        Text('Settings')
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
      
    );
  }
}
Card makeDashboardItem(String title, IconData icon){
  return Card(
    elevation: 1.0,
    margin: EdgeInsets.all(8.0),
    child: Container(
      decoration: BoxDecoration(
        color:Colors.white54
      ),
      child: InkWell(
        onTap: (){},
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          verticalDirection: VerticalDirection.down,
          children: <Widget>[
            SizedBox(
              height: 50.0,
            ),
            Center(
              child: Icon(icon, size: 40.0, color: Colors.black,),
            ),
            SizedBox(height: 20.0),
            Center(
              child: Text(title, style: TextStyle(fontSize:18.0, color: Colors.black),),
            )
          ],
        ),

      ),

    ),
  );
}