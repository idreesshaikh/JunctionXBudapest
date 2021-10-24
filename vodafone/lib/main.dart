import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:introduction_screen/introduction_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  List<PageViewModel> getPages() {
    return [
      PageViewModel(
        title: 'vodafone',
        image: Image.asset('assets/vodafoneIcon1.png',
            width: 225.0, height: 225.0),
        body: 'Together We Can',
        footer: const Text('VodafoneXJunction'),
      ),
      PageViewModel(
          image: Image.asset('assets/vodapet.png', width: 175.0, height: 175.0),
          title: 'VodaPet',
          body:
              'We are introducing you to our VodaPet, a mini-game where you take care of your mobile pet and get free Bonuses everyday!',
          footer: const Text('VodafoneXJunction')),
      PageViewModel(
          image: Image.asset('assets/dataConversion.png',
              width: 175.0, height: 175.0),
          //image: Image.asset()
          title: 'Data Conversion',
          body:
              'Use your current resources and exchange them to any type of data you like! Convert your extra Mobile Data / SMS / Calls / Bonuses to do the items you like.',
          footer: const Text('VodafoneXJunction')),
      PageViewModel(
          image: Image.asset('assets/datatransfer.png',
              width: 150.0, height: 150.0),
          //image: Image.asset()
          title: 'Data Transfer',
          body: 'Lend your data to family and friends in need (up to 500 MB)',
          footer: const Text('VodafoneXJunction')),
      PageViewModel(
          image: Image.asset('assets/complaintsform.png',
              width: 175.0, height: 175.0),
          title: 'Complaints form',
          body:
              'File your comaplaints right onto our app now! Get your issues revolved on the go!',
          footer: const Text('VodafoneXJunction')),
      PageViewModel(
          image: Image.asset('assets/invitefriend.png',
              width: 175.0, height: 175.0),
          title: 'Invite Family & Friends',
          body:
              'Invite your family and friends to Vodafone and get free bonuses! So what are you waiting for start sending invites now.',
          footer: const Text('VodafoneXJunction'))
    ];
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Vodafone',
      home: Scaffold(
        body: IntroductionScreen(
          done: const Text(
            'Done',
            style: TextStyle(fontWeight: FontWeight.w600, color: Colors.black),
          ),
          onDone: () {},
          pages: getPages(),
          globalBackgroundColor: Colors.white,
          showNextButton: true,
          next: const Text('Next'),
          showSkipButton: true,
          skip: const Icon(Icons.skip_next),
          dotsDecorator: DotsDecorator(
              size: const Size.square(10.0),
              activeSize: const Size(20.0, 10.0),
              //activeColor: Colors.accents,
              color: Colors.black,
              spacing: const EdgeInsets.symmetric(horizontal: 3.0),
              activeShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.0))),
        ),
      ),
    );
  }
}
