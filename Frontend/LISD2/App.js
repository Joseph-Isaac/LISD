import React, { Component } from 'react';
import { View, Text, Image, TouchableOpacity } from 'react-native';

import {createAppContainer, createSwitchNavigator,createNavigator} from 'react-navigation'
//import {createStackNavigator} from '@react-navigation/stack'
  
import Header from './src/views/header'
//import Drawer from './src/views/drawer'
import Main from './src/views/main'
import Questions from './src/views/questions'
import Smash from './src/views/smash'
import Concluse from './src/views/concluse'


const Routes = createSwitchNavigator({
  Smash:{
    screen: Smash,
    navigationOptions:{
      header: null,
    }
  },
  Main:{
    screen: Main,
    navigationOptions:{
      headerTitle: null,
    }
  },
  Questions:{
    screen: Questions,
    navigationOptions:{
      headerTitle: null
    }
  },
  Concluse:{
    screen: Concluse,
    navigationOptions:{
      headerTitle: null
    }
  }
})


/*export default function App() {
  return (  
    <Concluse/>
  );
}*/

export default createAppContainer(Routes)