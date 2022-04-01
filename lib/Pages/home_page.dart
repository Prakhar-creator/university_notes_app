import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:http/http.dart' as http;

List<String> _urlsToLaunch = [
  "null",
  "https://drive.google.com/drive/folders/1vGkxpppjDtlPM8i0wEg1TfLgnwqaWDPd?usp=sharing",
  "https://drive.google.com/drive/folders/11gf12i2NWKdnjGKgKXUQcLAUxY6zRahK?usp=sharing",
  "https://drive.google.com/drive/folders/1hcKVRv5jhrB-gFdmSWjmbD2twE1tPp_e?usp=sharing",
  "https://drive.google.com/drive/folders/1ljw0JSI9Lt1I1dcqphL0weBUoZWGhX0d?usp=sharing"
];
final index = [1, 2, 3, 4, 5, 6, 7, 8];

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
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
              return InkWell(
                splashFactory: InkRipple.splashFactory,
                onTap: () {
                  _launchUrl(index);
                },
                child: Card(
                    child: Column(
                  children: <Widget>[
                    ListTile(
                        tileColor: Color.fromARGB(210, 109, 10, 167),
                        leading: Icon(Icons.book_outlined, color: Vx.white),
                        trailing: Icon(Icons.find_in_page, color: Vx.white),
                        title: Text(
                          "Semester $index",
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ))
                  ],
                )),
              );
            }));
  }
}

_launchUrl(index) async {
  if (await canLaunch(_urlsToLaunch[index])) {
    await launch(_urlsToLaunch[index]);
  } else {
    throw "Could not open $_urlsToLaunch";
  }
}
