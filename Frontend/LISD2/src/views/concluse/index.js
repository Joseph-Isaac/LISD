//import liraries
import React, { Component } from 'react';
import { View, Text, Image, TouchableOpacity } from 'react-native';

import styles from './styles'
import congratulation from '../../assets/congratulations.png'
import Header from '../header'

// create a component
class MyClass extends Component {
    render() {
        return (
            <View>
            <Header style={styles.header}/>
            <View style={styles.container}>
                <Image source={congratulation} style={styles.image}/>
            </View>
            </View>
            
        );
    }
}

//make this component available to the app
export default MyClass;
