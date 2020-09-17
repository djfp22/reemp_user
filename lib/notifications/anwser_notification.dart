import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:reemp_user_app/component/container/outline_container.dart';
import 'package:reemp_user_app/component/container/neon_outline_container.dart';
import 'package:reemp_user_app/component/neon_chip.dart';
import 'package:reemp_user_app/values/assets.dart';
import 'package:reemp_user_app/values/colors.dart';
import 'datebubble.dart';

class AppointmentNotification extends StatelessWidget {
  final AssetImage profilepicture;
  final String reempname;
  final String reempusername;
  final String service;
  final String serviceprice;
  final String appointmentsvg;
  final String pdate;
  final String phour;
  final String pday;
  final String edate;
  final String ehour;
  final String eday;
  final bool canceled;
  const AppointmentNotification({
    this.profilepicture,
    this.reempname = "Carlos C",
    this.reempusername = "@username",
    this.service = "Recorte de encias",
    this.serviceprice = r"$1200",
    this.appointmentsvg,
    this.pdate = "25/09",
    this.phour = "7:15",
    this.pday = "viernes",
    this.edate = "25/09",
    this.ehour = "16:00",
    this.eday = "viernes",
    this.canceled = false,
  });

  void showDirectionDialog(BuildContext context) {
    Get.dialog(
      Dialog(
        child: OutlineContainer(
          padding: EdgeInsets.all(16),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Dirección",
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                  Text(
                    "Kr 44 # 66 Sur - 29",
                    style: TextStyle(color: ReempColors.lightGrey),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Inmueble",
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                  Text(
                    "Torre",
                    style: TextStyle(color: ReempColors.lightGrey),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Bloque/manzana",
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                  Text(
                    "5",
                    style: TextStyle(color: ReempColors.lightGrey),
                  ),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Consultorio/oficina",
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                  Text(
                    "Consultorio 2302",
                    style: TextStyle(color: ReempColors.lightGrey),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Nombre",
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                  Text(
                    "Edificio San Lucas",
                    style: TextStyle(color: ReempColors.lightGrey),
                  ),
                ],
              ),
            ],
          ),
        ),
        backgroundColor: Colors.transparent,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      child: NeonOutlineContainer(
        borderColor: canceled ? Colors.red : ReempColors.neonBlue,
        constrains: BoxConstraints(maxHeight: 500),
        padding: const EdgeInsets.all(12),
        radius: 24,
        blurRadius: 1,
        child: Column(
          children: <Widget>[
            SizedBox(height: 20),
            Stack(
              children: <Widget>[
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Expanded(
                      flex: 3,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: LayoutBuilder(
                          builder: (context, constrains) => Image(
                            image: Images.profileTest3,
                            fit: BoxFit.cover,
                            width: constrains.biggest.width,
                            height: constrains.biggest.width,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 12),
                    Expanded(
                      flex: 7,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Reemper",
                            style: TextStyle(
                              color: ReempColors.lightGrey,
                              fontSize: 16,
                              fontWeight: FontWeight.w100,
                            ),
                          ),
                          Text(
                            reempname,
                            style: TextStyle(
                              color: ReempColors.lightGrey,
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            reempusername,
                            style: TextStyle(
                              color: ReempColors.lightGrey,
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Flexible(
                      flex: 3,
                      child: Row(
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {},
                            child: NeonOutlineContainer(
                              padding: EdgeInsets.all(4),
                              radius: 50,
                              blurRadius: 2,
                              child: GestureDetector(
                                onTap: () {},
                                child: Icon(
                                  Icons.call,
                                  color: ReempColors.neonBlue,
                                  size: 20,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 4),
                          GestureDetector(
                            onTap: () {},
                            child: NeonOutlineContainer(
                              padding: EdgeInsets.all(4),
                              radius: 50,
                              blurRadius: 2,
                              child: GestureDetector(
                                onTap: () {},
                                child: Icon(
                                  Icons.message,
                                  color: ReempColors.neonBlue,
                                  size: 20,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Servicio",
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                    Text(
                      service,
                      style: TextStyle(
                        color: ReempColors.lightGrey,
                        fontSize: 16,
                      ),
                    ),
                    Divider(),
                    Text(
                      "Precio",
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                    Text(
                      serviceprice,
                      style: TextStyle(
                        color: ReempColors.lightGrey,
                        fontSize: 16,
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        GestureDetector(
                          onTap: () {},
                          child: NeonChip(
                            bordercolor: canceled ? Colors.red: ReempColors.neonBlue,
                            text: "Ver mapa",
                          ),
                        ),
                        SizedBox(width: 5),
                        GestureDetector(
                          onTap: () => showDirectionDialog(context),
                          child: FaIcon(
                            FontAwesomeIcons.expandArrowsAlt,
                            color: Colors.grey,
                            size: 16,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    NeonOutlineContainer(
                      borderColor: canceled ? Colors.red : ReempColors.neonBlue,
                      padding: EdgeInsets.all(4),
                      radius: 60,
                      blurRadius: 2,
                      child: GestureDetector(
                        onTap: () {},
                        child: SvgPicture.asset(
                          Images.iconResident,
                          width: 100,
                          height: 100,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Divider(),
            Row(
              children: <Widget>[
                Expanded(
                  child: Column(
                    children: <Widget>[
                      Text(
                        "Fecha de Programación",
                        style: TextStyle(color: Colors.grey, fontSize: 12),
                      ),
                      Divider(height: 8),
                      DateBubble(
                        color: canceled ? Colors.red : ReempColors.neonBlue,
                        active: false,
                        date: pdate,
                        hour: phour,
                        weekDay: pday,
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 100,
                  child: VerticalDivider(
                    thickness: 0.5,
                    width: 10,
                    color: Colors.grey,
                  ),
                ),
                Expanded(
                  child: Column(
                    children: <Widget>[
                      Text(
                        "Fecha de encuentro",
                        style: TextStyle(color: Colors.grey, fontSize: 12),
                      ),
                      Divider(height: 8),
                      DateBubble(
                        color: canceled ? Colors.red : ReempColors.neonBlue,
                        date: edate,
                        hour: ehour,
                        weekDay: eday,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Divider(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Detalles del usuario",
                  style: TextStyle(color: Colors.grey),
                ),
                Divider(height: 5),
                OutlineContainer(
                  rounded: true,
                  radius: 10,
                  padding: EdgeInsets.all(8),
                  constrains:
                  BoxConstraints(minWidth: double.infinity, maxHeight: 100),
                  child: Text(
                    "Tengo ganas de morir ayiuda",
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
