import 'package:flutter/material.dart';
import 'package:food_app/components/card.dart';
import 'package:food_app/components/category.dart';
import 'package:food_app/components/text.dart';
import 'package:food_app/components/textField.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();
    bool isClicked1 = false;
    bool isClicked2 = true;
    bool isClicked3 = false;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.fromLTRB(20, 50, 20, 10),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MyText(
                    color: Colors.grey.shade900,
                    fontSize: 25,
                    text: 'Let\'s Cook',
                  ),
                  const SizedBox(
                    width: 30,
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              MyTextField(
                controller: controller,
                hintText: 'Search recipe',
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MyText(
                    color: Colors.grey.shade900,
                    fontSize: 20,
                    text: 'Category',
                  ),
                  MyText(
                    color: Colors.grey.shade500,
                    fontSize: 16,
                    text: 'view all',
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isClicked1 = true;
                        isClicked2 = false;
                        isClicked3 = false;
                      });
                    },
                    child: Category(isClicked: isClicked1, text: 'Trending'),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isClicked1 = false;
                        isClicked2 = true;
                        isClicked3 = false;
                      });
                    },
                    child: Category(isClicked: isClicked2, text: 'New'),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isClicked1 = false;
                        isClicked2 = false;
                        isClicked3 = true;
                      });
                    },
                    child: Category(isClicked: isClicked3, text: 'Popular'),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CardF(
                    likes: 201,
                    image: 'lib/assets/friedChiken.jpg',
                    mytext1: const MyText(
                        color: Colors.black,
                        fontSize: 21,
                        text: '     Fried Chiken'),
                    mytext2: MyText(
                        color: Colors.grey.shade500,
                        fontSize: 16,
                        text: 'By Siren'),
                  ),
                  CardF(
                    likes: 201,
                    image: 'lib/assets/tomatoAndGarlicPasta.jpg',
                    mytext1: const MyText(
                        color: Colors.black,
                        fontSize: 21,
                        text: '     Tomato And Garlic Pasta'),
                    mytext2: MyText(
                        color: Colors.grey.shade500,
                        fontSize: 16,
                        text: 'By Amine'),
                  ),
                  CardF(
                    likes: 201,
                    image: 'lib/assets/fragrantChikenRice.jpg',
                    mytext1: const MyText(
                        color: Colors.black,
                        fontSize: 21,
                        text: '     Fried Chiken'),
                    mytext2: MyText(
                        color: Colors.grey.shade500,
                        fontSize: 16,
                        text: 'By Siren'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.orange,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
              color: Colors.orange,
            ),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}
