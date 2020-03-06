import 'package:flutter/material.dart';
import 'package:univas_edu_sistemas/dashboard/frequency.dart';
import 'package:univas_edu_sistemas/dashboard/message_center.dart';
import 'package:univas_edu_sistemas/dashboard/news.dart';
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
    return Scaffold(
        appBar: AppBar(
          title: Text("Bem vindo $_alunoNome"),
          backgroundColor: Colors.green[700],
        ),
        backgroundColor: Colors.white,
        key: _drawerKey,
        body: SingleChildScrollView(
            child: SafeArea(
          child: Container(
            child: Column(
              children: <Widget>[SizedBox(height: 30), _controllerPageView],
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
                title: Text('Provas'),
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
                    _controllerPageView = Frequency();
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
