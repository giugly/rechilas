document.getElementById('formulario').addEventListener('submit', function(e) {
    
    e.preventDefault();

    let formulario = new FormData(document.getElementById('formulario'));

    fetch('registrocan.php', {
        method: 'POST',
        body: formulario
    })
    .then(res => res.json())
    .then(data => {
        if(data == 'true') {
            document.getElementById('nombre').value = '';
            document.getElementById('artistx').value = '';
            document.getElementById('genero').value = '';
            document.getElementById('link').value = '';
            window.location.href = "registro-hecho.html";
        } else {
            console.log(data);
        }
    });

});