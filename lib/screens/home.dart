import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:frin/pallete.dart';
import 'package:frin/screens/login_screen.dart';
import 'package:frin/widgets/BottomNavigator.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // The Bottom Navigation Bar and it properties
      //bottomNavigationBar: MyBottomNavigator(),
      //The Drawer of the scaffold containing a ListTile ====================
      drawer: Drawer(
        elevation: 16.0,
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.green,
                image: DecorationImage(
                  image: AssetImage('images/logo_frin2.png'),
                    fit: BoxFit.contain
                )

              ),
              child: Text('Menu'),
              ),
            ListTile(
                title: Text('contact us', style: TextStyle(fontSize: 24.0)),
                onTap: () {
                  Navigator.pop(context);
                }),
            ListTile(
                title: Text('About Us', style: TextStyle(fontSize: 24.0)),
                onTap: () {
                  Navigator.pop(context);
                }),
            ListTile(
                title: Text('Website', style: TextStyle(fontSize: 24.0)),
                onTap: () {
                  Navigator.pop(context);
                }),
            ListTile(
                title: Text('faq', style: TextStyle(fontSize: 24.0),),
                onTap: () {
                  Navigator.pop(context);
                }),
          ],
        ),
      ),

        //bottomNavigationBar: ,
        //The AppBar of the scaffold========================================
        appBar: AppBar(
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.logout))
          ],
          //leading: BackButton(onPressed: () {
           // Navigator.pop(context);
         // }),
          title: Text('WELCOME'),
          centerTitle: true,
          elevation: 0.0,
          titleTextStyle: BarText,
          backgroundColor: Colors.lightGreen,
        ),
        backgroundColor: Colors.transparent,
        //Body of the scaffold which contains A Container
        body: Container(
          color: Colors.white,
          child: GridView.count(
            crossAxisCount: 1,
            crossAxisSpacing: 10.0,
            mainAxisSpacing: 10.0,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(30.0, 0.0, 15.0, 100.0),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: ListTile(
                    subtitle: SelectableText(
                      '''FRIN was established as Federal Department of Forestry Research in 1954. The Institute\'s Decree 35 of 1973 and order establishing Research Institute of 1977 changed the status of the Department to an institute being supervised by the Federal Ministry of Environment,but the only Research Institute of the Ministry.''',
                      style: TextStyle(
                        wordSpacing: 4.0,
                        color: Colors.grey,
                        height: 1.0,
                        fontWeight: FontWeight.bold,
                        fontSize: 21.5,
                      ),
                    ),
                    title: SelectableText(
                      'FORESTRY RESEARCH INSTITUTE OF NIGERIA (FRIN)',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 23.0,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30.0, 0.0, 15.0, 80.0),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  color: Colors.white,
                  child: ListTile(
                    subtitle: SelectableText(
                      '''To be the best and foremost research center of excellence with respect to knowledge-based forestry activities as measured by the acquired scientific Breakthroughs in the areas of forest resources, conservation, management and utilization; forestry manpower development and general sustainable environmental Protection ''',
                      style: TextStyle(
                        wordSpacing: 4.0,
                        color: Colors.grey,
                        height: 1.5,
                        fontWeight: FontWeight.bold,
                        fontSize: 18.5,
                      ),
                    ),
                    title: SelectableText(
                      'OUR VISION',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.5,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30.0, 0.0, 15.0, 40.0),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  color: Colors.white,
                  child: ListTile(
                    subtitle: SelectableText(
                      '''Forest Plantation Establishment
Supply of Seeds and Seedlings
Plant Identification
Plant Specimen Collection
Landscaping
Saw Milling
Wood Seasoning (Drying)
Wood Preservation
Furniture Construction
Well Paneling (Drying)
Cane Rat Domestication ''',
                      style: TextStyle(
                        wordSpacing: 4.0,
                        color: Colors.grey,
                        height: 1.5,
                        fontWeight: FontWeight.bold,
                        fontSize: 18.5,
                      ),
                    ),
                    title: SelectableText(
                      'Consultancy Service',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.5,
                      ),
                    ),
                  ),
                ),
              ),
              Column(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('images/dgFRIN.jpg'),
                    radius: 120.0,
                  ),
                  Divider(
                    color: Colors.green,
                    thickness: 1.0,
                  ),
                  Container(
                    height: 150.0,
                    color: Colors.white,
                    child: ListTile(
                        subtitle: Text(
                          '''PROF. Adepoju, Adeshola Olatunde is the Director General, Forestry\n Research Institute of Nigeria (FRIN). He obtained a PhD Degree in Agricultural Economics from Ahmadu Bello University, Zaria in 2002. Dr. Adepoju has served the Nation and \nFRIN in several capacities during his career progression. ''',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        title: Text(
                          'DG FRIN\n Professor Adeshola Adepoju ',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                            fontSize: 18.5,
                          ),
                        )),
                  )
                ],
              ),
            ],
          ),
        ));
  }
}
