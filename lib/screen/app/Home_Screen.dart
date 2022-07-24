import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shop/widgets/homesscreen.dart';
import 'package:shop/widgets/rollscrol.dart';

class homescreen extends StatefulWidget {
  const homescreen({Key? key}) : super(key: key);

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  late PageController _pageController;
  int _pageview = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController(viewportFraction: 0.5, initialPage: 1);

    @override
    void dispose() {
      // TODO: implement dispose
      _pageController.dispose();
      super.dispose();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          'Home',
          style: GoogleFonts.nunito(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
            },
            icon: Icon(Icons.search_rounded),
            color: Colors.black,
          )
        ],
      ),
      body: ListView(
        children: [
          Row(
            children: const [
              rowscrolle(title: 'womanens'),
              Spacer(),
              rowscrolle(title: 'Handbages'),
              Spacer(),
              rowscrolle(title: 'Boots'),
            ],
          ),
          SizedBox(height: 50),
          ConstrainedBox(
            constraints: BoxConstraints(maxHeight: 150),
            child: PageView.builder(
                itemCount: 3,
                controller: _pageController,
                scrollDirection: Axis.horizontal,
                onPageChanged: (int pageIndex) {},
                itemBuilder: (context, index) {
                  return Card(
                    color: Colors.grey.shade300,
                    child: Image.asset('images/image_4.png'),
                  );
                }),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TabPageSelectorIndicator(
                backgroundColor: _pageview == 1 ? Colors.blue : Colors.grey,
                borderColor: _pageview == 1 ? Colors.blue : Colors.transparent,
                size: 10,
              ),
              TabPageSelectorIndicator(
                backgroundColor: _pageview == 0 ? Colors.blue : Colors.grey,
                borderColor: _pageview == 0 ? Colors.blue : Colors.transparent,
                size: 10,
              ),
              TabPageSelectorIndicator(
                backgroundColor: _pageview == 2 ? Colors.blue : Colors.grey,
                borderColor: _pageview == 2 ? Colors.blue : Colors.transparent,
                size: 10,
              ),
            ],
          ),
          SizedBox(height: 30),
          GridView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemCount: 10,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 30,
                mainAxisExtent: 300,
              ),
              itemBuilder: (context, index) {
                return Container(
                    child: Column(
                      children: [
                        Image.asset('images/image_6.png'),
                        SizedBox(height: 13,),
                        Text(
                          'Hand bages',
                          style: GoogleFonts.nunito(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 13),
                        Text('\$10.0',
                          style: GoogleFonts.nunito(
                            fontSize: 15,
                            color: Colors.black,
                          ),),
                      ],
                    ));
              }),
        ],
      ),
    );
  }
}
