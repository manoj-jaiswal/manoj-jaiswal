import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Manoj Jaiswal',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: const MyHomePage(title: ''),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  List sociallink= [
    {
      "Name":"Instagram",
      "Image":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQsN9QIi0EfBmZ4NgjcRtmviPoqJVhNRs4gjOB873VeLBYvo26C5nhWonaZAQPIovWlO6c&usqp=CAU",
      "link":"https://www.instagram.com/ram9j?r=nametag"
    },{
      "Name":"LinkedIn",
      "Image":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT4RIzhKeEh2lVsFURmhpnjss1zKEac3qxS8HKlBwDoa9G92IQPyoRWtxg_-i-xQtbLvCw&usqp=CAU",
      "link":"https://www.linkedin.com/in/manoj-jaiswal-7712851a2"
    },{
      "Name":"GitHub",
      "Image":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRXOcEfuGD3FUfSBWGP86vD6faeERFXThgMyJfBJYgBhMREF8FtThd775lbXnuUbOqTJtg&usqp=CAU",
      "link":"https://github.com/manoj-jaiswal"
    },{
      "Name":"Twitter",
      "Image":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS9sQINcf9G5Atu1-F3S5HOyzbhx7J4kkE16M3rkQI&s",
      "link":"https://twitter.com/manoj_jaiswal49?t=JJUO6BZGTVgL-moo9ccUJQ&s=08"
    },{
      "Name":"Facebook",
      "Image":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQMYupZRFMikSCRgndD3S7pbHk6A75U685gHtUMUhPIiY06lDUe555QXLxTsVUrcFStKdg&usqp=CAU",
      "link":"https://www.facebook.com/manojjaiswal.ram.1"
    },
  ];
  List contactus= [
    {
      "Name":"Contact Me",
      "Image":"data:image/png;base64,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",
      "link":"mailto:manojaiswal495@gmail.com"
    }, {
      "Name":"Skype",
      "Image":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQHZgxuW1yTJ4YoZrgrPHztrSTAqXt5qfT5hdftWOjfPIOMVeCbP9yJh8oniHdeS-hn-iM&usqp=CAU",
      "link":"https://join.skype.com/invite/yXshVArkSqNf"
    }, {
      "Name":"Telegram",
      "Image":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR9mrFy-AnSqP7mS1Tyv5r-I9j9SQHSIgvpHR46-UgP_IsD028RbE5vTafuI6DfZfHMwVI&usqp=CAU",
      "link":"https://t.me/flutter_Indore"
    },
  ];
  String resume = "https://drive.google.com/file/d/1_bBDN1QEfkO1Xm1mTSUiJuIY8TX5OOQ2/view?usp=sharing";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: Center(
        child: ListView(
          children: <Widget>[
            Container(
              // color: Colors.deepPurpleAccent,
              padding: EdgeInsets.only(bottom: 40),
              decoration: BoxDecoration(
                  color: Colors.deepPurpleAccent,
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50),bottomRight: Radius.circular(50))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 35,),
                  CircleAvatar(backgroundColor: Colors.yellow,radius:35,backgroundImage:NetworkImage('data:image/jpeg;base64,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')),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Manoj Jaiswal',
                      style: TextStyle(color: Colors.white,fontSize: 24,fontWeight: FontWeight.w700),
                    ),
                  ), Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Hello Everyone, my name is Manoj \nI'm Fullstack Developer, \nI'm developing software's using Flutter and Python.",
                      style: TextStyle(color: Colors.white,fontSize:16),
                      textAlign: TextAlign.center,
                      textScaleFactor: 1.0,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    InkWell(
                        onTap: (){
                          _launchUrl(url: Uri.parse("mailto:manojaiswal495@gmail.com"));
                        },
                        child: CircleAvatar(child: Icon(Icons.email_outlined,color: Colors.white,size: 20))),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(
                          onTap: (){
                            _launchUrl(url: Uri.parse("https://wa.me/918959816075"));
                          },
                          child: CircleAvatar(
                          child: Icon(Icons.whatsapp_outlined,size: 20,color: Colors.white,),
                    ),
                        ),
                      ),
                  ],)
                ],
              ),
            ),
            Container(
              height: 250,
              padding: EdgeInsets.only(left: 20.0,top: 10,bottom: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("My Socials",style: TextStyle(color: Colors.white,fontSize: 20)),
                  ),
                  Expanded(
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: sociallink.length,
                      itemBuilder: (context, index) {
                    return Card(
                      elevation: 5,
                      color: Colors.deepPurpleAccent,
                        child: Column(
                          children: [
                            Container(
                              width:120,
                              height: 100,
                              decoration: BoxDecoration(
                                  color: Colors.deepPurple,
                                  borderRadius: BorderRadius.only(topLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
                                image: DecorationImage(image: NetworkImage(sociallink[index]['Image']),fit: BoxFit.fill)
                              ),
                              margin: EdgeInsets.all(8.0),
                              // child: Center(child:Image.network(sociallink[index]['Image'])),
                            ),
                            Text((sociallink[index]['Name']),style: TextStyle(color: Colors.white),),
                            Spacer(),
                            ElevatedButton(onPressed: (){
                              _launchUrl(url: Uri.parse(sociallink[index]['link']));
                            }, child: Text("Discover",style: TextStyle(color: Colors.white),),),
                            SizedBox(height: 8.0,),
                          ],
                        ));
            },),
                  ),
                ],
              ),),
            Container(
              height: 250,
              padding: EdgeInsets.only(left: 20.0,top: 10,bottom: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("My Links",style: TextStyle(color: Colors.white,fontSize: 20)),
                  ),
                  Expanded(
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: contactus.length,
                      itemBuilder: (context, index) {
                    return Card(
                      elevation: 5,
                      color: Colors.deepPurpleAccent,
                        child: Column(
                          children: [
                            Container(
                              width:120,
                              height: 100,
                              decoration: BoxDecoration(
                                  color: Colors.deepPurple,
                                  borderRadius: BorderRadius.only(topRight:  Radius.circular(20),bottomLeft:  Radius.circular(20)),
                                  image: DecorationImage(image: NetworkImage(contactus[index]['Image']),fit: BoxFit.fill)
                              ),
                              margin: EdgeInsets.all(8.0),
                              // child: Center(child: Icon(Icons.insert_chart_outlined)),
                            ),
                            Text(contactus[index]['Name'],style: TextStyle(color: Colors.white),),
                            Spacer(),
                            ElevatedButton(onPressed: (){
                              _launchUrl(url: Uri.parse(contactus[index]['link']));
                            }, child: Text("Discover",style: TextStyle(color: Colors.white),),),
                            SizedBox(height: 8.0,),
                          ],
                        ));
            },),
                  ),
                ],
              ),),
            SizedBox(
              height: 50,
            ),
            Container(
              // color: Colors.deepPurpleAccent,
              decoration: BoxDecoration(
                  color: Colors.deepPurpleAccent,
                  borderRadius: BorderRadius.only(topLeft:  Radius.circular(50),topRight:  Radius.circular(50))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 35,),
                  TextButton(onPressed: (){
                    _launchUrl(url: Uri.parse(resume));
                  }, child: Text('Get My resume here',style: TextStyle(color: Colors.white),)),
                  SizedBox(height: 20,),
                ],
              ),
            ),
          ],
        ),
      ),

    );
  }
}

Future<void> _launchUrl({url}) async {
  if (!await launchUrl(url)) {
    throw 'Could not launch $url';
  }
}
