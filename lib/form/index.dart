import 'package:flutter/material.dart';
import 'new-route.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(primarySwatch: Colors.blue),
      home: new _SwitchAndCheckBoxTestRoute(),
      routes: {'newPage': (context) => NewRoute()},
    );
  }
}

class _SwitchAndCheckBoxTestRoute extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _SwitchAndCheckBoxTestState();
  }
}

class _SwitchAndCheckBoxTestState extends State<_SwitchAndCheckBoxTestRoute> {
  bool _switchSelected = true;
  bool _checkboxSelected = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('form'),
        ),
        body: Column(
          children: <Widget>[
            Switch(
              value: _switchSelected, //当前状态
              onChanged: (value) {
                //重新构建页面
                setState(() {
                  _switchSelected = value;
                });
              },
            ),
            Checkbox(
              value: _checkboxSelected,
              activeColor: Colors.blue, //选中时的颜色
              onChanged: (value) {
                setState(() {
                  _checkboxSelected = value;
                });
              },
            ),
            FlatButton(
              child: Text('new route'),
              onPressed: () {
                Navigator.pushNamed(context, 'newPage');
                /*Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (context) => new NewRoute()));*/
              },
            )
          ],
        ));
  }
}
