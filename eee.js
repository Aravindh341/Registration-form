// task--->1

/*let text1 ="Aravindh";
let text2 = "Pravin";
let text = text1.concat(text2);
console.log(text);
console.log(text.length);
let arr= [text];
arr[1] = "welcome";
console.log(arr);
console.log(text.charAt(3));
console.log(text.toUpperCase());
console.log(text.split(''));
console.log(text.repeat(3));
console.log(text.slice(1,4))
console.log(text.startsWith('A'));*/


// task-->2

/*let arr = ["Black","Blue","Red","White"];
console.log(arr);
console.log(arr[0].length);
console.log(arr[1].length);
console.log(arr[2].length);
console.log(arr[3].length);
let first = arr[0].charAt(2);
console.log(first);
let secound = arr[1].charAt(2);
console.log(secound);
let third = arr[2].charAt(2);
console.log(third);
let fourth = arr[3].charAt(2);
console.log(fourth);
let check = ["one", "two","three","four","five"];
 first= check[4];
 console.log(first);
 secound= check[3];
 console.log(secound);
 third= check[2];
 console.log(third);
 fourth= check[4];
 console.log(fourth);
let st1 = first.indexOf('a')+1;
 console.log(st1);
 let st2 = secound.indexOf('u')+1
 console.log(st2);
 let st3 = third.indexOf('d')+1;
 console.log(st3);
 let st4 = fourth.indexOf('i')+1;
 console.log(st4);

 let arr1 = [st1,st2,st3,st4];
 console.log(arr1);

 let num = arr1[0]+arr1[1]+arr1[2]+arr1[3];

 console.log(num);*/

// task---->3


//let x = 545 ;
//let y = 565 ;


let x =545;
let first = x;

while (first > 9) {
  let b = 0;
  let c = first.toString();
  for (let i = 0; i < c.length; i++) {
    b += parseInt(c.charAt(i), 10);
  }
  first = b;
}
console.log(first);

let y = 565;
let secound = y;

while (secound > 9) {
  let b = 0;
  let c = secound.toString();
  for (let i = 0; i < c.length; i++) {
    b += parseInt(c.charAt(i), 10);
  }
  secound = b;
}
console.log(secound);

let result = first + secound;

console.log(result);

let z = result;
let third = z;

while (third > 9) {
  let b = 0;
  let c = third.toString();
  for (let i = 0; i < c.length; i++) {
    b += parseInt(c.charAt(i), 10);
  }
  third = b;
}
console.log(third);

let arr = ["a","b","c","d","e","f","g","h","i"];

console.log(arr[third]);
