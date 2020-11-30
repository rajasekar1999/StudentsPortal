<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <style>

@import url("https://fonts.googleapis.com/css?family=Lato:400,700&display=swap");


:root {
  --page-header-bgColor:#1d809f;
  --page-header-bgColor-hover: #1d809f;
  --page-header-txtColor: #dde9f8;
  --page-header-headingColor: #7889a4;
  --page-header-width: 220px;
  --page-content-bgColor: #f0f1f600;
  --page-content-txtColor: #171616;
  --page-content-blockColor: #fff;
  --white: #fff;
  --black: #333;
  --blue: #00b9eb;
  --red: #ec1848;
  --border-radius: 4px;
  --box-shadow: 0 0 10px -2px rgba(0, 0, 0, 0.075);
}

* {
  padding: 0;
  margin: 0;
  box-sizing: border-box;
}

ul {
  list-style: none;
 
}

a,
button {
  color: inherit;
}

a {
  text-decoration: none;
}

button {
  background: none;
  cursor: pointer;
}

input {
  -webkit-appearance: none;
}

button,
input {
  border: none;
}

svg {
  display: block;
}

body {
  font: 16px/1.5 "Lato", sans-serif;
}


/* HEADER STYLES
–––––––––––––––––––––––––––––––––––––––––––––––––– */
.page-header {
  position: fixed;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  overflow: auto;
  padding-top: 20px;
  width: var(--page-header-width);
  color: var(--page-header-txtColor);
  background: var(--page-header-bgColor);
}

/*In case you prefer an absolutely positioned header that covers the full page height, add these styles*/
/*body {
  position: relative;
}

.page-header {
  position: absolute;
  top: 0;
  left: 0;
  height: 100%;
}*/

/*remove these styles*/
/*.page-header {
  position: fixed;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  overflow: auto;
}*/

.page-header nav {
  display: flex;
  flex-direction: column;
  min-height: 100%;
}

.page-header .logo {
  display: block;
  max-width: 120px;
  margin: 0 15px;
}

.page-header .toggle-mob-menu {
  display: none;
  margin-left: 5px;
  padding: 4px;
  background: var(--page-content-blockColor);
  border-radius: var(--border-radius);
}

.page-header .toggle-mob-menu svg {
  fill: var(--black);
  transition: transform 0.2s;
}

.page-header .admin-menu {
  display: flex;
  flex-direction: column;
  flex-grow: 1;
  margin-top: 35px;
}

.page-header .admin-menu li:nth-last-child(2) {
  margin-bottom: 35px;
}

.page-header .admin-menu li:last-child {
  margin-top: auto;
  margin-bottom: 20px;
}

.page-header .admin-menu li > * {
  width: 100%;
  padding: 12px 15px;
}

.page-header .admin-menu .menu-heading h3 {
  text-transform: uppercase;
  letter-spacing: 0.15em;
  font-size: 12px;
  margin-top: 12px;
  color: var(--page-header-headingColor);
}

.page-header .admin-menu svg {
  width: 20px;
  height: 20px;
  fill: var(--page-header-txtColor);
  margin-right: 10px;
  transition: fill 0.2s;
}

.page-header .admin-menu a,
.page-header .admin-menu button {
  display: flex;
  align-items: center;
  font-size: 0.9rem;
  transition: background 0.2s, color 0.2s;
}

.page-header .admin-menu a:hover,
.page-header .admin-menu a:focus,
.page-header .admin-menu button:hover,
.page-header .admin-menu button:focus {
  background: var(--page-header-bgColor-hover);
  color: var(--blue);
  outline: none;
}

.page-header .admin-menu a:hover svg,
.page-header .admin-menu a:focus svg,
.page-header .admin-menu button:hover svg,
.page-header .admin-menu button:focus svg {
  fill: var(--blue);
}


/* PAGE CONTENT STYLES
–––––––––––––––––––––––––––––––––––––––––––––––––– */
.page-content {
  position: relative;
  left: var(--page-header-width);
  width: calc(100% - var(--page-header-width));
  min-height: 100vh;
  padding: 30px;
  color: var(--page-content-txtColor);
  background: var(--page-content-bgColor);
}

.search-and-user {
  display: grid;
  grid-template-columns: 1fr auto;
  grid-column-gap: 50px;
  align-items: center;
  background: var(--page-content-bgColor);
  margin-bottom: 30px;
}

.search-and-user form {
  position: relative;
}

.search-and-user input[type="search"] {
  width: 100%;
  height: 50px;
  font-size: 1.5rem;
  padding-left: 15px;
  background: var(--page-content-blockColor);
  color: var(--white);
  border-radius: var(--border-radius);
  box-shadow: var(--box-shadow);
}

.search-and-user ::placeholder {
  color: var(--page-content-txtColor);
}

.search-and-user form svg {
  width: 26px;
  height: 26px;
  fill: var(--page-content-txtColor);
}

.search-and-user form button {
  position: absolute;
  top: 50%;
  right: 15px;
  transform: translateY(-50%);
}

.search-and-user .admin-profile {
  display: flex;
  align-items: center;
}

