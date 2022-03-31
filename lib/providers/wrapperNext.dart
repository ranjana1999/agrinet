import 'package:AgriNet/models/users.dart';
import 'package:AgriNet/providers/profile_data.dart';
import 'package:AgriNet/screens/pages/home.dart';
import 'package:AgriNet/screens/authenticate/authenticate.dart';
import 'package:AgriNet/screens/pages/profile_selection.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../screens/pages/serviceProviderHome.dart';
import '../widget/loading.dart';

class WrapperNext extends StatefulWidget {
  //const nested_tab_bar({Key key}) : super(key: key);

  @override
  _WrapperNextState createState() => _WrapperNextState();
}


class _WrapperNextState extends State<WrapperNext> {

  @override
  void initState() {


    super.initState();
  }




  @override
  Widget build(BuildContext context) {
    final user = Provider.of<Users>(context);
    //return Home();
    //print(user);


    ProfileData profile = Provider.of<ProfileData>(context);

  if(user==null) {
    return Authenticate();
  }else{
    profile.checkIfDocExists(user.uid);
    if (!profile.loading2) {
      if (!profile.userExist) {
        return ProfileSelection();
        //setUserProfile(user.uid,false,false,false,true);
      }
      else {
        profile.fetchFirebaseProfile(user.uid);
        if (!profile.loading) {
          return Home();
        }
        else {
          return Loading();
        }
      }
    } else {
      return Loading();
    }
  }
  }
}