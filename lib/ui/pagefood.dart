part of 'pages.dart';

class PageFood extends StatefulWidget {
  const PageFood({super.key});

  @override
  State<PageFood> createState() => _PageFoodState();
}

class _PageFoodState extends State<PageFood> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    double listItemWidth = MediaQuery.of(context).size.width - 2 * defaultMargin;

    return ListView(
      children: [
        Column(
          children: [
            //header
            Container(
              padding: EdgeInsets.symmetric(horizontal: defaultMargin),
              color: Colors.white,
              height: 100,
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Food Market", style: blackFontStyle1),
                      Text(
                        "Let's get some Food",
                        style: greyFontStyle.copyWith(fontWeight: FontWeight.w300),
                      )
                    ],
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(image: NetworkImage("https://images.unsplash.com/photo-1575936123452-b67c3203c357?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8aW1hZ2V8ZW58MHx8MHx8fDA%3D"),
                    fit: BoxFit.cover),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}