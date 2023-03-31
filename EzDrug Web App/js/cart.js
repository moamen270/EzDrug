let productsInCart=JSON.parse(localStorage.getItem("productsInCart"));
let cartContent=document.querySelector(".cart-content")
let cart=document.querySelector(".cart");
let noProduct=document.querySelector("#noProduct");
isAnyProducts();
function drawProductUi(productsInCart){
  let productsInCartUI=productsInCart.map((item)=>{
    
    return `
    <div class="cart-item">
    <div class="product">
    <img src="${item.pic}"/>
    <div class="product-detail">
    <p class="name">name : ${item.name}</p>
    <p class="price">price : ${item.price}$</p>
    <span class="remove-item" onclick="removeItem(${item.id})">remove item</span>
    </div>
    </div>
    <div class="qty">
    <input type="number" value="${item.qty}" onchange="quanity(${item.id},event)" class="quantity"/>
    </div>
    <div class="subtotal">
    <p>${item.price*item.qty}$</p>
    </div>
    </div>
    `
    
  })
  cartContent.innerHTML=productsInCartUI.join("");   //  جوين عشان يحذف الكوما بسبب الاراي
  badgeUi();
}
drawProductUi(productsInCart);
updateTotal();









function removeItem (id){
  if(productsInCart){
    var items=JSON.parse(localStorage.getItem("productsInCart"));
    let filterItems = items.filter((item)=>item.id!=id);
    localStorage.setItem("productsInCart",JSON.stringify(filterItems));
    productsInCart=JSON.parse(localStorage.getItem("productsInCart"));
    drawProductUi(filterItems);
    updateTotal();
    isAnyProducts()
  }
}


function quanity(id,event){
  let qty=event.target;
  if(qty.value<=0){
    qty.value=1;
  }
      var items=JSON.parse(localStorage.getItem("productsInCart"));
      let filterItems = items.filter((item)=>{
        if(item.id==id){
          item.qty=qty.value;
        }
        return item;
      });
      localStorage.setItem("productsInCart",JSON.stringify(filterItems));
      productsInCart=JSON.parse(localStorage.getItem("productsInCart"));
      drawProductUi(filterItems);
      updateTotal();
}

function updateTotal() {
  let productsInCart=JSON.parse(localStorage.getItem("productsInCart"));
  let subtotal=0
  productsInCart.map((item)=>{
    subtotal+=item.qty*item.price
    return subtotal;
  });
  let totalDom=document.querySelectorAll(".total-number");
  totalDom[0].innerHTML=subtotal+"$";
  let tax=(Math.ceil(subtotal*150)/1000)
  totalDom[1].innerHTML=tax+"$";
  totalDom[2].innerHTML=(subtotal+tax)+"$";

}

function isAnyProducts(){
  let productsInCart=JSON.parse(localStorage.getItem("productsInCart"));
  if(JSON.parse(localStorage.getItem("productsInCart")).length===0){
    noProduct.style.display="block";
    cart.style.display="none";
  }
  else{
    cart.style.display="block";
    noProduct.style.display="none";
    drawProductUi(productsInCart);
  }

}

// let quantity=document.getElementsByClassName("quantity")

// function quanity(id,event){
//   let qty=event.target;
//       var items=JSON.parse(localStorage.getItem("productsInCart"));
//       let filterItems = items.filter((item)=>item.id!=id);
//       let chosenItem = items.find((item)=>item.id==id);
//       chosenItem.qty=qty.value;
//       filterItems.push(chosenItem);
//       localStorage.setItem("productsInCart",JSON.stringify(filterItems));
//       productsInCart=JSON.parse(localStorage.getItem("productsInCart"));
//       drawProductUi(filterItems);
// }





// function updatePrice(){
//   var cartItems = cartContent.getElementsByClassName ("cart-item");
//   for (var i =0;i< cartItems.length;i++){
//     var total = 0;
//     var cartItem = cartItems[i];
//     var priceElement= cartItem.getElementsByClassName("price");
//     var quantityElement =cartItem.getElementsByClassName("quantity");
//     var price = parseFloat(priceElement.innerText);
//     var quantity = quantityElement.value;
//     total = total + price * quantity;
//     cartItem.getElementsByClassName('.subtotal p').innerText= "$" + total;
//     console.log(total);
//   }
// }




// function updatePrice(){
//   var cartItems = cartContent.getElementsByClassName ("cart-item");
//   for (var i =0;i< cartItems.length;i++){
//     var total=0
//     var cartItem = cartItems[i];
//     products=productsInCart[i]
//     var quantity =cartItem.getElementsByClassName("quantity").value;
//     var price = products.price
//     console.log(products.price);
//     console.log(quantity);
//     total += price * quantity;
//     cartItem.getElementsByClassName('.subtotal p').innerHTML=total;
//     console.log(cartItem.getElementsByClassName('.subtotal p'));
//   }
// }


