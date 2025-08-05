import { audiooutput } from 'laboratio-cap-audio-output';

window.testEcho = () => {
    const inputValue = document.getElementById("echoInput").value;
    audiooutput.echo({ value: inputValue })
}
