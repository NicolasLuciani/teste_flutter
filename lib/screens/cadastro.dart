import 'package:flutter/material.dart';

class CreateAccount extends StatelessWidget {
  const CreateAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        backgroundColor: Colors.white,
      ),

      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.all(8),

          padding: const EdgeInsets.only(
            left: 18,
            right: 18,
            top: 40,
          ),

          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(25),
          ),


          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [

              const Text(
                "Create Account",
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff222222),
                ),
              ),


              const SizedBox(height: 25),


              TextField(

                decoration: InputDecoration(

                  hintText: "Firstname",

                  hintStyle: const TextStyle(
                    fontSize: 15,
                    color: Colors.grey,
                  ),


                  filled: true,

                  fillColor: const Color(0xfff1f1f1),


                  contentPadding:
                      const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 0,
                      ),


                  border: OutlineInputBorder(

                    borderRadius:
                        BorderRadius.circular(4),

                    borderSide:
                        BorderSide.none,
                  ),
                ),
              ),

              const SizedBox(height: 12),

              TextField(

                decoration: InputDecoration(

                  hintText: "Lastname",

                  hintStyle: const TextStyle(
                    fontSize: 15,
                    color: Colors.grey,
                  ),


                  filled: true,

                  fillColor: const Color(0xfff1f1f1),


                  contentPadding:
                      const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 0,
                      ),


                  border: OutlineInputBorder(

                    borderRadius:
                        BorderRadius.circular(4),

                    borderSide:
                        BorderSide.none,
                  ),
                ),
              ),

              const SizedBox(height: 12),

              TextField(

                decoration: InputDecoration(

                  hintText: "Email Address",

                  hintStyle: const TextStyle(
                    fontSize: 15,
                    color: Colors.grey,
                  ),


                  filled: true,

                  fillColor: const Color(0xfff1f1f1),


                  contentPadding:
                      const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 0,
                      ),


                  border: OutlineInputBorder(

                    borderRadius:
                        BorderRadius.circular(4),

                    borderSide:
                        BorderSide.none,
                  ),
                ),
              ),

              const SizedBox(height: 12),

              TextField(

                decoration: InputDecoration(

                  hintText: "Password",

                  hintStyle: const TextStyle(
                    fontSize: 15,
                    color: Colors.grey,
                  ),


                  filled: true,

                  fillColor: const Color(0xfff1f1f1),


                  contentPadding:
                      const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 0,
                      ),


                  border: OutlineInputBorder(

                    borderRadius:
                        BorderRadius.circular(4),

                    borderSide:
                        BorderSide.none,
                  ),
                ),
              ),


              const SizedBox(height: 30),


              SizedBox(

                width: double.infinity,

                height: 35,


                child: ElevatedButton(

                  onPressed: () {
                    Navigator.pushNamed(context, '/home');
                  },


                  style: ElevatedButton.styleFrom(

                    backgroundColor:
                        const Color(0xff8965e8),


                    elevation: 0,


                    shape: RoundedRectangleBorder(

                      borderRadius:
                          BorderRadius.circular(20),

                    ),
                  ),


                  child: const Text(

                    "Continue",

                    style: TextStyle(

                      color: Colors.white,

                      fontSize: 12,

                    ),
                  ),
                ),
              ),


              const SizedBox(height: 12),


              RichText(

                text: const TextSpan(

                  style: TextStyle(

                    color: Colors.black,

                    fontSize: 15,

                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}



class SocialButton extends StatelessWidget {

  final IconData icon;
  final String text;


  const SocialButton({

    super.key,

    required this.icon,

    required this.text,

  });



  @override
  Widget build(BuildContext context) {

    return Container(

      width: double.infinity,

      height: 50,


      decoration: BoxDecoration(

        color: const Color(0xfff1f1f1),

        borderRadius:
            BorderRadius.circular(20),

      ),


      child: Row(

        children: [


          const SizedBox(width: 18),


          Icon(

            icon,

            size: 30,

            color: Colors.black,

          ),


          Expanded(

            child: Center(

              child: Text(

                text,

                style: const TextStyle(

                  fontSize: 12,

                  color: Colors.black,

                ),

              ),

            ),

          ),

        ],
      ),
    );
  }
}