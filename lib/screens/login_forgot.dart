import 'package:flutter/material.dart';

class LoginForgot extends StatelessWidget {
  const LoginForgot({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.all(8),
          padding: const EdgeInsets.only(
            left: 18,
            right: 18,
            top: 90,
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(25),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Forgot Password",
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff222222),
                ),
              ),

              const SizedBox(height: 25),

              const TextField(
                decoration: InputDecoration(
                  hintText: "Email or Password",
                  hintStyle: TextStyle(
                    fontSize: 15,
                    color: Colors.grey,
                  ),
                  filled: true,
                  fillColor: Color(0xfff1f1f1),
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 0,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(4)),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),

              const SizedBox(height: 12),

              SizedBox(
                width: double.infinity,
                height: 35,
                child: ElevatedButton(
                  // ✅ O clique do botão fica AQUI
                  onPressed: () {
                    Navigator.pushNamed(context, '/login');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff8965e8),
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  // ✅ O Text tem apenas a String e o Style
                  child: const Text(
                    "Continue",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    ),
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
        borderRadius: BorderRadius.circular(20),
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