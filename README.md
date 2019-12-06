# <h1>betterYOU Rails API</h1>
<a href="https://imgur.com/DpX2xyS"><img src="https://i.imgur.com/DpX2xyS.png" title="source: imgur.com" /></a>

This is a single page application (SPA) which allows the user to sign-up and sign-in with their specific account created. After a successful sign-up or sign-in a user will be able to create an exercise that they may have completed or plan to complete. If any errors are made within this process they are able to either edit or delete that current exercise. They are also given an exercise log where they can view their exercises and it is labeled with the title and date with a button that will show them the weight/reps/sets they inputed for that workout. There is also a tutorials page with basic youtube video's specific to each muscle group where the user can get an idea of what exercises they may want to do and later log them. Finally a user is able to change their password and sign-out.

###### (as a note: for security reasons, I suggest using a small temporary email & password. Do not use real email's or password's.)

## About the Back End

The back end is built with Rails. Data was created and tested through curl scripts. There is a user relation to exercises and only a specific logged in user can see their own exercises created.

## Resources

- [Front end repo](https://jpelliccia.github.io/capstone-react-client/)
- [Deployed back end (Heroku)](https://nameless-dusk-30695.herokuapp.com/exercises)


## Technologies Used

- React
- Rails
- Atom
- React Bootstrap
- SCSS
- cURL
- Git/GitHub
- Heroku
- Javascript


## Development Process

I started with creating a relationship with user to exercises where each specific signed in user can only view their own exercises created. The properties used were name, reps, sets, weight, and date. Once I implemented these properties I tested them with curl scripts and began creating more and then started with CRUD actions on my front end.

This was my beginning ERD:

<a href="https://imgur.com/pbee4xZ"><img src="https://i.imgur.com/pbee4xZ.png" title="source: imgur.com" /></a>

Ended up removing a bunch of properties before I ended up with my final one's.

## Reflections, Future Goals, and Planned Fixes

- Still need to work on my YouTube component to stop the video's from continuously loading.
- Would like to eventually clean up the exercise log better with images a user uploads.
- Would like to eventually add a calender component where a user can click a date on the calender and add their workout directly there.
- Thinking of creating a random workout generator so that if someone is unsure of which workout to do for that day, the generator will give them a random muscle group with workouts to do for that day.

## Resource Routes

#### Routes

### User
| HTTP| CRUD| URI pattern | Method/Action |
| :---:| :---:|:---:| :---:        |
| POST  |CREATE|  /sign-up | /sign-up  |
| POST  | CREATE|/sign-in  | /sign-in    |
| PATCH | UPDATE|/change-password | /change-password|
| DELETE |DELETE| /sign-out  |  /sign-out |

### Exercises
| HTTP |CRUD| URI pattern | Method/Action |
| :---:| :---:|:---:| :---:        |
| POST  |CREATE|  /exercises | /create  |
| GET  |READ| /exercises  | /index    |
| GET   |READ| /exercises/:id  | /show  |
| PATCH |UPDATE| /exercises/:id | /update|
| DELETE |DELETE| /exercises/:id |  /destroy |


### User Stories
<a href="https://imgur.com/x7NUajw"><img src="https://i.imgur.com/x7NUajw.png" title="source: imgur.com" /></a>
- As a user I want to sign in/up
- As a user I want to create a new exercise.
- As a user I want to view multiple exercises.
- As a user I want to view a single exercise created.
- As a user I want to update an exercise.
- As a user I want to delete an exercise.
