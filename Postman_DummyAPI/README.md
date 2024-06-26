There is an API description: https://dummyapi.io/docs

Create a collection of requests in Postman that includes:

Getting a list of users;
Creating a user;
Getting a user;
Updating a user;
Deleting a user.

While completing this task, I created a collection, parameterized variables that are saved in the collection. I wrote a Pre-request Script to pass the authentication key in the request header and parse the user identifier from the response body from the server into the variables collection to reuse this identifier with other requests.
