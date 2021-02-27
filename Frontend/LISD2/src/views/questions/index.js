//import liraries
import React,  {Component, useState} from 'react';
import { View, Text, Image, TouchableOpacity, CheckBox, ScrollView } from 'react-native';

import styles from './styles'
import Header from '../header'
import next from '../../assets/next.png'

const MyClass = () => {

    const [option, setOption] = useState('')
    

    return (
        //<View navigation={this.props.navigation}/>,
        <View style={styles.view}>
            <Header/>
            <ScrollView>
                <View style={styles.container}>
                    <Text style={styles.principal}>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam lobortis justo a finibus efficitur.<//Text>            
                    
                    <TouchableOpacity 
                        style={ option == 'a'?styles.optionSelected: styles.card} 
                        onPress={()=>option == 'a'?setOption(''):setOption('a')}>
                            <Text style={styles.text}>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam lobortis justo a finibus efficitur.</Text>
                    </TouchableOpacity>

                    <TouchableOpacity 
                        style={ option == 'b'?styles.optionSelected: styles.card} 
                        onPress={()=>option == 'b'?setOption(''):setOption('b')}>
                            <Text style={styles.text}>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam lobortis justo a finibus efficitur.</Text>
                    </TouchableOpacity>
                    
                </View>
            </ScrollView>
            <TouchableOpacity style={styles.img} onPress={()=>{this.props.navigation.navigate('Concluse')}}>
                {option!='' && <Image source={next} style={styles.next} />}
            </TouchableOpacity>
            
            
        </View>
    );

}

export default MyClass;
