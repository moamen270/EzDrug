let user=document.querySelector("#user");
let userInfo=document.querySelector("#user-info");
let links=document.querySelector("#links");
let logOut=document.querySelector("#logOut")

let userName=localStorage.getItem("userName")
if(userName){
    links.remove();
    userInfo.style.display="flex";
    user.innerHTML=userName;
}

logOut.addEventListener("click",function(){
    localStorage.clear();
    setTimeout(()=>{
        window.location="login,register..html"
    },1500)
})
