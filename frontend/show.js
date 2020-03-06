const params = new URLSearchParams(document.location.search)
const id = params.get('id')
const navBar = document.querySelector('#nav_bar')
const showPage = document.querySelector('#show_page')
const descriptionBox = document.querySelector('#description_box')
const mapBox = document.querySelector('#map_box')
const statsBox = document.querySelector('#stats_box')
const updateBox = document.querySelector('#update_box')

fetch(`http://localhost:3000/paths/${id}`)
.then(response => response.json())
.then(route => {
    displayTitle(route)
    displayDescription(route)
    displayMap(route)
    displayStats([`Difficulty: ${route.difficulty}`,`${route.distance} miles`,`${route.time} minutes`])  
})
displayUpdateLink()

function displayTitle(route) {
    const title = document.createElement('h1')
    title.innerHTML = `<a href="./index.html"><img id="icon" src="./images/moto_white.png"></a>${route.overview}`
    title.classList.add('title')
    navBar.append(title)
}

function displayDescription(route) {
    const description = document.createElement('p')
    description.innerText = route.description
    descriptionBox.append(description)
}

function displayMap(route) {
    const map = document.createElement('p')
    map.innerHTML = route.url
    mapBox.append(map)
}

function displayStats(stats) {
    const list = document.createElement('ul')
    stats.map(stat => {
        let listItem = document.createElement('li')
        listItem.innerText = stat
        list.appendChild(listItem)
    })
    statsBox.append(list)
}

function displayUpdateLink() {
    updateLink = document.createElement('a')
    updateLink.href = `update.html?id=${id}`
    updateLink.innerHTML = `<button class="button">Update</button>`
    updateBox.append(updateLink)


}