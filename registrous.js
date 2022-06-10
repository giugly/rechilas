document.getElementById('formus').addEventListener('submit', function(e) {
    
    e.preventDefault();

    let formus = new FormData(document.getElementById('formus'));

    fetch('registrous.php', {
        method: 'POST',
        body: formus
    })
    .then(res => res.json())
    .then(data => {
        if(data == 'true') {
            document.getElementById('correo').value = '';
            document.getElementById('usuario').value = '';
            document.getElementById('contra').value = '';
            
            window.location.href = "registradx.html";
        } else {
            console.log(data);
        }
    });

});