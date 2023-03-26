
document.getElementById("wel").innerHTML = 'Welcome  ' + localStorage.getItem("fn");

document.getElementById("em").innerHTML = localStorage.getItem("email");

document.getElementById("fna").innerHTML = localStorage.getItem("fn");

document.getElementById("cou").innerHTML = localStorage.getItem("ct");

document.getElementById("dat").innerHTML = localStorage.getItem("birth");

function dbl() {
    window.location.href = 'page.html';
  }

  function reg() {
    let email = document.getElementById('email');
    let passw = document.getElementById('password');
    let fn = document.getElementById('fname');
    let ct = document.getElementById('country');
    let birth = document.getElementById('bdate');
   
    checkEmpty()
      
    function adding() {
            localStorage.setItem('fn', fn.value);
            localStorage.setItem('ct', ct.value);

            localStorage.setItem('email', email.value);
            localStorage.setItem('passw', passw.value);
        
            localStorage.setItem('birth', birth.value);
            alert("Your account has been created");
            redirectTo('login.html')
    }

}
function redirectTo(url) {
    window.location.href = url;
}

function sign() {
    window.location.href = 'login.html';
}


function sign() {
    let uEmail = localStorage.getItem('email');
    let uPassword = localStorage.getItem('passw');

    let userE = document.getElementById('uE');
    let userP = document.getElementById('uP');

    const usData = userE.value;
    const usPass = userP.value
    
    function checkDatas (){
        if (usData == uEmail && usPass == uPassword) {
            alert('You are logged in');
            dbl();
          } 
          else {
            console.log('INVALID!')
          }
    }
    
    btn.addEventListener('click',checkDatas());
  }

  document.getElementById("butname").innerHTML = localStorage.getItem("fn");
  function out(){
      window.location.href = 'register.html';
  }
