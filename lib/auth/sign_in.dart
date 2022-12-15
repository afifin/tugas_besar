import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:provider/provider.dart';
import 'package:tugas_besar/providers/user_provider.dart';
import 'package:tugas_besar/screens/home/home_screens.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  late UserProvider userProvider;
  Future<User?> _googleSignUp() async {
    try {
      final GoogleSignIn _googleSignIn = GoogleSignIn(
        scopes: ['email'],
      );
      final FirebaseAuth _auth = FirebaseAuth.instance;

      final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
      final GoogleSignInAuthentication googleAuth =
          await googleUser!.authentication;

      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

final User? user = (await _auth.signInWithCredential(credential)).user;
if (user!=null) {
  User newUser = user as User;
 //userProvider.addUserData(
   // currentUser: newUser,
    // userEmail: newUser.email,
    // userImage: newUser.photoURL,
    // userName: newUser.displayName,
     //);
} else {
  //Other stuff
}

      return user;
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    userProvider = Provider.of<UserProvider>(context);
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/background.png'),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 400,
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('Sign in to Continue'),
                  Text(
                    'Danusanku',
                    style: TextStyle(
                        fontSize: 50,
                        color: Colors.white,
                        shadows: [
                          BoxShadow(
                              blurRadius: 5,
                              color: Colors.green.shade900,
                              offset: Offset(3, 3))
                        ]),
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height: 35,
                        child: SignInButton(
                          Buttons.Facebook,
                          text: "Sign in with Facebook",
                          onPressed: () {},
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      SignInButton(
                        Buttons.Google,
                        text: "Sign in with Google",
                        onPressed: () {
                          _googleSignUp().then((value) => Navigator.of(context)
                              .pushReplacement(MaterialPageRoute(
                                  builder: (context) => HomeScreen())));
                        },
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        'dengan masuk Anda setuju dengan kami',
                        style: TextStyle(color: Colors.grey[800]),
                      ),
                      Text(
                        'syarat dan kebijakan privasi',
                        style: TextStyle(color: Colors.grey[800]),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
