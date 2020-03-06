const startPoint = document.querySelector('#start_point')
const endPoint = document.querySelector('#end_point')
const addRouteForm = document.querySelector('#add_route_form')

const BASE_URL = 'http://localhost:3000'

fetch(`${BASE_URL}/towns`)
.then(response => response.json())
.then(towns => towns.map(town => {
    townsList(town, startPoint)
    townsList(town, endPoint)
}))

function townsList(town, point) {
    let option = document.createElement('option')
    if(town == "addTown") {
        option.innerText = "Add New Location"
        option.value = 99
    }
    else {
        option.innerText = town.name
        option.value = town.id
        option.id = town.name
    }
    point.appendChild(option)
}


