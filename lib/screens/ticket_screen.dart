import 'package:booktickets/screens/ticket_view.dart';
import 'package:booktickets/utils/app_info_list.dart';
import 'package:booktickets/utils/app_layout.dart';
import 'package:booktickets/utils/app_styles.dart';
import 'package:booktickets/widgets/column_layout.dart';
import 'package:booktickets/widgets/ticket_tabs.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:barcode_widget/barcode_widget.dart';

import '../widgets/layout_builder_widget.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Stack(children: [
        ListView(
          padding: EdgeInsets.symmetric(
              horizontal: AppLayout.getHeight(20),
              vertical: AppLayout.getHeight(20)),
          children: [
            Gap(AppLayout.getHeight(40)),
            Text(
              "Tickets",
              style: Styles.headLineStyle1,
            ),
            const AppTicketTabs(firstTabs: "Upcoming", secondTabs: "Previous"),
            Gap(AppLayout.getHeight(20)),
            Container(
              padding: EdgeInsets.only(left: AppLayout.getHeight(15)),
              child: TicketView(
                ticket: ticketList[0],
                isColor: true,
              ),
            ),
            SizedBox(
              height: 1,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              color: Colors.white,
              margin: EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      AppColumnLayout(
                        firstText: "Flutter DB",
                        secondText: "Passenger",
                        alignment: CrossAxisAlignment.start,
                        isColor: false,
                      ),
                      AppColumnLayout(
                        firstText: "5221 364869",
                        secondText: "Passport",
                        alignment: CrossAxisAlignment.end,
                        isColor: false,
                      ),
                    ],
                  ),
                  Gap(AppLayout.getHeight(20)),
                  const AppLayoutBuilderWidget(
                    sections: 15,
                    isColor: false,
                    width: 5,
                  ),
                  Gap(AppLayout.getHeight(20)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      AppColumnLayout(
                        firstText: "0055 444 77147",
                        secondText: "Number of E-ticket",
                        alignment: CrossAxisAlignment.start,
                        isColor: false,
                      ),
                      AppColumnLayout(
                        firstText: "B25028",
                        secondText: "Booking Code",
                        alignment: CrossAxisAlignment.end,
                        isColor: false,
                      ),
                    ],
                  ),
                  Gap(AppLayout.getHeight(20)),
                  const AppLayoutBuilderWidget(
                    sections: 15,
                    isColor: false,
                    width: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                "assets/images/visa.png",
                                scale: 11,
                                width: 68,
                              ),
                              Text(
                                " *** 2462",
                                style: Styles.headLineStyle3,
                              )
                            ],
                          ),
                          Gap(5),
                          Text(
                            "Payment method",
                            style: Styles.headLineStyle4,
                          )
                        ],
                      ),
                      AppColumnLayout(
                        firstText: "\$249.99",
                        secondText: "Price",
                        alignment: CrossAxisAlignment.start,
                        isColor: false,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 1,
                  ),
                  Gap(AppLayout.getHeight(20)),
                ],
              ),
            ),

            /* Barcode */
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(AppLayout.getHeight(21)),
                      bottomRight: Radius.circular(AppLayout.getHeight(21)))),
              margin: EdgeInsets.only(
                  left: AppLayout.getHeight(20),
                  right: AppLayout.getHeight(20)),
              padding: EdgeInsets.only(
                  top: AppLayout.getHeight(20),
                  bottom: AppLayout.getHeight(20)),
              child: Container(
                padding:
                    EdgeInsets.symmetric(horizontal: AppLayout.getHeight(15)),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(15)),
                  child: BarcodeWidget(
                    data: 'https://github.com/husniarr',
                    barcode: Barcode.code128(),
                    drawText: false,
                    color: Styles.textColor,
                    width: double.infinity,
                    height: 70,
                  ),
                ),
              ),
            ),
            Gap(AppLayout.getHeight(20)),
            Container(
              padding: EdgeInsets.only(left: AppLayout.getHeight(15)),
              child: TicketView(
                ticket: ticketList[0],
              ),
            ),
          ],
        )
      ]),
    );
  }
}