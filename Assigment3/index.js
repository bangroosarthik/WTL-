let string="";
let buttons=document.querySelectorAll('.button');
Array.from(buttons).forEach((button)=>{
    button.addEventListener('click',(e)=>{
        if(e.target.innerHTML=='='){
            string =eval(string);
            document.querySelector('input').value=string;    
        }
        else if(e.target.innerHTML=='C'){
            string ="";
            document.querySelector('input').value=string;    
        }
        else{
            console.log('');
            string=string+e.target.innerHTML;
            document.querySelector('input').value=string;
        }
        
        
    })
})

// let a=document.querySelector('#button');

// console.log(a.innerHTML);


function erase(){
    string=string.slice(0,string.length-1);
    document.querySelector('input').value=string;    
}