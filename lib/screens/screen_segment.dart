import 'package:flutter/material.dart';
import '../style.dart';

class ScreenSegment extends StatefulWidget {
  @override
  _StackOverState createState() => _StackOverState();
}

class _StackOverState extends State<ScreenSegment>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController?.dispose();
  }

  @override
  Widget build(BuildContext context) {
 
    return Scaffold(
      appBar: AppBar(title:Text('segment demo'), backgroundColor:appColor),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            // give the tab bar a height [can change hheight to preferred height]
            Container(
              height: 45,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(
                  25.0,
                ),
              ),
              child: TabBar(
                controller: _tabController,
                // give the indicator a decoration (color and border radius)
                indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    25.0,
                  ),
                  color: secondColor,
                ),
                labelColor: Colors.white,
                unselectedLabelColor: Colors.black,
                tabs: [
                  Tab(text: 'segment 1'),
                  Tab(text: 'segment 2'),
                  Tab(text: 'segment 3')
                ],
              ),
            ),
            // tab bar view here
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [

///////////////// segment 1 /////////////
Padding(padding: EdgeInsets.all(20.0), //
child: Column(children: [              //
                                       //
SizedBox(height: 20.0),                //
                                       //
Text('segment 1'),                     //
                                       //
])),                                   //
///////////////// end first tab view ////



//////////////// segment 2 //////////////
Padding(padding: EdgeInsets.all(20.0), //
child: Column(children: [              //
                                       //
SizedBox(height: 20.0),                //
                                       //
Text('segment 2'),                     //
                                       //
])),                                   //
                                       //
/////////////// end second tab view /////
              
 
                   Center(
                    child: Text(
                      'Test1',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
