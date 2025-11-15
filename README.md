# Codaez

Codaez is a comprehensive platform for DSA enthusiasts and competitive programmers, integrating with LeetCode, CodeForces, and CodeChef. It provides users with personalized dashboards, leaderboards, and profile pages to track and compare their progress across these platforms.




## Table of Contents

1. [Features](#features)
2. [Technologies Used](#technologies-used)
3. [API Endpoints](#api-endpoints)
4. [Setup Instructions](#setup-instructions)



## Features


### User Registration and Login
- Users can register  verfying their email via OTP. OTP is sent using Node Mailer package. After successful verification the user is asked to provide usernames for LeetCode, CodeForces, and CodeChef if available.
- Secure authentication using JWT.

### Dashboard

- **Graphs:** Informative and visually appealing line graph displays contest ratings for all contests participated in on each platform.
- **Pie Charts:** Visual representation of the distribution of problems solved based on various difficulty levels available on platforms.
- **Profile Details:** Shows total questions solved, rank, rating, global rank, max rank, etc., for each platform.
- **Upcoming Contests:** Lists all upcoming contests on the three platforms with direct links to the contest pages.
- **Filters:** Allows filtering of upcoming contests based on the platform.

### Leaderboard

- Displays a leaderboard of all users followed.
- Aggregate rating calculated based on the ratings of all three platforms using min-max normalization.
- Sort feature to arrange the leaderboard based on aggregate rating or individual platform ratings.

### Profile Page
- **Own Profile:** Users can update their details, platform usernames, social links via the Edit form.
- **Other Profiles:** Users can visit other registered users' profiles, send follow requests, and see the ratings if the follow request is accepted.

### Follow System
- Users can follow other registered users and see their ratings on the respective platforms if the follow request is accepted.

## Technologies Used

- **Frontend:** Flutter,Dart, Framer Motion for animations, Chart.js for graphs and charts
- **Backend:** Node.js, Express.js, MongoDB for database, JWT for authentication, Cloudinary for Image storage.



## API Endpoints

All API endpoints start with http://localhost:3000/api/v1/

### Authentication and User Management

- **GET /auth/google**
  - Endpoint to initiate Google OAuth authentication.

- **GET /auth/google/callback**
  - Callback URL for Google OAuth.

- **POST /register**
  - Endpoint to register a new user.

- **POST /send-otp**
  - Endpoint to send an OTP for verification.

- **POST /login**
  - Endpoint to authenticate users and generate JWT.

- **PUT /complete-profile**
  - Endpoint to complete the user profile (requires login).

- **GET /logout**
  - Endpoint to log out the user.

### User Details and Follow System

- **GET /userdetails**
  - Endpoint to retrieve details of users based on query passed

- **GET /get-requests**
  - Endpoint to retrieve follow requests for the logged-in user.

- **POST /sendfrequest**
  - Endpoint to send a follow request (requires login).

- **POST /withdraw-request**
  - Endpoint to withdraw a follow request (requires login).

- **POST /acceptfrequest**
  - Endpoint to accept a follow request (requires login).

- **POST /rejectfrequest**
  - Endpoint to reject a follow request (requires login).

- **POST /unfollow**
  - Endpoint to unfollow a user (requires login).

### Profile and Settings

- **GET /profile/:username**
  - Endpoint to retrieve the profile of a user (requires login).

- **PUT /update-profile**
  - Endpoint to update the profile of the logged-in user.

- **PUT /update-avatar**
  - Endpoint to update the avatar of the logged-in user.

- **PUT /changepw**
  - Endpoint to change the password of the logged-in user.

- **PUT /change-username**
  - Endpoint to change the username of the logged-in user.

- **GET /get-follow**
  - Endpoint to retrieve follow details for the logged-in user.

### Dashboard and Leaderboard

- **GET /dashboard**
  - Endpoint to retrieve dashboard data for the logged-in user.

- **GET /details/leaderboard**
  - Endpoint to retrieve leaderboard details for the logged-in user.

toring images.
- Node Mailer for sending mails during OTP verification.

