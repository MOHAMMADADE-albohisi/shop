import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class loginscreen extends StatefulWidget {
  const loginscreen({Key? key}) : super(key: key);

  @override
  State<loginscreen> createState() => _loginscreenState();
}

class _loginscreenState extends State<loginscreen> {
  late TextEditingController _email;
  late TextEditingController _password;
  late TapGestureRecognizer _click;
  bool _viewpassword = true;
  bool _remember = true;
  String? _emailerror;
  String? _passworderror;

  @override
  void initState() {
    super.initState();
    _email = TextEditingController();
    _password = TextEditingController();
    _click = TapGestureRecognizer();
    _click.onTap = createnewacountclick;
  }

  @override
  void dispose() {
    _email.dispose();
    _password.dispose();
    _click.dispose();
    super.dispose();
  }

  void createnewacountclick() {
    print('test mohamamd');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: AlignmentDirectional.topStart,
                end: AlignmentDirectional.topEnd,
                colors: [
                  Color(0xFFA6D1E6),
                  Color(0xFFFEFBF6),
                ],
              ),
            ),
            child: Container(
              width: 370,
              height: 370,
              decoration: BoxDecoration(
                color: Color(0xFFA0A0A0),
                borderRadius: BorderRadius.circular(30),
                boxShadow: const [
                  BoxShadow(
                    offset: Offset(0, 4),
                    blurRadius: 4,
                    color: Colors.black26,
                  ),
                ],
              ),
              child: Column(
                children: [
                  SizedBox(height: 100),
                  TextField(
                    controller: _email,
                    style: GoogleFonts.nunito(),
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      constraints: BoxConstraints(
                        minHeight: 50,
                        maxHeight: _emailerror == null ? 50 : 75,
                      ),
                      contentPadding: EdgeInsets.symmetric(horizontal: 15),
                      labelText: 'Email ID',
                      labelStyle: GoogleFonts.nunito(),
                      prefixIcon: Icon(Icons.email),
                      errorText: _emailerror,
                      errorStyle: GoogleFonts.nunito(),
                      errorMaxLines: 1,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Colors.grey.shade700,
                          width: 1,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey.shade700,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Colors.red.shade700,
                          width: 1,
                        ),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Colors.red.shade700,
                          width: 1,
                        ),
                      ),
                    ),
                    minLines: null,
                    maxLines: null,
                    expands: true,
                  ),
                  const SizedBox(height: 10),
                  TextField(
                    controller: _password,
                    obscureText: _viewpassword,
                    style: GoogleFonts.nunito(),
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock),
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() => {_viewpassword = !_viewpassword});
                        },
                        icon: Icon(_viewpassword
                            ? Icons.visibility_off
                            : Icons.visibility),
                      ),
                      labelText: 'Password',
                      labelStyle: GoogleFonts.nunito(),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade700),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey.shade700,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Colors.red.shade700,
                          width: 1,
                        ),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Colors.red.shade700,
                          width: 1,
                        ),
                      ),
                      constraints: BoxConstraints(
                        maxHeight: _passworderror == null ? 50 : 75,
                        minHeight: 50,
                      ),
                      contentPadding: EdgeInsets.symmetric(horizontal: 15),
                      errorText: _passworderror,
                      errorStyle: GoogleFonts.nunito(),
                      errorMaxLines: 1,
                    ),
                    maxLines: 1,
                    minLines: 1,
                    expands: false,
                  ),
                  Container(
                    child: Row(
                      children: [
                        IconButton(
                            onPressed: () {
                              setState(() => {_remember = !_remember});
                            },
                            icon: Icon(_remember
                                ? Icons.check_box_outline_blank
                                : Icons.check_box)),
                        Text('rembmer me!'),
                        Spacer(),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'forget Paswwrod?',
                            style:
                                GoogleFonts.nunito(color: Colors.grey.shade700),
                          ),
                        ),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () => performaLogin(),
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFFA0A0A0),
                      onPrimary: Colors.white,
                      elevation: 0,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadiusDirectional.only(
                          bottomEnd: Radius.circular(30),
                          bottomStart: Radius.circular(30),
                        ),
                      ),
                      minimumSize: const Size(double.infinity, 50),
                    ),
                    child: Text('LOGIN'),
                  ),
                ],
              ),
            ),
          ),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: const [
          //     CircleAvatar(
          //       radius: 50,
          //       backgroundImage: NetworkImage(
          //           'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ1j8aJ6bZ5OpcmFnw6eRfLGTbK5MUJqJ_zWFDED6E8Q3DcFZ5nogKplWjIHrtDm4PFTV8&usqp=CAU'),
          //     ),
          //     SizedBox(height: 500), // بعد الصورة عن النص
          //   ],
          // ),
        ],
      ),
    );
  }

  void performaLogin() {
    if (checkData()) {
      login();
    }
  }

  bool checkData() {
    if (_email.text.isNotEmpty && _password.text.isNotEmpty) {
      _controolervalue();
      return true;
    }
    _controolervalue();
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text(
          'Error , enater requirerd data',
        ),
        backgroundColor: Colors.red,
        duration: Duration(seconds: 3),
        dismissDirection: DismissDirection.horizontal,
      ),
    );
    return false;
  }

  void _controolervalue() {
    setState(
      () {
        _emailerror = _email.text.isEmpty ? 'Enter Email adress' : null;
        _passworderror = _password.text.isEmpty ? 'Enater password' : null;
      },
    );
  }

  void login() {
    Navigator.pushReplacementNamed(context, '/home_screen');
  }
}
