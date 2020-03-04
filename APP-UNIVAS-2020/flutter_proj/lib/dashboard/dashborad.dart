import 'package:flutter/material.dart';
import 'package:univas_edu_sistemas/Animations/FadeAnimarions.dart';
import 'package:univas_edu_sistemas/dashboard/message_center.dart';
import 'package:univas_edu_sistemas/dashboard/news.dart';
import 'package:univas_edu_sistemas/dashboard/partial_notes.dart';
import 'package:univas_edu_sistemas/dashboard/scheduled_tests.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard>
    with SingleTickerProviderStateMixin {
  GlobalKey<ScaffoldState> _drawerKey = GlobalKey();
  Widget _controllerPageView;
  @override
  void initState() {
    super.initState();
    _controllerPageView = News();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final String _alunoNome = 'Samuel';
    final Color _textColor = Colors.grey[900];
    return Scaffold(
        backgroundColor: Colors.white,
        key: _drawerKey,
        body: SingleChildScrollView(
            child: SafeArea(
          child: Container(
            child: Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(30),
                  child: Row(
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.menu),
                        color: Colors.black,
                        onPressed: () {
                          _drawerKey.currentState.openDrawer();
                        },
                      ),
                      FadeAnimation(
                        0.40,
                        Text(
                          "Bem vindo $_alunoNome",
                          style: TextStyle(
                              color: _textColor,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                ),
                _controllerPageView
              ],
            ),
          ),
        )),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                            'assets/images/univas-logo-original.png'),
                        fit: BoxFit.contain),
                  ),
                ),
                decoration: BoxDecoration(
                  color: Colors.green[100],
                ),
              ),
              ListTile(
                title: Text('Notícias de destaques'),
                onTap: () {
                  setState(() {
                    _controllerPageView = News();
                    Navigator.of(context).pop();
                  });
                },
              ),
              ListTile(
                title: Text('Notas parciais'),
                onTap: () {
                  setState(() {
                    _controllerPageView = PartialNotes();
                    Navigator.of(context).pop();
                  });
                },
              ),
              ListTile(
                title: Text('Provas Agendadas'),
                onTap: () {
                  setState(() {
                    _controllerPageView = ScheduledTests();
                    Navigator.of(context).pop();
                  });
                },
              ),
              ListTile(
                title: Text('Frequência'),
                onTap: () {
                  setState(() {
                    _controllerPageView = PartialNotes();
                    Navigator.of(context).pop();
                  });
                },
              ),
              ListTile(
                title: Text('Central de Mensagens'),
                onTap: () {
                  setState(() {
                    _controllerPageView = MessageCenter();
                    Navigator.of(context).pop();
                  });
                },
              ),
              ListTile(
                title: Text('Sair'),
                onTap: () {},
              ),
            ],
          ),
        ));
  }
}
