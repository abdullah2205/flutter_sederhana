import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _State createState() => new _State();
}

//State is information of the application that can change over time or when some actions are taken.
class _State extends State<MyApp>{

  bool nilaiCheckbox = false;
  bool nilaiCheckbox2 = false;
  void _valueChanged(bool value) => setState(() => nilaiCheckbox = value);
  void _valueChanged2(bool value) => setState(() => nilaiCheckbox2 = value);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.home),
        title: Text('DiCatet'),
      ),
      //hit Ctrl+space in intellij to know what are the options you can use in flutter widgets
      body: ListView(
        children: [
          Image.asset(
            'images/img.jpg',
            width: 600,
            height: 240,
            fit: BoxFit.cover,
          ),
          Container(
            padding: const EdgeInsets.all(32),
            child: Row(
              children: [
                Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: const EdgeInsets.only(bottom: 15),
                          child: Row(
                            children: [
                              Icon(
                                Icons.assignment,
                                color: Colors.red[500],
                              ),
                              Text('  Melakukan Joging pagi hari selama 2 jam'),
                            ],
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(bottom: 15),
                          child: Row(
                            children: [
                              Icon(
                                Icons.favorite,
                                color: Colors.pink[500],
                              ),
                              Text('  Kesehatan'),
                            ],
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(bottom: 15),
                          child: Row(
                            children: [
                              Icon(
                                Icons.date_range,
                                color: Colors.blueAccent[500],
                              ),
                              Text('  08 November 2020'),
                            ],
                          ),
                        ),
                        Container(
                          child: Row(
                            children: [
                              Icon(
                                Icons.verified_user_sharp,
                                color: Colors.green[500],
                              ),
                              Text('  Setiap Minggu, pada Hari Minggu'),
                            ],
                          ),
                        ),
                        CheckboxListTile(
                          value: nilaiCheckbox,
                          onChanged: _valueChanged,
                          title: Text('Ingatkan Kegiatan ini?'),
                          activeColor: Colors.red,
                        ),
                        Container(
                          padding: const EdgeInsets.all(15),
                          child: Text(
                            'Ini adalah contoh text untuk isi konten dari Aplikasi ini, Tugas 1 Topik Khusus membuat UI Aplikasi Android mengunakan Flutter.',
                            softWrap: true,
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(bottom: 25),
                        ),
                        CheckboxListTile(
                          value: nilaiCheckbox2,
                          onChanged: _valueChanged2,
                          title: Text('Mark as Done'),
                          controlAffinity: ListTileControlAffinity.leading,
                          activeColor: Colors.blue,
                        ),
                      ],
                    )
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}


