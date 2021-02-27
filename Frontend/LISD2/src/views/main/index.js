//import liraries
import React, { Component } from 'react';
import { View, Text, TouchableOpacity } from 'react-native';


import styles from './styles'
import Header from '../header'

class Main extends Component {
    render() {
        return (
            <View style={styles.view}>
                <Header/>
                <View style={styles.container}>
                    <TouchableOpacity style={styles.card} onPress={()=>{this.props.navigation.navigate('Questions')}}>
                        <Text style={styles.text}>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam lobortis justo a finibus efficitur.</Text>
                    </TouchableOpacity>
                </View>
            </View>
        );
    }
}

export default Main;
