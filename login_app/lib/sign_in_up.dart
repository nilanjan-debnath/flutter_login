import 'package:flutter/material.dart';
import 'package:buttons_tabbar/buttons_tabbar.dart';

class sign_in_up extends StatefulWidget {
  const sign_in_up({super.key});

  @override
  State<sign_in_up> createState() => _sign_in_upState();
}

class _sign_in_upState extends State<sign_in_up> {
  final emailInput = TextEditingController();
  final passwordInput = TextEditingController();
  final passwordConfirm = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    emailInput.dispose();
    passwordInput.dispose();
    passwordConfirm.dispose();
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Welcome"),
      ),
      body: SafeArea(
        child: DefaultTabController(
          length: 2,
          child: Column(
            children: [
              ButtonsTabBar(
                backgroundColor: Colors.blue,
                unselectedBackgroundColor: Colors.grey[300],
                unselectedLabelStyle: TextStyle(color: Colors.black),
                labelStyle:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                tabs: [
                  Tab(
                    icon: Icon(Icons.login),
                    text: "Sign In",
                  ),
                  Tab(
                    icon: Icon(Icons.how_to_reg),
                    text: "Sing Up",
                  ),
                ],
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    SingleChildScrollView(
                      padding: EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                            child: TextFormField(
                              controller: emailInput,
                              decoration: const InputDecoration(
                                border: UnderlineInputBorder(),
                                labelText: 'Enter email id',
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                            child: TextFormField(
                              controller: passwordInput,
                              decoration: const InputDecoration(
                                border: UnderlineInputBorder(),
                                labelText: 'Enter password',
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: FilledButton(
                              onPressed: () {
                                if(!emailInput.text.trim().isEmpty && !passwordInput.text.trim().isEmpty){
                                  print(emailInput.text+"\n"+passwordInput.text);
                                  emailInput.clear();
                                  passwordInput.clear();
                                  passwordConfirm.clear();
                                }else{
                                  print("Enter valid input");
                                }
                              },
                              child: Text('Sign In'),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      padding: EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                            child: TextFormField(
                              controller: emailInput,
                              decoration: const InputDecoration(
                                border: UnderlineInputBorder(),
                                labelText: 'Enter email id',
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                            child: TextFormField(
                              controller: passwordInput,
                              decoration: const InputDecoration(
                                border: UnderlineInputBorder(),
                                labelText: 'Enter password',
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                            child: TextFormField(
                              controller: passwordConfirm,
                              decoration: const InputDecoration(
                                border: UnderlineInputBorder(),
                                labelText: 'Confirm password',
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: FilledButton(
                              onPressed: () {
                                if(!emailInput.text.trim().isEmpty && !passwordInput.text.trim().isEmpty){
                                  if (passwordInput.text == passwordConfirm.text){
                                    print(emailInput.text+"\n"+passwordInput.text);
                                  }else{
                                    print("The passwords don't match");
                                  }
                                }else{
                                  print("Enter valid input");
                                }
                              },
                              child: Text('Sign Up'),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      )
    );
  }
}