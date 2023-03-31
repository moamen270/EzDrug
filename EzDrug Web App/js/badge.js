let cartIcon=document.querySelector("header .shoppingCart i")
let badgeDom=document.querySelector(".badge")
function badgeUi(){

    if(JSON.parse(localStorage.getItem("productsInCart")).length===0){
        badgeDom.style.display="none";
    }else{
        badgeDom.style.display="inline-block";
        badgeDom.innerHTML=JSON.parse(localStorage.getItem("productsInCart")).length;
    }
    
    cartIcon.addEventListener("click",function(){
        window.location="cart.html";
    })
}
badgeUi();