import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: new Text(
          "Primary",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
            fontWeight: FontWeight.w400,
          ),
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 13.0),
            child: Icon(
              Icons.search,
              size: 25.0,
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.red),
              accountName: Text("John Doe"),
              accountEmail: Text("johndoe51@gmail.com"),
              currentAccountPicture: Icon(
                Icons.account_circle,
                size: 50.0,
                color: Colors.white,
              ),
            ),
            Expanded(
              flex: 2,
              child: ListView(
                padding: EdgeInsets.zero,
                children: <Widget>[
                  new Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFDB4437).withOpacity(0.25),
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(40.0),
                          topRight: Radius.circular(40.0)),
                    ),
                    child: new ListTile(
                      leading: Icon(Icons.inbox, color: Color(0xFFDB4437)),
                      title: Row(
                        children: [
                          Text(
                            'Primary',
                            style: TextStyle(color: Color(0xFFDB4437)),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 99.0),
                            child: SizedBox(
                              width: 60.0,
                              height: 25.0,
                              child: Container(
                                child: Center(
                                  child: Text(
                                    '99+',
                                    style:
                                        (TextStyle(color: Color(0xFFDB4437))),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.people),
                    title: Row(
                      children: [
                        Text('Social'),
                        Padding(
                          padding: const EdgeInsets.only(left: 99.0),
                          child: SizedBox(
                            width: 70.0,
                            height: 25.0,
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(14.0),
                                  color: Color(0xFF2962FF)),
                              child: Center(
                                child: Text(
                                  '99+ new',
                                  style: (TextStyle(color: Colors.white)),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.local_offer),
                    title: Row(
                      children: [
                        Text('Promotions'),
                        Padding(
                          padding: const EdgeInsets.only(left: 65.0),
                          child: SizedBox(
                            width: 70.0,
                            height: 25.0,
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(14.0),
                                  color: Color(0xFF198039)),
                              child: Center(
                                child: Text(
                                  '99+ new',
                                  style: (TextStyle(color: Colors.white)),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  ListTile(
                    title: Text('ALL LABELS'),
                  ),
                  ListTile(
                    leading: Icon(Icons.star_border),
                    title: Text('Starred'),
                  ),
                  ListTile(
                    leading: Icon(Icons.schedule),
                    title: Text('Snoozed'),
                  ),
                  ListTile(
                    leading: Icon(Icons.label_important),
                    title: Row(
                      children: [
                        Text('Important'),
                        Padding(
                          padding: const EdgeInsets.only(left: 90.0),
                          child: SizedBox(
                            width: 60.0,
                            height: 25.0,
                            child: Container(
                              child: Center(child: Text('70')),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.send),
                    title: Row(
                      children: [
                        Text('Sent'),
                        Padding(
                          padding: const EdgeInsets.only(left: 125.0),
                          child: SizedBox(
                            width: 60.0,
                            height: 25.0,
                            child: Container(
                              child: Center(child: Text('4')),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.insert_drive_file),
                    title: Row(
                      children: [
                        Text('Drafts'),
                        Padding(
                          padding: const EdgeInsets.only(left: 115.0),
                          child: SizedBox(
                            width: 60.0,
                            height: 25.0,
                            child: Container(
                              child: Center(child: Text('38')),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.error_outline),
                    title: Text('Spam'),
                  ),
                  ListTile(
                    leading: Icon(Icons.delete_outline),
                    title: Text('Bin'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.edit),
        backgroundColor: Colors.red,
      ),
      body: ListView.builder(
          itemCount: MailGenerator.mailListLength,
          itemBuilder: (context, position) {
            MailContent mailContent = MailGenerator.getMailContent(position);
            return Column(children: <Widget>[
              Padding(
                padding: EdgeInsets.only(
                    left: 14.0, right: 14.0, top: 5.0, bottom: 5.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.account_circle,
                      size: 55.0,
                      color: Colors.red,
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Column(
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  mailContent.sender,
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black87,
                                      fontSize: 17.0),
                                ),
                                Text(
                                  mailContent.time,
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black54,
                                      fontSize: 13.5),
                                ),
                              ],
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      mailContent.subject,
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          color: Colors.black54,
                                          fontSize: 15.5),
                                    ),
                                    Text(
                                      mailContent.message,
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          color: Colors.black54,
                                          fontSize: 15.5),
                                    )
                                  ],
                                ),
                                Icon(Icons.star_border, size: 25.0),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Divider(),
            ]);
          }),
    );
  }
}

class MailContent {
  String subject;
  String time;
  String sender;
  String message;

  MailContent(this.subject, this.sender, this.time, this.message);
  String getSubject() => this.subject;
  String getSender() => this.sender;
  String getTime() => this.time;
  String getMessage() => this.message;
}

class MailGenerator {
  static var mailList = [
    MailContent("Happy Halloween", "John Doe", "31 Oct",
        "This is a simple demo mail..."),
    MailContent("Happy Halloween", "John Doe", "31 Oct",
        "This is a simple demo mail..."),
  ];
  static MailContent getMailContent(int position) => mailList[position];
  static int mailListLength = mailList.length;
}
