import {StyleSheet} from 'react-native'

const styles = StyleSheet.create({
    container: {
        height: '90%',
        justifyContent: 'center',
        alignItems: 'center',
    },
    header: {
        position: 'absolute',
        top: 10,
        justifyContent: 'flex-start'
    },
    image:{
        width: '60%',
        height: 160,
    },
    textBox:{
        marginTop: 40,
        width: '60%',
        height: 60,
        backgroundColor: '#CB5F5F',
        justifyContent: 'center',
        alignItems: 'center',
    },
    text:{
        //fontFamily: ,
        fontStyle: 'normal',
        //fontWeight: 600,
        fontSize: 20,
        color: '#fff',
    },
});

export default styles