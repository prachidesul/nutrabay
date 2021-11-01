import 'package:flutter/material.dart';
import 'package:nutrabay/login.dart';
import 'package:nutrabay/register.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required this.items}) : super(key: key);

  final List<BottomNavigationBarItem> items;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool value = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "NUTRABAY",
          style: TextStyle(
              fontSize: 25,
              fontStyle: FontStyle.italic,
              fontFamily: 'RobotoMono',
              fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              'LOGIN / REGISTER ',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Padding(padding: EdgeInsets.only(left: 10.0)),
                Text(
                  'Email or Mobile Number',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ],
            ),

            Container(
              padding: EdgeInsets.only(left: 10, right: 10),
              child: TextField(
                decoration: InputDecoration(border: OutlineInputBorder()),
              ),
            ),

            SizedBox(
              height: 20,
            ),

            Padding(
              padding: const EdgeInsets.all(10.0),
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 100,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (_) => login()));
                    // {
                    //   Navigator.of(context)
                    //       .push(MaterialPageRoute(builder: (_) => Register()));
                    // }
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.orange,
                    onPrimary: Colors.black,
                    padding: EdgeInsets.only(left: 10),
                    fixedSize: const Size(540, 50),
                  ),
                  child: Text(
                    'CONTINUE',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),

            SizedBox(
              height: 20,
            ),

            Divider(
              height: 0.5,
              thickness: 2,
            ),
            //  Container(
            //    height: 50,
            //    width: 100,

            //    decoration: BoxDecoration(image:const AssetImage("assets/images/image.png"),
            //     ),
            //  ),

            SizedBox(
              height: 20,
            ),
            // Image(
            //   image: const AssetImage("assets/images/google.jpg"),
            // ),
             SizedBox(height: 20,), 
                    ElevatedButton(onPressed: () {}, 
                    
                    child: Text("Sign in with Google"
                  
                    
                    
                    
                   
                    )),

            SizedBox(
              height: 20,
            ),

            Text(
                "By continuing, you agree to Nutrabay's terms of Use and Privacy Policy"),
            // Checkbox(
            //   value: checkBoxValue,
            //   onChanged: (boolvalue) {
            //     print(value);
            //     // setState(() {
            //     //   checkBoxValue = value;
            //     // });
            //   },
            // ),

            SizedBox(
              height: 20,
            ),

            Row(
              children: [
                Icon(
                  Icons.check_box,
                  color: Colors.green,
                ),
                Text('Check your past orders'),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Icon(
                  Icons.check_box,
                  color: Colors.green,
                ),
                Text('Track your orders'),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Icon(
                  Icons.check_box,
                  color: Colors.green,
                ),
                Text('Access saved products'),
              ],
            ),
            Expanded(
              child: Container(),
            ),
            Row(
              children: <Widget>[
                SizedBox(
                  width: 40,
                ),
                Text(
                  'Help Center',
                  style: TextStyle(
                    color: Colors.blue,
                  ),
                ),
                Expanded(child: Container()),
                Text(
                  'Terms of Use',
                  style: TextStyle(
                    color: Colors.blue,
                  ),
                ),
                Expanded(child: Container()),
                Text(
                  'Privacy policy',
                  style: TextStyle(
                    color: Colors.blue,
                  ),
                ),
                SizedBox(
                  width: 40,
                ),
              ],
            ),

            SizedBox(
              height: 10,
            ),

            Text(
                "Copyright 2021 Nutrabay.com or its affilates All Rights reserved "),
          ],
        ),

        // ListView(
        //   padding: EdgeInsets.only(left: 10),
        //   children: [
        //     Checkbox(
        //       value: value,
        //      onChanged: (value) => setState(() => this.value =value!),
        //      ),
        //   ],
        // ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.menu), title: Text('menu')),
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('home')),
          BottomNavigationBarItem(
              icon: Icon(Icons.people), title: Text('contact')),
        ],
      ),
    );
  }
}
