import 'package:flutter/material.dart';
import 'package:nutrabay/register.dart';

class Login_otp extends StatefulWidget {
  Login_otp({Key? key}) : super(key: key);

  @override
  _Login_otpState createState() => _Login_otpState();
}

class _Login_otpState extends State<Login_otp> {
  
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
                Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * 100,
                        height: 50,
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            prefixIcon: Icon(Icons.check_box,
                            color: Colors.green,),
                           labelText: "OTP Sent: You'll receive an OTP on your Mobile Number & the associated Email Id for verfication"
                          ),
                        ),
                      ),
                      
                    
                
               ),
               SizedBox(height: 10,),
               Row(
                 children: [
                   Container(
                     height: 50,
                     width: MediaQuery.of(context).size.width * 0.60,
                     child: TextField(
                       decoration: InputDecoration(
                         border: OutlineInputBorder(),
                         labelText: "Enter OTP",
                       ),
                     )
                    
                   ),

                   Container(
                     height: 50,
                     width: MediaQuery.of(context).size.width * 0.30,
                     child: TextField(
                       decoration: InputDecoration(border: OutlineInputBorder(),
                       labelText: "Resend OTP"),
                     ),
                   )
                 ],
               ),
               Padding(
              padding: const EdgeInsets.all(10.0),
              child: SizedBox(
                
                width: MediaQuery.of(context).size.width * 100,
                height: 50,
                
                child: ElevatedButton(
                  onPressed: () {
                     Navigator.of(context)
                          .push(MaterialPageRoute(builder: (_) => Register()));
                    
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
              
            SizedBox(
              height: 20,
            ),
                  
            Text(
                "By continuing, you agree to Nutrabay's terms of Use and Privacy Policy"),

                  ]
                  ),
            ),
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
                  
          ]      
              
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