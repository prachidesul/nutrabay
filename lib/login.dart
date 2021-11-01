import 'package:flutter/material.dart';
import 'package:nutrabay/login_otp.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login> {
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
              height: 10,
            ),
            Text(
              'LOGIN ',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Mobile Number',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * 100,
                        height: 50,
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            suffixText: ("change"),
                            prefixIcon: Icon(Icons.phone_android),
                          ),
                        ),
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(left: 10.0, top: 20)),
                    Text(
                      'Password',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * 100,
                        height: 50,
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),

                            suffixIcon: Icon(Icons.remove_red_eye_rounded),
                            // icon: Icon(Icons.remove_red_eye_rounded,
                          ),
                        ),
                      ),
                    ),
                    
                    SizedBox(height: 20,), 
                    ElevatedButton(onPressed: () {}, 
                    
                    child: Text("Forgot Password?" )
                    
                    ),

                    SizedBox(height: 20,), 
                    Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                
                width: MediaQuery.of(context).size.width * 100,
                height: 50,
                
                child: ElevatedButton(
                  onPressed: () {
                   
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.orange,
                    onPrimary: Colors.black,
                    padding: EdgeInsets.only(left:10),
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
           
                  ]),
            ),
             Divider(
              height: 6, thickness:2 ,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: SizedBox(
                
                width: MediaQuery.of(context).size.width * 100,
                height: 50,
                
                child: ElevatedButton(
                  onPressed: () {Navigator.of(context).push(MaterialPageRoute(builder: (_)=> Login_otp()));
                   
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.orange[200],
                    onPrimary: Colors.black,
                    padding: EdgeInsets.only(left:10),
                    fixedSize: const Size(540, 50),
                  ),
                  child: Text(
                    'LOGIN WITH OTP',
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

            Text(
                "By continuing, you agree to Nutrabay's terms of Use and Privacy Policy"),

                SizedBox(
              height: 20,
            ),

            Row(
              children: [
                Icon(
                  Icons.check_box,
                   color: Colors.green,),
                  Text('Check your past orders'),
                
              ],
            ),
            SizedBox(height: 10,),
             Row(
              children: [
                Icon(
                  Icons.check_box,
                   color: Colors.green,),
                  Text('Track your orders'),
                
              ],
            ),
            SizedBox(height: 10,),
             Row(
              children: [
                Icon(
                  Icons.check_box,
                  color: Colors.green,),
                  Text('Access saved products'),
                
              ],
            ),
          ],
          
        ),
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
