import 'package:projects_gallery/coffee_shop/models/menu_item.dart';
import 'package:projects_gallery/coffee_shop/utilities/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SelectCoffeePage extends StatefulWidget {
  @override
  _SelectCoffeePageState createState() => _SelectCoffeePageState();
}

class _SelectCoffeePageState extends State<SelectCoffeePage> {
  List _menuItems = [blackGold, coldBrew, nescafe, mccafe, goldBrew];
  int _selectedMenuItemIndex;

  @override
  void initState() {
    _selectedMenuItemIndex = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double mediaHeight = MediaQuery.of(context).size.height;
    double mediaWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: Icon(
          Icons.menu,
          color: textGrey,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: Icon(
              Icons.shopping_bag,
              color: textGrey,
            ),
          ),
        ],
      ),
      body: Container(
        height: mediaHeight,
        width: mediaWidth,
        child: Row(
          children: [
            Container(
              height: mediaHeight,
              width: mediaWidth / 4,
              // color: backgroundGrey,
              color: Colors.red[100],
              child: Center(
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: _menuItems.length,
                  itemBuilder: (BuildContext context, int index) {
                    return MenuLabel(
                      menuItemIndex: index,
                      coffeeLabel: _menuItems[index].name,
                      selectedMenuItemIndex: _selectedMenuItemIndex,
                    );
                  },
                ),
              ),
            ),
            Container(
              height: mediaHeight,
              width: mediaWidth * 3 / 4,
              // color: backgroundGrey,
              color: Colors.green[100],
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 16.0,
                  top: 16.0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'CoffeeHouse',
                      style: GoogleFonts.bigShouldersText(
                        textStyle: TextStyle(
                          fontSize: 34.0,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 4.0,
                    ),
                    Text(
                      'A lot can happen over coffee',
                      style: GoogleFonts.bigShouldersText(
                        textStyle: TextStyle(
                          fontSize: 14.0,
                          color: textGrey,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      height: 50.0,
                      width: mediaWidth * 0.6,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: textLighterGrey,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(8.0),
                        ),
                      ),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text(
                            'Search...',
                            style: GoogleFonts.bigShouldersText(
                              fontSize: 14.0,
                              color: textLighterGrey,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MenuLabel extends StatelessWidget {
  MenuLabel({
    @required this.menuItemIndex,
    @required this.coffeeLabel,
    @required this.selectedMenuItemIndex,
  });

  int menuItemIndex;
  String coffeeLabel;
  int selectedMenuItemIndex;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: RotatedBox(
        quarterTurns: 3,
        child: Column(
          children: [
            Container(
              height: 12.0,
              width: 12.0,
              decoration: BoxDecoration(
                color: menuItemIndex == selectedMenuItemIndex
                    ? textGrey
                    : Colors.transparent,
                shape: BoxShape.circle,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              coffeeLabel,
              style: GoogleFonts.bigShouldersText(
                textStyle: TextStyle(
                  color: menuItemIndex == selectedMenuItemIndex
                      ? textGrey
                      : textLightGrey,
                  fontSize: 20.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
