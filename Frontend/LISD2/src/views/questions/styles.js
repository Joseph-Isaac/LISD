import {StyleSheet} from 'react-native'

const styles = StyleSheet.create({
    view:{
        flex: 1
    },
    container: {
        width: '100%',
        height: '100%',
        padding: 20,
    },
    principal:{
        fontSize: 20,
        textAlign: 'center',
    },
    card: {
        width: '100%',
        height: 100,
        marginTop: 40,
        borderColor: '#ccc',
        borderWidth: 5,
        justifyContent: 'center',
        alignItems: 'center',
    },
    text:{
        fontSize: 16,
        color: '#000',
        padding: 5,
        textAlign: 'justify',
    },
    optionSelected:{
        width: '100%',
        height: 100,
        marginTop: 40,
        borderColor: '#69e781',
        borderWidth: 5,
        justifyContent: 'center',
        alignItems: 'center',
    },
    optionWrong:{
        width: '100%',
        height: 100,
        marginTop: 40,
        borderColor: '#fb5252',
        borderWidth: 5,
        justifyContent: 'center',
        alignItems: 'center',
    },
    next:{
        width: 100,
        height: 100,
    },
    img:{
        width: '100%',
        justifyContent: 'center',
        alignItems: 'center',
        bottom: 10,
    }

});

export default styles