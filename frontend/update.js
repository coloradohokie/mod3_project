const params = new URLSearchParams(document.location.search)
const id = params.get('id')

fetch(`http://localhost:3000/paths/${id}`)
.then(response => response.json())
.then(route => { console.log(route)
    displayForm(route)
})

function displayForm(route) {
    form = document.querySelector('form')
    form.setAttribute("action", `http://localhost:3000/paths/${id}`)

    startPoint = document.querySelector('#start_point')
    fetch('http://localhost:3000/towns')
    .then(response => response.json())
    .then(towns =>{towns.map( town => {
        option = document.createElement('option')
        option.value = town.id
        option.innerHTML = town.name
        if (town.id == route.town_id) {option.setAttribute("selected", "selected")}
        startPoint.append(option)
    })
    })

    endPoint = document.querySelector('#end_point')
    fetch('http://localhost:3000/towns')
    .then(response => response.json())
    .then(towns =>{towns.map( town => {
        option = document.createElement('option')
        option.value = town.id
        option.innerHTML = town.name
        if (town.name == route.destination) {option.setAttribute("selected", "selected")}
        endPoint.append(option)
    })
    })

    overview = document.querySelector('#overview')
    overview.value = route.overview
    
    description = document.querySelector('#description')
    description.value = route.description

    difficulty = document.querySelector('#difficulty')
    difficulty.value = route.difficulty

    mapUrl = document.querySelector('#url')
    mapUrl.value = route.url

    distance = document.querySelector('#distance')
    distance.value = route.distance

    time = document.querySelector('#time')
    time.value = route.time
}


