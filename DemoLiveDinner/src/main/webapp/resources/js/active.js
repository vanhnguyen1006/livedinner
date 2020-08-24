function removeActive() {
        let list = document.querySelectorAll('.nav-item');
        for (let item of list) {
            item.classList.remove('active');
        }
} 

function showMenu() {
	removeActive();
	document.querySelector('#menu').classList.toggle('active');
}
function showHome() {
	removeActive();
	document.querySelector('#home').classList.toggle('active');
}
function showAbout() {
	removeActive();
	document.querySelector('#about').classList.toggle('active');
}