const startPoint = document.querySelector('#start_point')
const endPoint = document.querySelector('#end_point')
const routeFinderForm = document.querySelector('#route_finder')
const resultsDiv = document.querySelector('#results')
const townOptionsList = []
const BASE_URL="http://localhost:3000"


fetch(`${BASE_URL}/towns`)
.then(response => response.json())
.then(result => result.map( town =>{
    townsList(town, startPoint)
    townsList(town, endPoint)
}))

function townsList(town, point) {
    let option = document.createElement('option')
    option.innerText = town.name
    option.value = town.id
    option.id = town.name
    point.appendChild(option)
}

routeFinderForm.addEventListener('submit', displayRoutes)



function displayRoutes() {
    event.preventDefault()
    resultsDiv.innerHTML=""
    start = startPoint.value
    end = document.querySelector('#end_point option:checked').id
    fetch(`${BASE_URL}/paths?town_id=${startPoint.value}`)
    .then(response => response.json())
    .then(response => response.forEach(displayRouteProperties))
}

function displayRouteProperties(route) {
    if(route.destination == end) {
        div = document.createElement('div')
        div.classList.add('route_card')

        difficultySymbol = document.createElement('img')
        difficultySymbol.id = "difficulty_symbol"
        if (route.difficulty == 'Easy') {
            difficultySymbol.src = './images/easy.png'
        }
        if (route.difficulty == 'Moderate') {
            difficultySymbol.src = './images/moderate.png'
        }
        if (route.difficulty == 'Hard') {
            difficultySymbol.src = './images/hard.jpg'
        }

        h2 = document.createElement('p')
        h2.innerHTML = `<a href="./show.html?id=${route.id}">${route.overview}</a>`
        h2.classList.add('route_title')

        map = document.createElement('p')
        map.innerHTML = route.url
        map.classList.add('map')

        descriptionText = document.createElement('p')
        descriptionText.classList.add('description_text')
        descriptionText.innerText=route.description

        list = document.createElement('ul')
            distanceText = document.createElement('li')
            distanceText.innerText= `${route.distance} miles`

            timeText = document.createElement('li')
            timeText.innerText= `${route.time} minutes`

            difficultyText = document.createElement('li')
            difficultyText.innerText= `Difficulty: ${route.difficulty}`
        list.append(distanceText, timeText, difficultyText)

        table = document.createElement('table')
        table.id = 'route_information_table'
        table.innerHTML = `
                            <TR>
                            <TD width="67%">${route.description}</TD>
                            <TD><UL>
                                <LI>${route.distance} miles</LI>
                                <LI>${route.time} minutes</LI>
                                <LI>Difficulty: ${route.difficulty}</LI>
                                </TD>
                            </TR>`

        h2.prepend(difficultySymbol)
        div.append(h2, map, table)
        resultsDiv.appendChild(div)
    }    
}

