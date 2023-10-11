import React, {useState} from 'react';
import '../css/App.css';
import { fetchNui } from "../utils/fetchNui";
import { useNuiEvent } from "../hooks/useNuiEvent";
import { _T, setTranslations } from "../utils/translation";


const App: React.FC = () => {
    const [show, setShow] = useState<boolean>(false)

    //NUI Hooks
    useNuiEvent<any>('setTranslations', (data) => { 
        setTranslations(JSON.parse(data));
    })

    useNuiEvent<any>('openmenu', (data) => {
        setShow(true);
    })

    const keyHandler = (e: KeyboardEvent) => {
        if (["Escape"].includes(e.code)) { 
            EscapePressed();          
        }
    }

    function EscapePressed() {
        fetchNui<string>('close', {}).then(
            (response) => {
                setShow(false);
            }
        );

    }

    if (!show) return null;
    

    window.addEventListener("keydown", keyHandler)

    return (
        <div className="App">
            
        </div>
    );
}


export default App;

