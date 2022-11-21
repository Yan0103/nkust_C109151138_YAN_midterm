import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final tabs = [
    Center(child: screen1()),
    Center(child: screen2()),
    Center(child: screen3()),
    Center(child: screen4()),
  ];

  int _currentindex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Midterm'),
        ),
        body: tabs[_currentindex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.red,
          selectedItemColor: Colors.white,
          selectedFontSize: 18.0,
          unselectedFontSize: 14.0,
          iconSize: 30.0,
          currentIndex: _currentindex,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: '自傳',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.access_alarm),
              label: '學習歷程',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.business),
              label: '大學目標',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.school),
              label: '專題方向',
            ),
          ],
          onTap: (index) {
            setState(() {
              _currentindex = index;
            });
          },
        ),
      ),
    );
  }
}

class screen1 extends StatelessWidget {
  final String s1 = '我出生在一個平凡的家庭，因為家裡本身就是做電子相關的行業，所以從小耳濡目染下，對電子相關的行業也有了興趣，'
      '所以高中也就讀了電子科，在第一次接觸程式時，就覺得程式非常的有趣，雖然一開始也會覺得非常困難，'
      '但因為是做著有興趣的事情，也就會特別有動力的學習，'
      '所以在選大學科系時，也沒有猶豫地選擇了跟軟體開發有關的科系，而在大學也學習到了更多樣的語言，'
      '雖然程式語言布一樣，但其實他的邏輯還有解決的方式其實都是一樣的，就只是換了種語言表達而已，而學到現在我還是對程式開發保有一開始的熱忱。';

  @override
  Widget build(BuildContext context) {

    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          //先放個標題
          const Padding(
            padding: EdgeInsets.fromLTRB(20, 30, 20, 20),
            child: Text("Who am I",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                )),
          ),
          //文字自傳部份
          Container(
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.fromLTRB(30, 0, 30, 50),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: 3),
              borderRadius: BorderRadius.circular(8),
              boxShadow: const [
                BoxShadow(color: Colors.amberAccent, offset: Offset(6, 6)),
              ],
            ),
            child: Text(
              s1,
              style: TextStyle(fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}

class screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          //有多種排版方式, 此處以最直覺的方式將每一列放文字內容
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("大一時期"),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 200,
                width: 200,
                child: ListView(
                  children: [
                    //條列式參考ˊ
                    Text('計算機概論(必修)'),
                    Text('微積分(必修)'),
                    Text('數位邏輯設計(必修)'),
                    Text('計算機程式設計(必修)'),
                    Text('物理(選修)'),
                    Text('網際網路暨應用(必修)'),
                    Text('組合語言程式設計(必修)'),
                    Text('多媒體程式設計(選修)'),
                  ],
                ),
              ),
            ],
          ),
          Row(mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("大二時期"),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 200,
                width: 200,
                child: ListView(
                  children: [
                    //條列式參考
                    Text('物件導向程式設計(必修)'),
                    Text('計算機結構(必修)'),
                    Text('資料結構(必修)'),
                    Text('離散數學(必修)'),
                    Text('計算機網路(必修)'),
                    Text('微處理機(必修)'),
                    Text('線性代數(必修)'),
                    Text('機率與統計(必修)'),
                    Text('物件導向程式設計實習(選修)'),
                    Text('視窗程式設計(選修)'),
                  ],
                ),
              ),
            ],),
          Row(),
          Row(),
          Row(),
          Row(),
          Row(),
        ],
      ),
    );
  }
}

class screen3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              Text("大一時期" ,style: TextStyle(fontSize: 25)),
              Text("大二時期" ,style: TextStyle(fontSize: 25)),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: 110,
                width: 110,
                child: ListView(
                  children: const [
                    Text('1.人際關係'),
                    Text('2.享受大學'),
                  ],
                ),
              ),
              Container(
                height: 110,
                width: 110,
                child: ListView(
                  children: const [
                    Text('1.鑽研自己'),
                    Text('2.努力修課'),
                    Text('3.準備專題'),
                  ],
                ),
              ),
            ],
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text("----------------------------------------------"
                  "----------------------------------------------"),
            ],),
          const SizedBox(
            height: 10,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              Text("大三時期" ,style: TextStyle(fontSize: 25)),
              Text("大四時期" ,style: TextStyle(fontSize: 25)),
            ],),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: 110,
                width: 150,
                child: ListView(
                  children: const [
                    Text('1.AI技術'),
                    Text('2.演算法'),
                    Text('3.考取證照'),
                    Text('4.打工賺錢'),
                  ],
                ),
              ),
              Container(
                height: 110,
                width: 150,
                child: ListView(
                  children: const [
                    Text('1.考研'),
                    Text('2.實習'),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class screen4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('原住民語文件中跨語言未知詞與同義詞之自動擷取方法'),
    );
  }
}