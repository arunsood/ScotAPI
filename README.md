API Usage
=========

There are two use cases for this API - manage users and retrieve and manage user locations. API can be found at `http://54.187.144.176`

Create a New User
=================

`POST` request to `/user` sending the parameters `username` and `password`

Update a User
=============

`PUT` request to `/user/:id` sending the parameters `username` and `password`

Authenticate a User
===================

`POST` request to `/user/auth` sending the parameters `username` and `password`. It will send back a text saying "none" if no user is found, else it will send back a JSON object with the user's id.

Delete a User
=================

`DELETE` request to `/user/:id`

Create a New Location Entry
===========================

`POST` request to `/location` sending the parameters `latitude`, `longitude`, `user_id`

Search for Location Entry
=========================

`GET` request to `/search/:id` where id is the user id

Delete a Location Entry
=======================

`DELETE` request to `/location/:id` where id is in relation to the entry id