Below is the converted prompt, adapted from a Next.js-based travel application to 
a .NET Core-based travel application with TypeScript, 
using ASP.NET Core for the backend and a frontend built with React 
(or Blazor, depending on preference) with TypeScript. 
The application retains the same functionality 
(searching trips, managing bookings, viewing travel guides, and tracking points) 
while aligning with .NET Core conventions and best practices. 
The structure and guidelines have been adjusted to fit a .NET Core project, 
replacing Next.js-specific features like App Router and server components 
with .NET Core equivalents.

---

# .NET Core Travel Application Guidelines

This is a .NET Core-based travel application with TypeScript that helps 
users search for trips, manage bookings, view travel guides, and track points. 
The application uses ASP.NET Core for the backend API and a frontend built with 
React (or Blazor) with TypeScript. The backend follows RESTful API principles, 
and the frontend uses modular components. Please follow these guidelines when contributing:

## Code Standards

### Required Before Each Commit
- Run `dotnet format` to ensure code follows project standards.
- Ensure all API endpoints follow RESTful conventions and are documented using OpenAPI/Swagger.
- For frontend components (React), ensure they are modular and use TypeScript.
- When adding new functionality, update the `README.md` with relevant details.
- Ensure the repository structure documentation in the `CONTRIBUTING.md` file is accurate.
- Run all tests using `dotnet test` to ensure they pass.

### TypeScript and Frontend Patterns (React)
- Use TypeScript interfaces/types for all props, data models, and API responses.
- Follow React best practices (hooks, functional components).
- Use proper state management techniques (e.g., React Context, Redux for complex state).
- Components should be modular and follow the single-responsibility principle.
- If using Blazor, use C# components with dependency injection and follow Blazor best practices.

### Backend Patterns (ASP.NET Core)
- Use C# records or classes for data models with proper validation attributes.
- Implement dependency injection for services and repositories.
- Use Entity Framework Core (or another ORM) for database access, following repository patterns.
- Ensure controllers are lightweight and delegate logic to services.
- Handle errors using middleware and return consistent HTTP responses.

### Styling
- Prioritize **Tailwind CSS** for React-based frontends, integrated via a CDN or npm package. Define custom Tailwind classes if needed. Custom CSS should be a last resort.
- For Blazor, use Tailwind CSS with CSS isolation or scoped styles. Avoid inline styles unless absolutely necessary.

## Development Flow
- **Install Dependencies**:
  - Backend: Run `dotnet restore` to install NuGet packages.
  - Frontend (React): Run `npm install` in the frontend project directory.
- **Development Server**:
  - Backend: Run `dotnet run` or `dotnet watch` in the API project directory.
  - Frontend (React): Run `npm run dev` in the frontend directory.
  - Blazor: Use `dotnet run` for Blazor Server or Blazor WebAssembly projects.
- **Build**:
  - Backend: Run `dotnet build`.
  - Frontend (React): Run `npm run build`.
- **Test**: Run `dotnet test` for backend and frontend unit tests (use Jest or similar for React).
- **Lint**:
  - Backend: Run `dotnet format` to enforce code style.
  - Frontend (React): Run `npm run lint` with ESLint configured for TypeScript.

## Repository Structure
- `TravelApp.Api/`: ASP.NET Core API project
  - `Controllers/`: API controllers for endpoints (e.g., Trips, Bookings).
  - `Models/`: C# data models and DTOs.
  - `Services/`: Business logic and service classes.
  - `Repositories/`: Data access logic (e.g., EF Core repositories).
  - `Tests/`: Unit and integration tests for the API.
- `TravelApp.Frontend/`: Frontend project (React or Blazor)
  - `components/`: Reusable React components (or Blazor components).
    - `components/ui/`: UI components (buttons, inputs, etc.).
    - `components/__tests__/`: Component tests (Jest for React).
  - `pages/`: Page-level components for routing (React Router for React, Blazor routing for Blazor).
  - `lib/`: Utility functions and TypeScript types.
    - `lib/types/`: TypeScript type definitions for API responses and components.
  - `public/`: Static assets (images, fonts, etc.).
- `README.md`: Project documentation.
- `CONTRIBUTING.md`: Contribution guidelines.

## Key Guidelines
1. **Evaluate Component Needs**: For React, ensure components are client-side and use TypeScript. For Blazor, decide between Server or WebAssembly hosting models based on performance needs.
2. **Accessibility**: Images should include meaningful alt text unless purely decorative. Decorative images should have empty alt text (`alt=""`) to be ignored by screen readers.
3. **API Best Practices**: Follow RESTful principles for API design, use proper HTTP status codes, and document endpoints with Swagger.
4. **Error Handling**: Implement proper error handling in both backend (middleware) and frontend (try-catch, loading states).
5. **Performance Optimization**: Use lazy loading for React or Blazor components to improve load times. Optimize API calls with caching (e.g., Redis, in-memory caching) and minimal data transfer.

---

### Notes on Conversion
- **From Next.js to .NET Core**: Replaced Next.js App Router with ASP.NET Core for backend API and React (with React Router) or Blazor for frontend routing. Removed Next.js-specific features like server components and `'use client'` directives.
- **Linting**: Changed `npm run lint` to `dotnet format` for backend and retained `npm run lint` for React frontend.
- **Testing**: Replaced `npm run test` with `dotnet test` for backend and Jest for React frontend.
- **Data Fetching**: Shifted from Next.js data fetching to REST API calls using `axios` or `fetch` in React, or `HttpClient` in Blazor.
- **Repository Structure**: Separated backend (`TravelApp.Api`) and frontend (`TravelApp.Frontend`) to align with .NET Core solution structure.
- **Styling**: Retained Tailwind CSS, with adjustments for Blazor’s CSS isolation model.
