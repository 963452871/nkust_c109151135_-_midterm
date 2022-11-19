import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  final tabs=[
    Center(child: screen1()),
    //Center(child: screen2()),
    Center(child: screen3()),
    //Center(child: screen4()),
  ];

  int _currentindex=0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Midterm'),),
        body: tabs[_currentindex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.blue,
          selectedItemColor: Colors.white,
          selectedFontSize: 18.0,
          unselectedFontSize: 14.0,
          iconSize: 30.0,
          currentIndex: _currentindex,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home),
              label: 'Home',
            ),
            /*BottomNavigationBarItem(icon: Icon(Icons.access_alarm),
              label: 'Alarm',
            ),*/
            BottomNavigationBarItem(icon: Icon(Icons.school),
              label: 'Schooll',
            ),
            /*BottomNavigationBarItem(icon: Icon(Icons.school),
              label: 'School',
            ),*/
          ],
          onTap: (index) { setState(() {
            _currentindex=index;
          });
          },
        ),
      ),
    );
  }
}
class screen1 extends StatelessWidget {

  final String s1='我出生在一個純樸的小鄉村，爸爸是司機,媽媽是服務業,'
      '小時候父母因為一些原因所以並沒有跟我們一起住,'
      '所以我們家的孩子都是在奶奶的照顧下長大的,'
      '因為從小父母就不會給我們什麼幫助,所以我們家的小孩都相當獨立,'
      '也正因為如此,所以上了大學之後我很快就適應了自己獨立生活。';

  @override
  Widget build(BuildContext context) {


    return SingleChildScrollView(
      child: Column(
        children:<Widget>[
          //先放個標題
          Padding(padding: EdgeInsets.fromLTRB(20, 30, 20, 20),
            child: Text("Who am I",
                style: TextStyle(fontSize:40,
                  fontWeight:FontWeight.bold,)),
          ),
          //文字自傳部份
          Container(
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.fromLTRB(30, 0, 30, 50),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: 3),
              borderRadius: BorderRadius.circular(8),
              boxShadow: [ BoxShadow(color: Colors.amberAccent,
                  offset: Offset(6, 6)),
              ],),
            child:Text(s1,
              style: TextStyle(fontSize: 30),),
          ),
        ],
      ),
    );
  }
}

/*class screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(child:Text('學習歷程'),);
  }
}*/

class screen3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child:Column(
        children: [
          //有多種排版方式, 此處以最直覺的方式將每一列放文字內容
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [Text("大一時期",style: TextStyle(fontSize: 30)),],
          ),
          SizedBox(height: 10,),
          Row(mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 120,
                width: 300,
                child: ListView(
                  children: [
                    //條列式參考
                    Text('1. 學好英文',style: TextStyle(fontSize: 25)),
                    Text('2. 學好程式語言',style: TextStyle(fontSize: 25)),
                    Text('3. 考取證照',style: TextStyle(fontSize: 25)),
                  ],
                ),
              ),
            ],),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [Text("大二時期",style: TextStyle(fontSize: 30)),],
          ),
          SizedBox(height: 10,),
          Row(mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 120,
                width: 300,
                child: ListView(
                  children: [
                    //條列式參考
                    Text('1. 考取英文相關證照',style: TextStyle(fontSize: 25)),
                    Text('2. 加強基礎理論',style: TextStyle(fontSize: 25)),
                    Text('3. 精進程式語言',style: TextStyle(fontSize: 25)),
                  ],
                ),
              ),
            ],),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [Text("大三時期",style: TextStyle(fontSize: 30)),],
          ),
          SizedBox(height: 10,),
          Row(mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 120,
                width: 300,
                child: ListView(
                  children: [
                    //條列式參考
                    Text('1. 探討更深的專業領域',style: TextStyle(fontSize: 25)),
                    Text('2. 加強理論的運用能力',style: TextStyle(fontSize: 25)),
                    Text('3. 決定未來方向',style: TextStyle(fontSize: 25)),
                  ],
                ),
              ),
            ],),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [Text("大四時期",style: TextStyle(fontSize: 30)),],
          ),
          SizedBox(height: 10,),
          Row(mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 120,
                width: 300,
                child: ListView(
                  children: [
                    //條列式參考
                    Text('1. 到業界實習',style: TextStyle(fontSize: 25)),
                    Text('2. 補足不足之處',style: TextStyle(fontSize: 25)),
                    Text('3. 畢業',style: TextStyle(fontSize: 25)),
                  ],
                ),
              ),
            ],),
        ],
      ),);
  }
}

/*class screen4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(child:Text('專案方向'),);
  }
}*/
