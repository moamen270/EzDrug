const loginText = document.querySelector(".title-text .login");
const loginForm = document.querySelector("form.login");
const loginBtn = document.querySelector("label.login");
const signupBtn = document.querySelector("label.signup");
const signupLink = document.querySelector("form .signup-link a");
signupBtn.onclick = (()=>{
  loginForm.style.marginLeft = "-50%";
  loginText.style.marginLeft = "-50%";
});
loginBtn.onclick = (()=>{
  loginForm.style.marginLeft = "0%";
  loginText.style.marginLeft = "0%";
});
signupLink.onclick = (()=>{
  signupBtn.click();
  return false;
});

let userName=document.querySelector("#userName");
let password=document.querySelector("#password");
let email=document.querySelector("#email");
let signUp=document.querySelector("#signUp");

signUp.addEventListener("click",function(e){
    e.preventDefault();
    if(userName.value=="" || password.value==""|| email.value==""){
        alert("you must fill data");
    }else{
        localStorage.setItem("userName",userName.value);
        localStorage.setItem("password",password.value);
        localStorage.setItem("email",email.value);

        setTimeout(()=>{
            window.location="home.html";
        },1500)
    }
})

let email_s=document.querySelector("#email-s");
let password_s=document.querySelector("#password-s");
let signIn=document.querySelector("#Login");

let getEmail=localStorage.getItem("email");
let getPassword=localStorage.getItem("password");

Login.addEventListener("click",function(e){
    e.preventDefault();
    if(email_s.value=="" || password_s.value==""){
        alert("you must fill data");
    }
    else{
        if(getEmail &&
          getEmail.trim()==email_s.value.trim() &&
            getPassword &&
            getPassword.trim()==password_s.value.trim()
            ){

        setTimeout(()=>{
            window.location="home.html";
        },1500)
    }
    else{
        alert("password or user name is wrong");
    }
    }
})