let userItems=document.querySelector(".userItems");

function drawProductUi(icons){
    let iconUI=icons.map((item)=>{

        return `
        <div class="innerUsesitem">
                        <a href="medicne.html">
                            <img src=${item.pic}>
                            <p>${item.name}</p>
                        </a>
                    </div>
        `

    })
    userItems.innerHTML=iconUI.join("");   //  جوين عشان يحذف الكوما بسبب الاراي
}
drawProductUi(icons);





let input=document.getElementById("inputSearch");

input.addEventListener("keyup",function(e){
    search(e.target.value,icons);    
    if(e.target.value.trim()==""){
        drawProductUi(icons);

        }
})

function search(name,myArray){
    let arr = myArray.filter((item)=> item.name.toLowerCase().indexOf(name.toLowerCase())!==-1);
    drawProductUi(arr);
}
