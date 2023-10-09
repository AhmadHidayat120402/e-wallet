import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/ui/widgets/homeLatesTransactionItem.dart';
import 'package:bank_sha/ui/widgets/home_services_item.dart';
import 'package:bank_sha/ui/widgets/home_tips_item.dart';
import 'package:bank_sha/ui/widgets/home_user_item.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightBackgroundColor,
      bottomNavigationBar: BottomAppBar(
        color: whiteColor,
        shape: const CircularNotchedRectangle(),
        clipBehavior: Clip.antiAlias,
        notchMargin: 6,
        elevation: 0,
        child: BottomNavigationBar(
          backgroundColor: whiteColor,
          elevation: 0,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: blueColor,
          unselectedItemColor: blackColor,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          selectedLabelStyle:
              blueTextStyle.copyWith(fontSize: 10, fontWeight: medium),
          unselectedLabelStyle:
              blackTextStyle.copyWith(fontSize: 10, fontWeight: medium),
          items: [
            BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/ic_overview.png',
                  width: 20,
                  color: blueColor,
                ),
                label: "Overview"),
            BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/ic_history.png',
                  width: 20,
                ),
                label: "History"),
            BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/ic_statistic.png',
                  width: 20,
                ),
                label: "Statistic"),
            BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/ic_reward.png',
                  width: 20,
                ),
                label: "Reward"),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: purpleColor,
        onPressed: () {},
        child: Image.asset(
          'assets/ic_plus_circle.png',
          width: 24,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
        ),
        children: [
          buildProfile(),
          buildWalletCard(),
          buildLevel(),
          buildServices(),
          buildLatesTransactions(),
          buildSendAgain(),
          buildFriendlyTips(),
        ],
      ),
    );
  }

  Widget buildProfile() {
    return Container(
      margin: const EdgeInsets.only(
        top: 42,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Howdy,",
                style: greyTextStyle.copyWith(fontSize: 16),
              ),
              const SizedBox(
                height: 2,
              ),
              Text(
                "shaynahan",
                style: blackTextStyle.copyWith(fontSize: 20),
              )
            ],
          ),
          Container(
            width: 60,
            height: 60,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(
                  'assets/img_profile.png',
                ),
              ),
            ),
            child: Align(
              alignment: Alignment.topRight,
              child: Container(
                height: 16,
                width: 16,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: whiteColor,
                ),
                child: Center(
                  child: Icon(
                    Icons.check_circle,
                    color: greenColor,
                    size: 14,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget buildWalletCard() {
    return Container(
      margin: const EdgeInsets.only(top: 32),
      height: 220,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(28),
        image: const DecorationImage(
            image: AssetImage(
              'assets/img_bg_card.png',
            ),
            fit: BoxFit.cover),
      ),
      child: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Shayna Hanna",
              style: whiteTextStyle.copyWith(fontSize: 18, fontWeight: medium),
            ),
            const SizedBox(
              height: 28,
            ),
            Text(
              "**** **** **** 1280",
              style: whiteTextStyle.copyWith(
                  fontSize: 18, fontWeight: medium, letterSpacing: 4),
            ),
            const SizedBox(
              height: 21,
            ),
            Text(
              "Balance",
              style: whiteTextStyle,
            ),
            Text(
              "Rp 12.500",
              style:
                  whiteTextStyle.copyWith(fontSize: 24, fontWeight: semiBold),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildLevel() {
    return Container(
      padding: const EdgeInsets.all(22),
      width: double.infinity,
      margin: const EdgeInsets.only(
        top: 20,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: whiteColor,
      ),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                "Level 1",
                style: blackTextStyle.copyWith(fontWeight: medium),
              ),
              const Spacer(),
              Text(
                "55%",
                style: greenmTextStyle.copyWith(fontWeight: semiBold),
              ),
              Text(
                " of Rp 20.000",
                style: blackTextStyle.copyWith(fontWeight: semiBold),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(55),
            child: LinearProgressIndicator(
              value: 0.55,
              valueColor: AlwaysStoppedAnimation(greenColor),
              backgroundColor: lightBackgroundColor,
              minHeight: 5,
            ),
          ),
        ],
      ),
    );
  }

  Widget buildServices() {
    return Container(
      margin: const EdgeInsets.only(
        top: 30,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Do Something",
            style: blackTextStyle.copyWith(fontSize: 16, fontWeight: semiBold),
          ),
          const SizedBox(
            height: 14,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              HomeServicesItem(
                iconUrl: 'assets/ic_topup.png',
                title: "Top up",
                onTap: () {},
              ),
              HomeServicesItem(
                iconUrl: 'assets/ic_send.png',
                title: "Send",
                onTap: () {},
              ),
              HomeServicesItem(
                iconUrl: 'assets/ic_withdraw.png',
                title: "Withdraw",
                onTap: () {},
              ),
              HomeServicesItem(
                iconUrl: 'assets/ic_more.png',
                title: "More",
                onTap: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildLatesTransactions() {
    return Container(
      margin: const EdgeInsets.only(top: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Latest Transactions",
            style: blackTextStyle.copyWith(fontSize: 16, fontWeight: semiBold),
          ),
          const SizedBox(
            height: 14,
          ),
          Container(
            padding: const EdgeInsets.all(22),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: whiteColor,
            ),
            child: const Column(
              children: [
                HomeLatesTransactionsItem(
                    iconUrl: 'assets/ic_transaction_cat1.png',
                    time: "Yesterday",
                    title: "Top Up",
                    value: "+ 450.000"),
                HomeLatesTransactionsItem(
                    iconUrl: 'assets/ic_transaction_cat2.png',
                    time: "Sep 11",
                    title: "Cashback",
                    value: "+ 22.000"),
                HomeLatesTransactionsItem(
                    iconUrl: 'assets/ic_transaction_cat3.png',
                    time: "Sep 2",
                    title: "Withdraw",
                    value: "- 5.000"),
                HomeLatesTransactionsItem(
                    iconUrl: 'assets/ic_transaction_cat4.png',
                    time: "Aug 27",
                    title: "Transfer",
                    value: "- 123.500"),
                HomeLatesTransactionsItem(
                    iconUrl: 'assets/ic_transaction_cat5.png',
                    time: "Feb 18",
                    title: "Electric",
                    value: "- 12.300.000"),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildSendAgain() {
    return Container(
      margin: const EdgeInsets.only(top: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Send Again",
            style: blackTextStyle.copyWith(fontSize: 16, fontWeight: semiBold),
          ),
          const SizedBox(
            height: 14,
          ),
          const SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                HomeUserItem(
                    imageUrl: 'assets/img_friend1.png', username: "yuanita"),
                HomeUserItem(
                    imageUrl: 'assets/img_friend2.png', username: "jani"),
                HomeUserItem(
                    imageUrl: 'assets/img_friend3.png', username: "urip"),
                HomeUserItem(
                    imageUrl: 'assets/img_friend4.png', username: "masa"),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildFriendlyTips() {
    return Container(
      margin: const EdgeInsets.only(top: 30, bottom: 50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Friendly Tips",
            style: blackTextStyle.copyWith(fontSize: 16, fontWeight: semiBold),
          ),
          const SizedBox(
            height: 14,
          ),
          const Wrap(
            spacing: 15,
            runSpacing: 15,
            children: [
              HomeTipsItem(
                  imageUrl: 'assets/img_tips1.png',
                  title: "Best tips for usinga credit card",
                  url: "https://www.google.com"),
              HomeTipsItem(
                  imageUrl: 'assets/img_tips2.png',
                  title: "Spot the good pie of finance model",
                  url: "https://pub.dev/"),
              HomeTipsItem(
                  imageUrl: 'assets/img_tips3.png',
                  title: "Great hack to get better advices",
                  url: "https://www.google.com"),
              HomeTipsItem(
                  imageUrl: 'assets/img_tips4.png',
                  title: "Save more penny buy this instead ",
                  url: "https://www.google.com"),
            ],
          )
        ],
      ),
    );
  }
}