.search-and-user .admin-profile .greeting {
  margin: 0 10px 0 20px;
}

.search-and-user .admin-profile svg {
  width: 30px;
  height: 30px;
}

.search-and-user .admin-profile .notifications {
  position: relative;
}

.search-and-user .admin-profile .badge {
  display: flex;
  align-items: center;
  justify-content: center;
  position: absolute;
  top: -10px;
  right: -3px;
  width: 18px;
  height: 18px;
  border-radius: 50%;
  font-size: 10px;
  color: var(--white);
  background: var(--red);
}

.page-content .grid {
  display: grid;
  grid-template-columns: repeat(2, 1fr);
  grid-gap: 30px;
}

.page-content .grid > article {
  display: flex;
  height: 300px;
  background: var(--page-content-blockColor);
  border-radius: var(--border-radius);
  box-shadow: var(--box-shadow);
}

@media screen and (max-width: 767px) {
  .page-header,
  .page-content {
    position: static;
    width: 100%;
  }
   
  .page-header {
    padding: 10px;
  }

  .page-header nav {
    flex-direction: row;
  }

  .page-header .logo {
    margin: 0;
    height: 35px;
  }

  .page-header .toggle-mob-menu {
    display: block;
  }

  .page-header .admin-menu {
    position: absolute;
    left: 98px;
    top: 57px;
    margin-top: 0;
    z-index: 2;
    border-radius: var(--border-radius);
    background: var(--page-header-bgColor);
    visibility: hidden;
    opacity: 0;
    transform: scale(0.95);
    transition: all 0.2s;
  }

  .page-header .admin-menu li:nth-last-child(2) {
    margin-bottom: 12px;
  }
  
  .page-header .admin-menu li:last-child,
  .search-and-user .admin-profile .greeting {
    display: none;
  }
  
  .page-content {
    min-height: 0;
    padding: 10px;
  }

  .page-content .grid {
    grid-gap: 10px;
  }

  .search-and-user {
    position: absolute;
    left: 131px;
    top: 10px;
    padding: 0;
    grid-column-gap: 5px;
    width: calc(100% - 141px);
    border-radius: var(--border-radius);
    background: transparent;
  }

  .search-and-user input[type="search"] {
    font-size: 1rem;
    height: 35px;
  }

  .search-and-user form svg {
    width: 18px;
    height: 18px;
  }

  .search-and-user .admin-profile svg {
    fill: var(--white);
  }
}

@media screen and (max-width: 400px) {
  .page-content .grid > article {
    grid-column: 1 / -1;
  }
}


/* BODY CLASSES
–––––––––––––––––––––––––––––––––––––––––––––––––– */
.mob-menu-opened .toggle-mob-menu svg {
  transform: rotate(180deg);
}

.mob-menu-opened .page-header .admin-menu {
  transform: scale(1);
  visibility: visible;
  opacity: 1;
}

@media screen and (min-width: 768px) {
  .collapsed .page-header {
    width: 40px;
  }

  .collapsed .page-header .admin-menu li > * {
    padding: 10px;
  }

  .collapsed .page-header .logo,
  .collapsed .page-header .admin-menu span,
  .collapsed .page-header .admin-menu .menu-heading {
    display: none;
  }

  .collapsed .page-header .admin-menu svg {
    margin-right: 0;
  }

  .collapsed .page-header .collapse-btn svg {
    transform: rotate(180deg);
  }

  .collapsed .page-content {
    left: 40px;
    width: calc(100% - 40px);
  }
}


/* FOOTER
–––––––––––––––––––––––––––––––––––––––––––––––––– */
.page-footer {
  font-size: 0.85rem;
  text-align: right;
  margin-top: 10px;
}

.page-footer span {
  color: var(--red);
}
    </style>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

</head>


<body>

<svg style="display:none;">
  <symbol id="users" viewBox="0 0 16 16">
    <path d="M8,0a8,8,0,1,0,8,8A8,8,0,0,0,8,0ZM8,15a7,7,0,0,1-5.19-2.32,2.71,2.71,0,0,1,1.7-1,13.11,13.11,0,0,0,1.29-.28,2.32,2.32,0,0,0,.94-.34,1.17,1.17,0,0,0-.27-.7h0A3.61,3.61,0,0,1,5.15,7.49,3.18,3.18,0,0,1,8,4.07a3.18,3.18,0,0,1,2.86,3.42,3.6,3.6,0,0,1-1.32,2.88h0a1.13,1.13,0,0,0-.27.69,2.68,2.68,0,0,0,.93.31,10.81,10.81,0,0,0,1.28.23,2.63,2.63,0,0,1,1.78,1A7,7,0,0,1,8,15Z" />
  </symbol>
  <symbol id="collapse" viewBox="0 0 16 16">
    <polygon points="11.62 3.81 7.43 8 11.62 12.19 10.09 13.71 4.38 8 10.09 2.29 11.62 3.81"/>
  </symbol>
</svg>

