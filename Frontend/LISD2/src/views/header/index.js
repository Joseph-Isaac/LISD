//import liraries
import React, { Component } from 'react';
import { View, Text, Image } from 'react-native';


import styles from './styles'
import logo from '../../assets/logo.png'
import menu from '../../assets/menu.png'

// create a component
class MyClass extends Component {
    render() {
        return (        
            <View style={styles.header}>
                <Text style={styles.text}>Simulador APH</Text>
                <Image style={styles.image} source={logo} />
                <Image style={styles.menu} source={menu} />
            </View>
        );
        
    }
}

//make this component available to the app
export default MyClass;
