// Firebase config
var config = {
    apiKey: "AIzaSyAPKqSS7V9aSDRqoFDjEuHYtTmWQ6kf9KA",
    authDomain: "fable-farm.firebaseapp.com",
    databaseURL: "https://fable-farm.firebaseio.com",
    projectId: "fable-farm",
    storageBucket: "",
    messagingSenderId: "759325583688"
  };
// Initialize Firebase
firebase.initializeApp(config);

// Make a connection to the Firebase realtime database
const database = firebase.database()
const auth = firebase.auth()

// Access the values from the html sign up and log in form
const loginForm = document.getElementById('login')
const loginEmail = document.getElementById('login-email')
const loginPassword = document.getElementById('login-password')
/* const loginButton = document.getElementById('login-button') */

const signUpForm = document.getElementById('sign-up')
const signUpEmail = document.getElementById('sign-up-email')
const signUpPassword= document.getElementById('sign-up-password')
/* const signUpButton = document.getElementById('sign-up-button') */

const logoutButton = document.getElementById('logout-button')

const status = document.getElementById('status')
const errors = document.getElementById('errors')

const accountForm = document.getElementById('accountForm')
const toDoList = document.getElementById('to-do-list')

// Log in
loginForm.addEventListener('click', e => {
  console.log('log in was clicked');
  e.preventDefault()
  const email = loginEmail.value
  const pass = loginPassword.value
  const promise = auth.signInWithEmailAndPassword(email, pass)
  promise.catch(e =>  displayError(e.message))
})

// Sign up
signUpForm.addEventListener('click', e => {
  console.log('sign up was clicked');
  e.preventDefault()
  const email = signUpEmail.value
  const pass = signUpPassword.value
  const promise = auth.createUserWithEmailAndPassword(email, pass)
  promise.catch(e => displayError(e.message))
})

// Log out
logoutButton.addEventListener('click', () => {
  console.log("Log out was clicked")
  auth.signOut()
})

// UID is global so it can be accessed anywhere
var uid = ""

// Firebase monitors the Auth state in real time. Use this if/else statement to do things based on that state.
firebase.auth().onAuthStateChanged(firebaseUser => {
  if (firebaseUser){

    //Everything in this if is for a logged in user
    console.log(firebaseUser)
    accountForm.classList.add('hide')
    loginForm.classList.add('hide')
    signUpForm.classList.add('hide')
    logoutButton.classList.remove('hide')
   /*  status.innerHTML = 'Status: <span class="status-green">logged in</span>' */
    uid = firebaseUser.uid
    localStorage.setItem("uid", uid) 
   

    // Use the UID to get authorized data
 /*    database.ref('/to-do-list').orderByChild('uid').equalTo(uid).on("value", (snapshot) => {
      document.getElementById('to-do-list-items').innerHTML = ""
      snapshot.forEach(data => {
        var p = document.createElement('p')
        p.textContent = data.val().item
        var deleteButton = document.createElement('button')
        deleteButton.textContent = 'x'
        deleteButton.classList.add('delete-button')
        deleteButton.setAttribute('data', data.key)
        p.appendChild(deleteButton)
        document.getElementById('to-do-list-items').appendChild(p)
      })
    }) */

  } else {

    //Everything in this "else" is when no one is logged in
    console.log('not logged in')
    accountForm.classList.remove('hide')
    loginForm.classList.remove('hide')
    signUpForm.classList.remove('hide')
    logoutButton.classList.add('hide')
 /*    status.innerHTML = 'Status: <span class="status-red">not logged in</span>' */
  }
})
/* 
// delete event
document.body.addEventListener("click", function(event) {
  if (event.target.matches(".delete-button")) {
    key = event.target.getAttribute("data")
    database.ref('/to-do-list').child(key).remove()
  }
}) */
/* 
// add event
addItemForm.addEventListener('submit', (e) => {
  e.preventDefault()
  var item = document.getElementById('item').value
  database.ref('/to-do-list').push({
    item: item,
    uid: uid
  })
  addItemForm.reset()
}) */

var displayError = (message) => {
  console.log('this happened');
  errors.innerHTML = message
  setTimeout(() => {
    errors.innerHTML = ""
  }, 2000)
}