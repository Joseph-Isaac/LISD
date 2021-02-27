//import liraries
import React, { Component } from 'react';
import { View, Text, Image, TouchableOpacity } from 'react-native';

import styles from './styles'
import logo from '../../assets/logo.png'
import Header from '../header'

// create a component
class MyClass extends Component {
    render() {
        return (
            <View>
            <Header style={styles.header}/>
            <View style={styles.container}>
                <Image source={logo} style={styles.image}/>
                <TouchableOpacity style={styles.textBox} onPress={()=>{this.props.navigation.navigate('Main')}}>
                    <Text style={styles.text}>Ver situações</Text>
                </TouchableOpacity>
            </View>
            </View>
            
        );
    }
}

//make this component available to the app
export default MyClass;
