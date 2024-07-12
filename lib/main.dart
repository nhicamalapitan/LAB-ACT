import 'dart:ui';


import 'package:flutter/material.dart';




void main() {
  runApp(MyApp());
}




class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App Dev',
      theme: ThemeData(
        scaffoldBackgroundColor: Color.fromARGB(255, 171, 248, 248),
      ),
      home: MyHomePage(),
    );
  }
}




class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Flutter background demo page',
          style: TextStyle(
            color: const Color.fromARGB(162, 0, 187, 212),
            fontSize: 20.0,
          ),
        ),
      ),
    );
  }
}




class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  final List<Tab> _tabs = [
    Tab(
      icon: Icon(Icons.person, color: Color.fromARGB(255, 0, 255, 234)),
      child: Text('PERSONAL',
          style: TextStyle(color: Color.fromARGB(255, 229, 229, 183))),
    ),
    Tab(
      icon: Icon(Icons.school, color: const Color.fromARGB(255, 0, 255, 234)),
      child: Text('EDUCATION',
          style: TextStyle(color: const Color.fromARGB(255, 229, 229, 183))),
    ),
    Tab(
      icon: Icon(Icons.lightbulb_outline,
          color: Color.fromARGB(255, 0, 255, 234)),
      child: Text('SKILLS',
          style: TextStyle(color: const Color.fromARGB(255, 229, 229, 183))),
    ),
    Tab(
      icon: Icon(Icons.book, color: const Color.fromARGB(255, 0, 255, 234)),
      child: Text('INTERESTS',
          style: TextStyle(color: Color.fromARGB(255, 229, 229, 183))),
    ),
    Tab(
      icon: Icon(Icons.contact_mail, color: Color.fromARGB(255, 0, 255, 234)),
      child: Text('CONTACT INFO',
          style: TextStyle(color: const Color.fromARGB(255, 229, 229, 183))),
    ),
  ];




  late TabController _tabController;




  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: _tabs.length, vsync: this);
  }




  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'MY PORTFOLIO',
          style: TextStyle(color: Color.fromARGB(255, 229, 229, 183)),
        ),
        backgroundColor: Color.fromARGB(197, 44, 54, 53),
        bottom: TabBar(
          controller: _tabController,
          tabs: _tabs,
          indicatorColor: Color.fromARGB(255, 0, 255, 234),
        ),
      ),
      backgroundColor: Color.fromARGB(255, 0, 0, 0),
      body: TabBarView(
        controller: _tabController,
        children: [
          Container(
            margin: EdgeInsets.all(80),
            decoration: BoxDecoration(
              color: Color.fromARGB(197, 44, 54, 53),),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Color.fromARGB(255, 0, 255, 234),
                        width: 3.0,
                      ),
                    ),
                    child: ClipOval(
                      child: Image.asset(
                        'lib/assets/nhica.jpg',
                        fit: BoxFit.cover,
                        width: 150,
                        height: 150,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  DefaultTextStyle(
                    style: TextStyle(
                      color: Colors.black,
                    ),
                    child: Column(
                      children: [
                        DefaultTextStyle(
                          style: TextStyle(
                            color: Color.fromARGB(255, 229, 229, 183),
                            fontSize: 25,
                          ),
                          child: Column(
                            children: [
                              Text('NHICA CLARRISE S. MALAPITAN'),
                            ],
                          ),
                        ),
                        DefaultTextStyle(
                          style: TextStyle(
                            color: Color.fromARGB(255, 0, 255, 234),
                            fontSize: 17,
                          ),
                          child: Column(
                            children: [
                              Text('Future Business Analyst'),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  DefaultTextStyle(
                    style: TextStyle(
                      color: Color.fromARGB(255, 229, 229, 183),
                      fontSize: 18,
                    ),
                    child: Column(
                      children: [
                        Text(' '),
                        Text('22 YEARS OLD'),
                      ],
                    ),
                  ),
                  DefaultTextStyle(
                    style: TextStyle(
                      color: Color.fromARGB(255, 0, 255, 234),
                      fontSize: 13,
                    ),
                    child: Column(
                      children: [
                        Text('AGE '),
                      ],
                    ),
                  ),
                  DefaultTextStyle(
                    style: TextStyle(
                      color: Color.fromARGB(255, 229, 229, 183),
                      fontSize: 18,
                    ),
                    child: Column(
                      children: [
                        Text(' '),
                        Text('CAHILAN II, LEMERY, BATANGAS'),
                      ],
                    ),
                  ),
                  DefaultTextStyle(
                    style: TextStyle(
                      color: Color.fromARGB(255, 0, 255, 234),
                      fontSize: 13,
                    ),
                    child: Column(
                      children: [
                        Text('ADDRESS'),
                      ],
                    ),
                  ),
                  DefaultTextStyle(
                    style: TextStyle(
                      color: Color.fromARGB(255, 229, 229, 183),
                      fontSize: 15,
                    ),
                    child: Column(
                      children: [
                        Text(' '),
                        Text(' '),
                        Text(
                            '"My passion as an inspiring business analyst lies in unraveling the intricacies of data'),
                        Text(
                            'turning insights into strategies that drive success." '),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(margin: EdgeInsets.all(80),
            decoration: BoxDecoration(
              color: Color.fromARGB(197, 44, 54, 53),),
            child: const DefaultTextStyle(
              style: TextStyle(
                color: Colors.black,
              ),
              child: Column(
                children: [
                  DefaultTextStyle(
                    style: TextStyle(
                      color: Color.fromARGB(255, 0, 255, 234),
                      fontSize: 28,
                    ),
                    child: Column(
                      children: [
                        Text(' '),
                        Text(' '),
                        Text('EDUCATIONAL BACKGROUND'),
                      ],
                    ),
                  ),
                  DefaultTextStyle(
                    style: TextStyle(
                      color: Color.fromARGB(255, 0, 255, 234),
                    ),
                    child: Column(
                      children: [
                        Text(' '),
                        Text(' '),
                        Text('COLLEGE: '),
                      ],
                    ),
                  ),
                  DefaultTextStyle(
                    style: TextStyle(
                      color: Color.fromARGB(255, 229, 229, 183),
                      fontSize: 18,
                    ),
                    child: Column(
                      children: [
                        Text('BATANGAS STATE UNIVERSITY - TNEU (ALANGILAN)'),
                        Text('BACHELOR OF SCIENCE IN NFORMATIION TECHNOLOGY'),
                        Text('S.Y. 2020-2025'),
                      ],
                    ),
                  ),
                  DefaultTextStyle(
                    style: TextStyle(
                      color: Color.fromARGB(255, 0, 255, 234),
                    ),
                    child: Column(
                      children: [
                        Text(' '),
                        Text('SENIOR HIGH SCHOOL: '),
                      ],
                    ),
                  ),
                  DefaultTextStyle(
                    style: TextStyle(
                      color: Color.fromARGB(255, 229, 229, 183),
                      fontSize: 18,
                    ),
                    child: Column(
                      children: [
                        Text('LEMERY SENIOR HIGH SCHOOL'),
                        Text('SCIENCE, TECHNOLOGY, ENGINEERING, AND MATHEMATICS'),
                        Text('S.Y. 2018-2020 - WITH HONORS'),
                      ],
                    ),
                  ),
                  DefaultTextStyle(
                    style: TextStyle(
                      color: Color.fromARGB(255, 0, 255, 234),
                    ),
                    child: Column(
                      children: [
                        Text(' '),
                        Text('JUNIOR HIGH SCHOOL: '),
                      ],
                    ),
                  ),
                  DefaultTextStyle(
                    style: TextStyle(
                      color: Color.fromARGB(255, 229, 229, 183),
                      fontSize: 18,
                    ),
                    child: Column(
                      children: [
                        Text(
                            'GOVERNOR FELICIANO LEVISTE MEMORIAL NATIONAL HIGH SCHOOL'),
                        Text('SPECIAL SCIENCE CLASS A'),
                        Text('S.Y. 2014-2018 - WITH HONORS'),
                      ],
                    ),
                  ),
                  DefaultTextStyle(
                    style: TextStyle(
                      color: Color.fromARGB(255, 0, 255, 234),
                    ),
                    child: Column(
                      children: [
                        Text(' '),
                        Text('ELEMENTARY SCHOOL: '),
                      ],
                    ),
                  ),
                  DefaultTextStyle(
                    style: TextStyle(
                      color: Color.fromARGB(255, 229, 229, 183),
                      fontSize: 18,
                    ),
                    child: Column(
                      children: [
                        Text('ESTEBAN . VITO MEMORIAL ELEMENATRY SCHOOL'),
                        Text('KINDERGARTEN - GRADE VI'),
                        Text('S.Y. 2007-2014 - VALEDICTORIAN/SALUTORIAN'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(margin: EdgeInsets.all(80),
            decoration: BoxDecoration(
              color: Color.fromARGB(197, 44, 54, 53),),
            child: const DefaultTextStyle(
              style: TextStyle(
                color: Colors.cyanAccent,
              ),
              child: Column(
                children: [
                  DefaultTextStyle(
                    style: TextStyle(
                      color: Color.fromARGB(255, 0, 255, 234),
                      fontSize: 28,
                    ),
                    child: Column(
                      children: [
                        Text(' '),
                        Text(' '),
                        Text('"My Expertise at Your Service"'),
                      ],
                    ),
                  ),
                  DefaultTextStyle(
                    style: TextStyle(
                      color: Color.fromARGB(255, 0, 255, 234),
                      fontSize: 20,
                    ),
                    child: Column(
                      children: [
                        Text(' '),
                        Text(' '),
                        Text('TECHNICAL SKILLS: '),
                      ],
                    ),
                  ),
                  DefaultTextStyle(
                    style: TextStyle(
                      color: Color.fromARGB(255, 229, 229, 183),
                      fontSize: 15,
                    ),
                    child: Column(
                      children: [
                        Text(' '),
                        Text('Data Visualization'),
                        Text('Business Intelligence Tools'),
                        Text('Data Analysis and Interpretation'),
                        Text('SQL and Database Management'),
                        Text('Excel and Advanced Spreadsheet Functions'),
                      ],
                    ),
                  ),
                  DefaultTextStyle(
                    style: TextStyle(
                      color: Color.fromARGB(255, 0, 255, 234),
                      fontSize: 20,
                    ),
                    child: Column(
                      children: [
                        Text(' '),
                        Text(' '),
                        Text('NON-TECHNICAL SKILLS: '),
                      ],
                    ),
                  ),
                  DefaultTextStyle(
                    style: TextStyle(
                      color: Color.fromARGB(255, 229, 229, 183),
                      fontSize: 15,
                    ),
                    child: Column(
                      children: [
                        Text(' '),
                        Text('Attention to Detail'),
                        Text('Time Management'),
                        Text('Project Management'),
                        Text('Adaptability and Flexibility'),
                        Text('Critical Thinking and Problem Solving'),
                        Text('Communication and Presentation Skills'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(margin: EdgeInsets.all(80),
            decoration: BoxDecoration(
              color: Color.fromARGB(197, 44, 54, 53),),
            child: DefaultTextStyle(
              style: TextStyle(
                color: const Color.fromARGB(255, 0, 255, 234),
                fontSize: 40,
              ),
              child: Column(
                children: [
                  Text(' '),
                  Text(' '),
                  Text(' '),
                  Text(' '),
                  Text('Want to know me more?'),
                  Text(' '),
                  Container(margin: EdgeInsets.symmetric(horizontal: 500),
                    child: DefaultTextStyle(
                      style: TextStyle(
                        color: Color.fromARGB(255, 229, 229, 183),
                        fontSize: 15,
                      ),
                      textAlign: TextAlign.justify,
                      child: Text('As an aspiring business analyst, my professional interests lie in harnessing the power of data to drive strategic decision-making and optimize business processes. I am passionate about analyzing complex data sets to uncover actionable insights that enhance efficiency and foster growth. My goal is to bridge the gap between technology and business, ensuring that data-driven strategies align with organizational objectives. I am particularly interested in leveraging advanced analytical tools and methodologies to solve real-world  business challenges, improve performance, and contribute to the overall success of the organization.',)
                      ),
                    ),
                ],
              ),
            ),
          ),
          Container(margin: EdgeInsets.all(80),
            decoration: BoxDecoration(
              color: Color.fromARGB(197, 44, 54, 53),),
            child: DefaultTextStyle(
              style: TextStyle(
                color: const Color.fromARGB(255, 0, 255, 234),
                fontSize: 25,
              ),
              child: Column(
                children: [
                  Text(' '),
                  Text(' '),
                  Text(' '),
                  Text(' '),
                  Text('For inquiries, contact me on '),
                  DefaultTextStyle(
                    style: TextStyle(
                      color: Color.fromARGB(255, 0, 255, 234),
                    ),
                    child: Column(
                      children: [
                        Text(' '),
                        Icon(Icons.alternate_email, color: Color.fromARGB(255, 0, 255, 234)),
                        Text('G-MAIL: '),
                      ],
                    ),
                  ),
                  DefaultTextStyle(
                    style: TextStyle(
                      color: Color.fromARGB(255, 229, 229, 183),
                      fontSize: 20,
                    ),
                    child: Column(
                      children: [
                        Text('20-05541@g.batstate-u.edu.ph'),
                      ],
                    ),
                  ),
                  DefaultTextStyle(
                    style: TextStyle(
                      color: Color.fromARGB(255, 0, 255, 234),
                    ),
                    child: Column(
                      children: [
                        Text(' '),
                        Icon(Icons.add_call, color: Color.fromARGB(255, 0, 255, 234)),
                        Text('TELEPHONE: '),
                      ],
                    ),
                  ),
                  DefaultTextStyle(
                    style: TextStyle(
                      color: Color.fromARGB(255, 229, 229, 183),
                      fontSize: 20,
                    ),
                    child: Column(
                      children: [
                        Text('+63 926 851 2500'),
                      ],
                    ),
                  ),
                  DefaultTextStyle(
                    style: TextStyle(
                      color: Color.fromARGB(255, 0, 255, 234),
                    ),
                    child: Column(
                      children: [
                        Text(' '),
                        Text(' '),
                        Icon(Icons.facebook, color: Color.fromARGB(255, 0, 255, 234)),
                        Text('FB/MESSENGER: '),
                      ],
                    ),
                  ),
                  DefaultTextStyle(
                    style: TextStyle(
                      color: Color.fromARGB(255, 229, 229, 183),
                      fontSize: 20,
                    ),
                    child: Column(
                      children: [
                        Text('Clarrise Malapitan'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}











