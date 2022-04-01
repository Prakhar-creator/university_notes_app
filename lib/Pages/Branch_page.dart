import 'package:flutter/material.dart';
import 'package:flutter_notes_application/Pages/home_page.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:velocity_x/velocity_x.dart';

class BranchPage extends StatelessWidget {
  const BranchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 31, 30, 30),
        appBar: VxAppBar(
          title: " University Notes App".text.make(),
          backgroundColor: Colors.black,
        ),
        drawer: Drawer(
            backgroundColor: Color.fromARGB(255, 31, 30, 30),
            child: Container(
                child: Column(children: <Widget>[
              Center(
                heightFactor: 2.0,
                child: VxTicket(
                  child: InkWell(
                    onTap: () async {
                      const url =
                          'https://www.linkedin.com/in/prakhar-mishra-393027194/';
                      if (await canLaunch(url)) launch(url);
                    },
                    child: const Center(
                      child: Text(
                        "About Dev",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  width: 200,
                  height: 70,
                  isTwoSided: true,
                  backgroundColor: Color.fromARGB(210, 109, 10, 167),
                ),
              ),
              Container(
                child: Center(
                  heightFactor: 2.0,
                  child: VxTicket(
                    child: InkWell(
                      onTap: () async {
                        const url =
                            'https://www.linkedin.com/in/prakhar-mishra-393027194/';
                        if (await canLaunch(url)) launch(url);
                      },
                      child: const Center(
                        child: Text(
                          "Support",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    height: 70,
                    width: 200,
                    backgroundColor: Color.fromARGB(210, 109, 10, 167),
                  ),
                ),
              ),
              Container(
                child: Center(
                  heightFactor: 2.0,
                  child: InkWell(
                    onTap: () async {
                      const url =
                          'https://my-pgi.com/KnowledgePro/StudentLogin.do';
                      if (await canLaunch(url)) launch(url);
                    },
                    child: const VxTicket(
                      child: Center(
                        child: Text(
                          "Login To ERP",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      height: 70,
                      width: 200,
                      backgroundColor: Color.fromARGB(210, 109, 10, 167),
                    ),
                  ),
                ),
              ),
              Container(
                child: Center(
                  heightFactor: 2.0,
                  child: InkWell(
                    onTap: () async {
                      const url = 'https://www.edhitch.com/login.html';
                      if (await canLaunch(url)) launch(url);
                    },
                    child: const VxTicket(
                      child: Center(
                        child: Text(
                          "Login To Edhitch Portal",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      height: 70,
                      width: 200,
                      backgroundColor: Color.fromARGB(210, 109, 10, 167),
                    ),
                  ),
                ),
              ),
            ]))),
        body: ListView.builder(
            padding: const EdgeInsets.all(8),
            itemCount: 8,
            itemBuilder: (BuildContext context, int index) {
              return SizedBox(
                  height: 800,
                  child: Container(
                    child: ListView(children: <Widget>[
                      Card(
                          child: InkWell(
                        splashFactory: InkRipple.splashFactory,
                        onTap: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomePage()));
                        },
                        child: ListTile(
                          tileColor: Color.fromARGB(210, 109, 10, 167),
                          title: Text(
                            'Department of CSE & Allied Engg',
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                          trailing: Icon(Icons.navigate_next, color: Vx.white),
                        ),
                      )),
                      Card(
                          child: InkWell(
                        splashFactory: InkRipple.splashFactory,
                        child: ListTile(
                          tileColor: Color.fromARGB(210, 109, 10, 167),
                          title: Text(
                            'Department of Communication Engg',
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                          trailing: Icon(Icons.navigate_next, color: Vx.white),
                        ),
                      )),
                      Card(
                          child: InkWell(
                        splashFactory: InkRipple.splashFactory,
                        child: ListTile(
                          tileColor: Color.fromARGB(210, 109, 10, 167),
                          title: Text(
                            'Department of Civil Engg',
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                          trailing: Icon(Icons.navigate_next, color: Vx.white),
                        ),
                      )),
                      Card(
                        child: InkWell(
                          splashFactory: InkRipple.splashFactory,
                          child: ListTile(
                            tileColor: Color.fromARGB(210, 109, 10, 167),
                            title: Text(
                              'Department of Mechanical Engg',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            ),
                            trailing:
                                Icon(Icons.navigate_next, color: Vx.white),
                          ),
                        ),
                      ),
                      Card(
                        child: InkWell(
                          splashFactory: InkRipple.splashFactory,
                          child: ListTile(
                            tileColor: Color.fromARGB(210, 109, 10, 167),
                            title: Text(
                              'Department of Petroleum Engg',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            ),
                            trailing:
                                Icon(Icons.navigate_next, color: Vx.white),
                          ),
                        ),
                      )
                    ]),
                  ));
            }));
  }
}
