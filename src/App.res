/*
 * First-Class e High-Order Functions
 * 1. O que é "first-class"?
 * 2. O que são "first-class" functions?
     - Recebem outras funções como argumento
     e/ou
     - Retornam uma outra função
 * 3. O que são "high-order" functions?
 * 4. Exemplos de FCF(first-class functions)
 * 5. Exemplos de HOF(high-order functions)
 * 6. Relação com updates imutáveis em arrays (map, filter e reduce)
 */

let sum = (a, b) => a + b
let sub = (a, b) => a - b

let executeOperation = (a, operation) => operation(a, 1)

executeOperation(5, sum)->ignore // 6
executeOperation(6, sum)->ignore // 5

Js.Global.setTimeout(() => {
  Js.log("Hey...")
}, 5000)->ignore

//

let executeFn = (name, fn) => {
  fn(~message=`Hello ${name}`)
}

executeFn("Alonzo", (~message) => {
  Js.log(message)
})

// Array.map

type person = {name: string, age: int}

let people = [
  {name: "Alonzo", age: 32},
  {name: "Turing", age: 36},
  {name: "Levi", age: 25},
  {name: "Eren", age: 23},
]

let people2 = people->Js.Array2.map(person => person.name)

// Array.filter

let only30 = people->Js.Array2.filter(person => person.age >= 30)

Js.log(people)
Js.log(only30)

@react.component
let make = () => {
  <div className="main-container">
    <h1> {`Hello from ReScript and Vite 😄`->React.string} </h1>
  </div>
}