<header class="page-header">
  <nav>
   
    <button class="toggle-mob-menu" aria-expanded="false" aria-label="open menu">
      <svg width="20" height="20" aria-hidden="true">
        <use xlink:href="#down"></use>
      </svg>
    </button>
    <ul class="admin-menu">
    <li>
      <span><h2 style="margin-left:15px;"><b>Dashboard</b></h2></span>
    </li>
      <li>
        <a href="index.jsp" style="color:white;">
          Home
        </a>
      </li>
      <li>
        <a href="enter_attendance.jsp" style="color:white;">
          Enter Attendace
        </a>
      </li>
      <li>
        <a href="enter_marks.jsp" style="color:white;">
          Enter Marks
        </a>
      </li>
      <li>
        <a href="view_students.jsp" style="color:white;">
          View Student Records
        </a>
      </li>
      <li>
        <a href="edit_attendance.jsp" style="color:white;">
            Edit Attendance
        </a>
      </li>
      <li>
        <a href="edit_marks.jsp" style="color:white;">        
          Edit Marks
        </a>
      </li>
      <li>
        <a href="#0" style="color:white;">        
          
        </a>
      </li>
    </ul>
  </nav>
</header>

<body >

<section style=" background-image: url('https://i.ibb.co/sHcBdr4/pencil.jpg'); background-repeat: no-repeat;background-attachment: fixed; background-size: 100% 100%;" class="page-content">
  <section class="search-and-user">
   
    <div class="admin-profile">
      <span class="greeting" style=" background-color: rgba(39, 39, 39, 0); float: right; margin-left: 86%;">Hello Admin</span>
      <div class="notifications">
        <span class="badge">1</span>
        <svg>
          <use xlink:href="#users"></use>
        </svg>
      
      </div>  
    </div>
  </section> 
    <div class="jumbotron jumbotron-fluid" style="margin-left:100px;width:900px;opacity:85%;">
        <center><h2>View Student Details</h2></center>
        <div style="width:700px;margin-left:100px;">
        <form action="<%= request.getContextPath() %>/Result.jsp" method="post">
  <div class="form-group">
    <label>Enter Roll Number Range</label>
    <div class="form-group">
    <div style="width:45%;float:left;">
        <input type="text" class="form-control" name="rollno1" placeholder="starting rollno - cb.en.u4csexxxxx">
    </div>
    <div style="width:45%;margin-left:70px;float:left;">
        <input type="text" class="form-control" name="rollno2" placeholder="ending rollno - cb.en.u4csexxxxx">
    </div>
  </div>
  </div>
  <br>
  <br>
  <div class="form-group">
    <label>Select Semester</label>
    <select class="form-control" name="semester">
      <option>1</option>
      <option>2</option>
      <option>3</option>
      <option>4</option>
      <option>5</option>
      <option>6</option>
      <option>7</option>
      <option>8</option>
    </select>
  </div>
  <br>
  <div class="form-group">
    <label>Enter CGPA Range</label>
    <div class="form-group">
    <div style="width:45%;float:left;">
        <input type="text" class="form-control" name="cgpa1" placeholder="starting cgpa">
    </div>
    <div style="width:45%;margin-left:70px;float:left;">
        <input type="text" class="form-control" name="cgpa2" placeholder="ending cgpa">
    </div>
  </div>
  </div>
  <br>
  <br>
  <div class="form-group">
    <label>Sort By</label>
    <select class="form-control" name="sort">
      <option>cgpa</option>
      <option>rollnumber</option>
      <option>at1</option>
      <option>m1</option>
    </select>
  </div>
  <center>
  <div class="form-group" style="margin-top:40px;">
    <input type="submit" value="submit" style="padding-left:30px;padding-right:30px;" class="form-control"></input>
  </div>
</center>
</form>
</div>
    
</body>
<script>
    const body = document.body;
const menuLinks = document.querySelectorAll(".admin-menu a");
const collapseBtn = document.querySelector(".admin-menu .collapse-btn");
const toggleMobileMenu = document.querySelector(".toggle-mob-menu");
const collapsedClass = "collapsed";

collapseBtn.addEventListener("click", function() {
  this.getAttribute("aria-expanded") == "true"
    ? this.setAttribute("aria-expanded", "false")
    : this.setAttribute("aria-expanded", "true");
  this.getAttribute("aria-label") == "collapse menu"
    ? this.setAttribute("aria-label", "expand menu")
    : this.setAttribute("aria-label", "collapse menu");
  body.classList.toggle(collapsedClass);
});

toggleMobileMenu.addEventListener("click", function() {
  this.getAttribute("aria-expanded") == "true"
    ? this.setAttribute("aria-expanded", "false")
    : this.setAttribute("aria-expanded", "true");
  this.getAttribute("aria-label") == "open menu"
    ? this.setAttribute("aria-label", "close menu")
    : this.setAttribute("aria-label", "open menu");
  body.classList.toggle("mob-menu-opened");
});

for (const link of menuLinks) {
  link.addEventListener("mouseenter", function() {
    body.classList.contains(collapsedClass) &&
    window.matchMedia("(min-width: 768px)").matches
      ? this.setAttribute("title", this.textContent)
      : this.removeAttribute("title");
  });
}
</script>
</body>
</html>