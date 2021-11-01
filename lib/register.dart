import 'package:flutter/material.dart';
 
 class Register extends StatefulWidget {
   const Register({ Key? key }) : super(key: key);
 
   @override
   _RegisterState createState() => _RegisterState();
 }
 
 class _RegisterState extends State<Register> {
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
              'REGISTER ',
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
                      'Email',
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
                            
                          
                          ),
                        ),
                      ),
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
                        height: 40,
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
                     height: 40,
                     width: MediaQuery.of(context).size.width * 0.60,
                     child: TextField(
                       decoration: InputDecoration(
                         border: OutlineInputBorder(),
                         labelText: "Enter OTP",
                       ),
                     )
                    
                   ),
                 
               
              
               Container(
                     height: 40,
                     width: MediaQuery.of(context).size.width * .30,
                     child: TextField(
                       decoration: InputDecoration(border: OutlineInputBorder(),
                       labelText: "Resend OTP"),
                     ),
                   )
                 ],
               )
                  ]
              ),
                    ),

                  ]
              ),
     ),
 Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'First Name',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * 100,
                        height: 40,
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                           
                          ),
                        ),
                      ),
                    ),
                  ]
                    ),
               ),

 Padding(
              padding: const EdgeInsets.all(5.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Create New Password',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * 100,
                        height: 40,
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                           suffixIcon: Icon(Icons.remove_red_eye_rounded),
                          ),
                        ),
                      ),
                    ),
                  ]
                    ),
               ),
               

     Padding(
              padding: const EdgeInsets.all(10.0),
              child: SizedBox(
                
                width: MediaQuery.of(context).size.width * 100,
                height: 50,
                
                child: ElevatedButton(
                  onPressed: () {
                    ;
                    
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