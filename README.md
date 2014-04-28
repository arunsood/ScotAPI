API Usage
=========

There are two use cases for this API - manage users and retrieve and manage user locations.

## Manage Users

Create a New User
=================

`POST` request to `/user` sending the parameters `username` and `password`

Update a User
=============

`PUT` request to `/user/:id` sending the parameters `username` and `password`

Delete a User
=================

`DELETE` request to `/user/:id`

Create a New Location Entry
===========================

`POST` request to `/location` sending the parameters `latitude`, `longitude`, `user_id_s`, `user_id_r` where user_id_s is the id of the sending user and user_id_r is the recipient id

Search for Location Entry by Sender
===================================

`GET` request to `/search/s/:id` where the id is the sender's id

Search for Location Entry by Recipient
======================================

`GET` request to `/search/r/:id` where the id is the recipient's id

Delete a Location Entry
=======================

`DELETE` request to `/location/:id` where id is in relation to the entry id