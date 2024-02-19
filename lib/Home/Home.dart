import 'dart:ui';
import 'package:dropdown_model_list/dropdown_model_list.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:kvpn/Ads/ads.dart';
import 'package:kvpn/Home/bloc/home_bloc.dart';
import 'package:kvpn/Utils/data.dart';
import 'package:kvpn/Utils/model.dart';
import 'package:kvpn/Utils/vpnstate.dart';
import 'package:openvpn_flutter/openvpn_flutter.dart';

HomeBloc homeBloc = HomeBloc();
Ads ad = Ads();
Data dt = Data();
Vpnutils vpn = Vpnutils();

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Model? server;
  List<Model> servers = dt.fromJson(dt.jsondata);
  DropListModel dropListModel = DropListModel(dt.options());
  OptionItem optionItemSelected = OptionItem(title: "Select Server");
  late OpenVPN engine;
  VpnStatus? status;
  VPNStage? stage;

  @override
  void initState() {
    ad.createInterstitialAd();
    engine = OpenVPN(
      onVpnStatusChanged: (data) {
        setState(() {
          status = data;
        });
      },
      onVpnStageChanged: (data, raw) {
        setState(() {
          stage = data;
        });
      },
    );

    engine.initialize(
      groupIdentifier: "com.creadv.kvpn",
      providerBundleIdentifier:
          "id.laskarmedia.openvpnFlutterExample.VPNExtension",
      localizedDescription: "kvpn",
      lastStage: (stage) {
        setState(() {
          this.stage = stage;
        });
      },
      lastStatus: (status) {
        setState(() {
          this.status = status;
        });
      },
    );
    engine.requestPermissionAndroid();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        decoration: BoxDecoration(color: const Color.fromARGB(255, 50, 50, 50)),
      ),
      Center(
        child: Image.asset(
          "img/map.png",
          fit: BoxFit.cover,
        ),
      ),
      Scaffold(
        backgroundColor: const Color.fromARGB(255, 50, 50, 50).withOpacity(0.8),
        //backgroundColor: Colors.teal[900]!.withOpacity(0.8),
        extendBodyBehindAppBar: true,
        appBar: PreferredSize(
          child: ClipRRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
              child: AppBar(
                backgroundColor: Colors.black.withOpacity(0.2),
                title: Text(
                  'CosteVPN',
                  style: TextStyle(
                      color: const Color.fromARGB(255, 3, 237, 11),
                      fontFamily: 'abstrkt'),
                ),
                elevation: 0.0,
              ),
            ),
          ),
          preferredSize: Size(
            double.infinity,
            56.0,
          ),
        ),
        body: SafeArea(
          child: Stack(
            children: [
              SelectDropList(
                containerDecoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey[800]),
                dropboxColor: Colors.transparent,
                dropboxborderColor: Colors.transparent,
                itemSelected: optionItemSelected,
                dropListModel: dropListModel,
                showIcon: true, // Show Icon in DropDown Title
                showArrowIcon: true,
                textColorItem: const Color.fromARGB(255, 3, 237, 11),
                textColorTitle: const Color.fromARGB(255, 3, 237, 11),
                arrowColor: const Color.fromARGB(
                    255, 3, 237, 11), // Show Arrow Icon in DropDown
                showBorder: true,
                borderColor: const Color.fromARGB(255, 3, 237, 11),
                paddingTop: 0,
                icon: const Icon(Icons.cloud,
                    color: const Color.fromARGB(255, 3, 237, 11)),
                onOptionSelected: (optionItem) {
                  optionItemSelected = optionItem;
                  setState(() {
                    server = servers[int.parse(optionItem.id.toString()) - 1];
                    homeBloc.add(Stop(engine: engine));
                    homeBloc.add(Start(engine: engine, model: server!));
                    ad.showInterstitialAd();
                  });
                },
              ),
              Center(
                child: Wrap(
                    crossAxisAlignment: WrapCrossAlignment.center,
                    direction: Axis.vertical,
                    alignment: WrapAlignment.center,
                    children: [
                      StateButton(),
                      SizedBox(
                        height: 5,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Wrap(
                        direction: Axis.horizontal,
                        children: [
                          Text(
                            'Duration: ',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontFamily: 'abstrkt'),
                          ),
                          Text(
                            status?.toJson()['duration'] ?? '00:00:00',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontFamily: 'abstrkt'),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Wrap(
                        direction: Axis.horizontal,
                        children: [
                          Text(
                            'Status: ',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontFamily: 'abstrkt'),
                          ),
                          Text(
                            vpn.vpnstate(stage?.toString() ??
                                VPNStage.disconnected.toString()),
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontFamily: 'abstrkt'),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Wrap(
                        crossAxisAlignment: WrapCrossAlignment.center,
                        children: [
                          Column(
                            children: [
                              Text('Download',
                                  style: TextStyle(
                                      color:
                                          const Color.fromARGB(255, 3, 237, 11),
                                      fontSize: 15,
                                      fontFamily: 'abstrkt')),
                              Text(
                                  vpn.formatBytes(
                                      int.parse(status?.toJson()['byte_in']),
                                      0),
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontFamily: 'abstrkt')),
                            ],
                          ),
                          SizedBox(
                            width: 3,
                          ),
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              boxShadow: [
                                BoxShadow(
                                  color: const Color.fromARGB(255, 3, 237, 11),
                                  blurRadius: 15,
                                ),
                              ],
                              color: const Color.fromARGB(255, 3, 237, 11),
                            ),
                            child: Center(
                              child: Icon(
                                Icons.arrow_downward_outlined,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 100,
                          ),
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              boxShadow: [
                                BoxShadow(
                                  color: Color.fromARGB(255, 237, 3, 3),
                                  blurRadius: 15,
                                ),
                              ],
                              color: Color.fromARGB(255, 237, 3, 3),
                            ),
                            child: Center(
                              child: Icon(
                                Icons.arrow_upward_outlined,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 3,
                          ),
                          Column(
                            children: [
                              Text('Upload',
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 237, 3, 3),
                                      fontSize: 15,
                                      fontFamily: 'abstrkt')),
                              Text(
                                  vpn.formatBytes(
                                      int.parse(status?.toJson()['byte_out']),
                                      0),
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontFamily: 'abstrkt')),
                            ],
                          ),
                        ],
                      ),
                    ]),
              ),
            ],
          ),
        ),
      )
    ]);
  }

  Widget StateButton() {
    if (vpn.vpnstate(stage?.toString() ?? VPNStage.disconnected.toString()) ==
        'Disconnected') {
      /// any other task
      return InkWell(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onTap: () {
          if (server != null) {
            homeBloc.add(Start(
              model: server!,
              engine: engine,
            ));
            ad.showInterstitialAd();
          } else {
            Fluttertoast.showToast(
                msg: "Please select a server",
                toastLength: Toast.LENGTH_SHORT,
                gravity: ToastGravity.CENTER,
                timeInSecForIosWeb: 1,
                backgroundColor: Color.fromARGB(255, 50, 50, 50),
                textColor: const Color.fromARGB(255, 3, 237, 11),
                fontSize: 16.0);
          }
        },
        child: Container(
          alignment: Alignment.center,
          width: 100.0,
          height: 100.0,
          child: Text(
            'Connect',
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontFamily: 'abstrkt'),
          ),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: const Color.fromARGB(255, 3, 237, 11),
                blurRadius: 30,
              ),
            ],
            color: const Color.fromARGB(255, 3, 237, 11),
            shape: BoxShape.circle,
          ),
        ),
      );
    } else if (vpn
            .vpnstate(stage?.toString() ?? VPNStage.disconnected.toString()) ==
        'Connected') {
      return InkWell(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onTap: () {
          homeBloc.add(Stop(engine: engine));
          ad.showInterstitialAd();
        },
        child: Container(
          alignment: Alignment.center,
          width: 100.0,
          height: 100.0,
          child: Text(
            'Stop',
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontFamily: 'abstrkt'),
          ),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Color.fromARGB(255, 237, 3, 3),
                blurRadius: 30,
              ),
            ],
            color: Color.fromARGB(255, 237, 3, 3),
            shape: BoxShape.circle,
          ),
        ),
      );
    } else if (vpn
            .vpnstate(stage?.toString() ?? VPNStage.disconnected.toString()) ==
        'Authenticating') {
      return InkWell(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onTap: () {
          homeBloc.add(Stop(engine: engine));
        },
        child: Container(
          alignment: Alignment.center,
          width: 100.0,
          height: 100.0,
          child: Text(
            'Connecting',
            style: TextStyle(
                color: Colors.white, fontSize: 15, fontFamily: 'abstrkt'),
          ),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Color.fromARGB(255, 237, 128, 3),
                blurRadius: 30,
              ),
            ],
            color: Color.fromARGB(255, 237, 128, 3),
            shape: BoxShape.circle,
          ),
        ),
      );
    } else {
      return SizedBox();
    }
  }
}
