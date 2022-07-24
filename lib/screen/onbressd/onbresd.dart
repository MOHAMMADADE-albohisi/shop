import 'package:flutter/material.dart';
import 'package:shop/widgets/on_borading_widgets.dart';
import 'package:shop/widgets/pageview.dart';

class onpresd extends StatefulWidget {
  const onpresd({Key? key}) : super(key: key);

  @override
  State<onpresd> createState() => _onpresdState();
}
class _onpresdState extends State<onpresd> {
  late PageController _page;
  int _pages = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _page = PageController();
  }
  @override
  void dispose() {
    // TODO: implement dispose
    _page.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Align(
              alignment: AlignmentDirectional.topEnd,
              child: Visibility(
                visible: _pages < 2,
                replacement: TextButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/login_screen');
                  },
                  child: const Text('START'),
                ),
                child: TextButton(
                  onPressed: () {
                    _page.animateToPage(2,
                        duration: const Duration(seconds: 1),
                        curve: Curves.easeInOutBack);
                  },
                  child: const Text('SKIP'),
                ),
              ),
            ),
            Expanded(
              child: PageView(
                physics: const BouncingScrollPhysics(),

                controller: _page,
                onPageChanged: (int pages) {
                  setState(() => {
                    _pages = pages,
                  });
                },
                //لتغير اجاه تنقل الصفحة
                // scrollDirection:Axis.vertical ,
                children: const [
                  OnBordaingContent(
                    image: 'image_1',
                    title: 'Welcome !',
                    subtitle:
                    'Now were up in the big leageuse gettingour turn at bat. The Brady Bunch that\'s the we Bardy Bunch',


                  ),
                  OnBordaingContent(
                    image: 'image_3',
                    subtitle:
                    'Now were up in the big leageuse gettingour turn at bat. The Brady Bunch that\'s the we Bardy Bunch',
                    title: 'Add to cart',
                  ),
                  OnBordaingContent(
                    image: 'image_2',
                    title: 'Enjoy Purchase !',
                    subtitle:
                    'Now were up in the big leageuse gettingour turn at bat. The Brady Bunch that\'s the we Bardy Bunch',
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                pageView(marginEnd: 15, colors: _pages == 0),
                pageView(marginEnd: 15, colors: _pages == 1),
                pageView(colors: _pages == 2),
              ],
            ),
            const SizedBox(
                height: 30
            ),
            const SizedBox(height: 25,),
            Visibility(
              visible: _pages == 2,
              maintainAnimation: true,
              maintainSize: true,
              maintainState: true,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Container(
                  width: double.infinity,
                  height: 50,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const[
                      BoxShadow(
                          color: Colors.black38,
                          offset: Offset(0,3),
                          blurRadius: 6
                      )
                    ],
                    gradient: const LinearGradient(
                        colors:[
                          Color(0xFFA6D1E6),
                          Color(0xFF003865),
                        ]
                    ),
                  ),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, '/login_screen');
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.transparent,
                      elevation: 0,
                    ),
                    child: const Text('START'),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 25),

          ],
        ),
      ),
    );
  }
}
