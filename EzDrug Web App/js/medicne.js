let medicineItems=document.querySelector(".medicineItems");

function drawProductUi(medicne){
    let iconUI=medicne.map((item)=>{

        return `
        <div class="medicineItem">
                <a href="#">
                    <img src="${item.pic}">
                    <p>${item.name}</p>
                    
                </a>
                <div class="medicine-info">
                    <i class="fa-solid fa-star"></i>
                    <i class="fa-solid fa-star"></i>
                    <i class="fa-solid fa-star"></i>
                    <i class="fa-solid fa-star"></i>
                    <i class="fa-regular fa-star"></i>
                    <h3>${item.price}</h3>
            </div>
            <button class="addToCart" onclick="addToCart(${item.id})" type="button">add to cart</button>
            </div>
        `

    })
    medicineItems.innerHTML=iconUI.join("");   //  جوين عشان يحذف الكوما بسبب الاراي
}
drawProductUi(medicne);

let input=document.getElementById("inputSearch");

input.addEventListener("keyup",function(e){
    search(e.target.value,medicne);    
    if(e.target.value.trim()==""){
        drawProductUi(medicne);

        }
})

function search(name,myArray){
    let arr = myArray.filter((item)=> item.name.toLowerCase().indexOf(name.toLowerCase())!==-1);
    drawProductUi(arr);
}

function addToCart(id){
    if(localStorage.getItem("userName")){
        var addItem = localStorage.getItem("productsInCart") ? JSON.parse(localStorage.getItem("productsInCart")) : [];
        
        let medicneCart=medicne.find((item)=>item.id==id);
        let isItemInCart=addItem.find((item)=>item.id==medicneCart.id)
        if(isItemInCart){
            addItem=addItem.map((p)=>{
                if(p.id==medicneCart.id)p.qty+=1
                return p;
            })
        }
        else{

            addItem=[...addItem,medicneCart];
        }
        localStorage.setItem("productsInCart",JSON.stringify(addItem))
        badgeDom.style.display="inline-block";
        badgeDom.innerHTML=addItem.length;

    }
    else{
        window.location="login,register..html";
    }
}