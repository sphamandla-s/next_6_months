import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Hello, Sphamandla',
                    style: TextStyle(fontSize: 25.0),
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.green,
                  )
                ],
              ),
              Expanded(
                child: GridView(
                    gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                        maxCrossAxisExtent: 200,
                        childAspectRatio: 2 / 2.8,
                        crossAxisSpacing: 15,
                        mainAxisSpacing: 15), children: [
                  habitCard('Drink water', '+8 Glasses', 'images/Bottle_of_water_amico.png'),
                  habitCard('Early Morning', '>5 Am', 'images/Early_morning_pana.png'),
                  habitCard('Writing', '', 'images/Poetry_rafiki.png'),
                  habitCard('Walking', '30 Minutes', 'images/Through_the_park_amico.png'),
                  habitCard('Meditation', '30 Minutes', 'images/Peace.png'),
                  habitCard('Read', '+10 Pages', 'images/Sleeping.png'),
                  habitCard('Sleep', 'Early', 'images/Sleeping.png')
                ],),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget habitCard(String label, String frequency, String assetName) {
    return Container(
      decoration: BoxDecoration(
           borderRadius: BorderRadius.circular(15.0)),
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
         Image(image: AssetImage(assetName), fit: BoxFit.cover,),
          Text(label),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [const Text('Daily'), Text(frequency)],
          )
        ],
      ),
    );
  }
}
