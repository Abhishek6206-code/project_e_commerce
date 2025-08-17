# MERN E-Commerce Full Stack Project

A complete e-commerce application built with the MERN stack (MongoDB, Express.js, React.js, Node.js) featuring user authentication, product management, shopping cart, address management, and payment integration with Razorpay.

## 🚀 Features

### Backend Features
- **User Authentication**: Register, login, and profile management
- **Product Management**: CRUD operations for products
- **Shopping Cart**: Add, remove, and manage cart items
- **Address Management**: Add and manage delivery addresses
- **Payment Integration**: Razorpay payment gateway integration
- **Order Management**: Complete order processing and tracking
- **JWT Authentication**: Secure API endpoints with JWT tokens
- **MongoDB Integration**: Data persistence with MongoDB

### Frontend Features
- **Responsive Design**: Modern UI with responsive layout
- **User Authentication**: Login and registration forms
- **Product Catalog**: Display products with search and filtering
- **Shopping Cart**: Interactive cart management
- **Checkout Process**: Complete checkout with address and payment
- **Order Tracking**: View order history and status
- **Profile Management**: User profile and settings
- **Toast Notifications**: User feedback with react-toastify

## 📁 Project Structure

```
├── backend/
│   ├── Controllers/
│   │   ├── user.js
│   │   ├── product.js
│   │   ├── cart.js
│   │   ├── address.js
│   │   └── payment.js
│   ├── Models/
│   │   ├── User.js
│   │   ├── Product.js
│   │   ├── Cart.js
│   │   ├── Address.js
│   │   └── Payment.js
│   ├── Routes/
│   │   ├── user.js
│   │   ├── product.js
│   │   ├── cart.js
│   │   ├── address.js
│   │   └── payment.js
│   ├── Middlewares/
│   │   └── auth.js
│   ├── server.js
│   ├── package.json
│   └── .env
├── frontend/
│   ├── src/
│   │   ├── components/
│   │   │   ├── user/
│   │   │   │   ├── Login.jsx
│   │   │   │   ├── Register.jsx
│   │   │   │   └── Profile.jsx
│   │   │   ├── product/
│   │   │   │   ├── ProductDetail.jsx
│   │   │   │   ├── RelatedProduct.jsx
│   │   │   │   ├── SearchProduct.jsx
│   │   │   │   └── ShowProduct.jsx
│   │   │   ├── Navbar.jsx
│   │   │   ├── TableProduct.jsx
│   │   │   ├── Cart.jsx
│   │   │   ├── Address.jsx
│   │   │   ├── Checkout.jsx
│   │   │   ├── OrderConfirmation.jsx
│   │   │   ├── ShowOrderProduct.jsx
│   │   │   └── AllOrders.jsx
│   │   ├── context/
│   │   │   ├── AppContext.jsx
│   │   │   └── AppState.jsx
│   │   ├── App.jsx
│   │   ├── main.jsx
│   │   └── index.css
│   ├── public/
│   │   └── vite.svg
│   ├── index.html
│   ├── package.json
│   ├── vite.config.js
│   └── .eslintrc.cjs
└── README.md
```

## 🛠️ Technologies Used

### Backend
- **Node.js**: JavaScript runtime
- **Express.js**: Web application framework
- **MongoDB**: NoSQL database
- **Mongoose**: MongoDB object modeling
- **JWT**: JSON Web Tokens for authentication
- **bcryptjs**: Password hashing
- **Razorpay**: Payment gateway
- **CORS**: Cross-origin resource sharing

### Frontend
- **React.js**: JavaScript library for building user interfaces
- **Vite**: Build tool and development server
- **React Router**: Client-side routing
- **Axios**: HTTP client for API calls
- **React Toastify**: Toast notifications
- **CSS3**: Styling

## 🚀 Getting Started

### Prerequisites
- Node.js (v14 or higher)
- MongoDB (local or MongoDB Atlas)
- npm or yarn package manager

### Backend Setup

1. **Navigate to backend directory**
   ```bash
   cd backend
   ```

2. **Install dependencies**
   ```bash
   npm install
   ```

3. **Environment Configuration**
   Create a `.env` file in the backend directory with the following variables:
   ```env
   MONGODB_URI=your_mongodb_connection_string
   PORT=5000
   JWT_SECRET=your_jwt_secret_key
   RAZORPAY_KEY_ID=your_razorpay_key_id
   RAZORPAY_KEY_SECRET=your_razorpay_key_secret
   ```

4. **Start the server**
   ```bash
   npm start
   # or for development
   npm run dev
   ```

   The backend server will run on `http://localhost:5000`

### Frontend Setup

1. **Navigate to frontend directory**
   ```bash
   cd frontend
   ```

2. **Install dependencies**
   ```bash
   npm install
   ```

3. **Start the development server**
   ```bash
   npm run dev
   ```

   The frontend application will run on `http://localhost:5173`

## 📋 API Endpoints

### User Routes (`/api/user`)
- `POST /register` - User registration
- `POST /login` - User login
- `GET /profile` - Get user profile (protected)
- `PUT /profile` - Update user profile (protected)

### Product Routes (`/api/product`)
- `GET /` - Get all products
- `GET /:id` - Get product by ID
- `POST /` - Create new product (protected)
- `PUT /:id` - Update product (protected)
- `DELETE /:id` - Delete product (protected)

### Cart Routes (`/api/cart`)
- `GET /` - Get user cart (protected)
- `POST /add` - Add item to cart (protected)
- `PUT /update/:id` - Update cart item (protected)
- `DELETE /remove/:id` - Remove item from cart (protected)

### Address Routes (`/api/address`)
- `GET /` - Get user addresses (protected)
- `POST /add` - Add new address (protected)
- `PUT /update/:id` - Update address (protected)
- `DELETE /remove/:id` - Remove address (protected)

### Payment Routes (`/api/payment`)
- `POST /create-order` - Create payment order (protected)
- `POST /verify` - Verify payment (protected)

## 🔐 Authentication

The application uses JWT (JSON Web Tokens) for authentication. Protected routes require a valid JWT token in the Authorization header:

```
Authorization: Bearer <your_jwt_token>
```

## 💳 Payment Integration

The application integrates with Razorpay for payment processing. To use payment features:

1. Sign up for a Razorpay account
2. Get your API keys from the Razorpay dashboard
3. Add the keys to your `.env` file
4. Test payments using Razorpay test cards

## 🎨 UI/UX Features

- **Responsive Design**: Works on desktop, tablet, and mobile devices
- **Modern Interface**: Clean and intuitive user interface
- **Toast Notifications**: Real-time feedback for user actions
- **Loading States**: Visual feedback during API calls
- **Error Handling**: Graceful error handling and user feedback

## 🚀 Deployment

### Backend Deployment
- Deploy to platforms like Heroku, Railway, or DigitalOcean
- Set environment variables in your hosting platform
- Ensure MongoDB connection string is properly configured

### Frontend Deployment
- Build the project: `npm run build`
- Deploy to platforms like Vercel, Netlify, or GitHub Pages
- Update API base URL for production

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Test thoroughly
5. Submit a pull request

## 📝 License

This project is licensed under the MIT License.

## 👨‍💻 Author

This project is based on the original work by Suman Malakar and has been recreated for educational purposes.

## 🙏 Acknowledgments

- Original repository: [MERN_E_Commerce_API_YouTube](https://github.com/sumanmalakar/MERN_E_Commerce_API_YouTube)
- Frontend repository: [MERN_E_Commerce_Frontend_YouTube](https://github.com/sumanmalakar/MERN_E_Commerce_Frontend_YouTube)
- Razorpay for payment integration
- MongoDB for database services