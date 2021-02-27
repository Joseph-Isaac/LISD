import {StyleSheet} from 'react-native'

const styles = StyleSheet.create({
    
    superHeader:{
        width:'100%',
        height: 15,
        backgroundColor: '#325987',
    },
    header:{
        width:'100%',
        height: 70,
        backgroundColor: '#325987',
        alignItems:'center',
        justifyContent: 'center',
        
    },
    text:{
        color: '#fff',
        fontWeight: 'bold',
        fontSize: 20
    },
    image:{
        height: 43.2,
        width: 58.1,
        position: 'absolute',
        left: 10
    },
    menu:{
        height: 35,
        width: 45,
        position: 'absolute',
        right: 10
    },
    
});

export default styles;