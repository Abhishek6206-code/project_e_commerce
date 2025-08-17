#!/bin/bash

echo "🚀 Starting MERN E-Commerce Application..."

# Start backend server
echo "📦 Starting Backend Server..."
cd backend
npm start &
BACKEND_PID=$!

# Wait a moment for backend to start
sleep 3

# Start frontend server
echo "⚛️  Starting Frontend Server..."
cd ../frontend
npm run dev &
FRONTEND_PID=$!

echo "✅ Both servers are starting..."
echo "🔗 Backend: http://localhost:5000"
echo "🔗 Frontend: http://localhost:5173"
echo ""
echo "Press Ctrl+C to stop both servers"

# Wait for user to stop
wait