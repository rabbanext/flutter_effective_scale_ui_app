import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_effective_scale_ui_app/widgets/size_config.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Scale UI to fit multiple display sizes',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Stack(
      children: [
        Image.network(
          "https://picsum.photos/250?image=9",
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.cover,
        ),
        Scaffold(
          backgroundColor: Colors.black.withOpacity(0.8),
          body: Center(
            child: ListView(
              padding: EdgeInsets.only(
                  left: SizeConfig.safeBlockHorizontal * 2,
                  top: SizeConfig.safeBlockVertical * 5,
                  right: SizeConfig.safeBlockHorizontal * 0,
                  bottom: SizeConfig.safeBlockVertical * 5
              ),
              children: [
                SizedBox(height: SizeConfig.safeBlockVertical * 40,),
                Row(
                  children: [
                    CupertinoButton(
                      child: Container(
                        height: SizeConfig.safeBlockVertical * 20,
                        width: SizeConfig.safeBlockHorizontal * 40,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage('https://picsum.photos/250?image=9'),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7
                            )
                          ]
                        ),
                        child: Container(
                          margin: EdgeInsets.fromLTRB(15, 15, 0, 0),
                          child: Text(
                            "Mindfulness",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => TextScalePage()));
                      },
                    ),
                    CupertinoButton(
                      child: Container(
                        height: SizeConfig.safeBlockVertical * 20,
                        width: SizeConfig.safeBlockHorizontal * 40,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage('https://picsum.photos/250?image=9'),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7
                            )
                          ]
                        ),
                        child: Container(
                          margin: EdgeInsets.fromLTRB(15, 15, 0, 0),
                          child: Text(
                            "Mindfulness",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                      onPressed: () {
                        showCupertinoDialog(
                          context: context,
                          builder: (BuildContext context) => CupertinoAlertDialog(
                            title: const Text('Card is clicked.'),
                            actions: <Widget>[
                              CupertinoDialogAction(
                                child: const Text('ok'),
                                onPressed: () {
                                  Navigator.pop(context, 'ok');
                                },
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ],
                ),
                Row(
                  children: [
                    CupertinoButton(
                      child: Container(
                        height: SizeConfig.safeBlockVertical * 20,
                        width: SizeConfig.safeBlockHorizontal * 40,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage('https://picsum.photos/250?image=9'),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7
                            )
                          ]
                        ),
                        child: Container(
                          margin: EdgeInsets.fromLTRB(15, 15, 0, 0),
                          child: Text(
                            "Mindfulness",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                      onPressed: () {
                        showCupertinoDialog(
                          context: context,
                          builder: (BuildContext context) => CupertinoAlertDialog(
                            title: const Text('Card is clicked.'),
                            actions: <Widget>[
                              CupertinoDialogAction(
                                child: const Text('ok'),
                                onPressed: () {
                                  Navigator.pop(context, 'ok');
                                },
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                    CupertinoButton(
                      child: Container(
                        height: SizeConfig.safeBlockVertical * 20,
                        width: SizeConfig.safeBlockHorizontal * 40,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage('https://picsum.photos/250?image=9'),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7
                            )
                          ]
                        ),
                        child: Container(
                          margin: EdgeInsets.fromLTRB(15, 15, 0, 0),
                          child: Text(
                            "Mindfulness",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                      onPressed: () {
                        showCupertinoDialog(
                          context: context,
                          builder: (BuildContext context) => CupertinoAlertDialog(
                            title: const Text('Card is clicked.'),
                            actions: <Widget>[
                              CupertinoDialogAction(
                                child: const Text('ok'),
                                onPressed: () {
                                  Navigator.pop(context, 'ok');
                                },
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ],
                ),
                Row(
                  children: [
                    CupertinoButton(
                      child: Container(
                        height: SizeConfig.safeBlockVertical * 20,
                        width: SizeConfig.safeBlockHorizontal * 40,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage('https://picsum.photos/250?image=9'),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7
                            )
                          ]
                        ),
                        child: Container(
                          margin: EdgeInsets.fromLTRB(15, 15, 0, 0),
                          child: Text(
                            "Mindfulness",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                      onPressed: () {
                        showCupertinoDialog(
                          context: context,
                          builder: (BuildContext context) => CupertinoAlertDialog(
                            title: const Text('Card is clicked.'),
                            actions: <Widget>[
                              CupertinoDialogAction(
                                child: const Text('ok'),
                                onPressed: () {
                                  Navigator.pop(context, 'ok');
                                },
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                    CupertinoButton(
                      child: Container(
                        height: SizeConfig.safeBlockVertical * 20,
                        width: SizeConfig.safeBlockHorizontal * 40,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage('https://picsum.photos/250?image=9'),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7
                            )
                          ]
                        ),
                        child: Container(
                          margin: EdgeInsets.fromLTRB(15, 15, 0, 0),
                          child: Text(
                            "Mindfulness",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                      onPressed: () {
                        showCupertinoDialog(
                          context: context,
                          builder: (BuildContext context) => CupertinoAlertDialog(
                            title: const Text('Card is clicked.'),
                            actions: <Widget>[
                              CupertinoDialogAction(
                                child: const Text('ok'),
                                onPressed: () {
                                  Navigator.pop(context, 'ok');
                                },
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class TextScalePage extends StatefulWidget {
  @override
  _TextScalePageState createState() => _TextScalePageState();
}

class _TextScalePageState extends State<TextScalePage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(),
      body: Center(
        child: Text(
          'Scaling text!',
          style: TextStyle(
            fontSize: SizeConfig.safeBlockHorizontal * 10,
          ),
        ),
      ),
    );
  }
}
