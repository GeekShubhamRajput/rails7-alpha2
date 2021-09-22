## Course and Tutor

#### Tasks
###### Given 2 models - Course & Tutor 

1. A course can have many tutors. 
2. Tutor can teach one course only. 

###### Write: 
1. Common POST API to create a course & its tutors 
2. GET API to list all the courses along with their tutors 


## Steps are necessary to get the application up and running.

###### Ruby/rails version 
ruby version 3.0.0
rails version 7.0.0.alpha2

###### run bundle command
```
$ bundle install
```

###### create and migrate database
```
$ rails db:create
$ rails db:migrate
```

## API details

Run API by rails console

1. API to create a course & its tutors

HTTParty.post('http://localhost:3000/courses', query: {course: { name: "English1d6", details: "testung", tutors_attributes: [{ name: "Shubham12", email: "rajput.shubh1993@gmail.com"}]}})

2. GET API to list all the courses along with their tutors

response = HTTParty.get('http://localhost:3000/courses')
response.to_a
