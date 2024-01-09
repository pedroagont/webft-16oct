import { BrowserRouter, Routes, Route, Link, useParams } from 'react-router-dom'

import './App.css';

function Home() {
  return (
    <header>
      <h1>/ Homepage!</h1>
      <Link to="/products/123">See product 123</Link>
    </header>
  )
}

function About() {
  return (
    <header>
      <h1>/about About!</h1>
    </header>
  )
}

function ProductsNew() {
  return (
    <header>
      <h1>/products/new Products new!</h1>
    </header>
  )
}

function ProductDetails() {
  const { id } = useParams()

  // useEffect(() => {
  //   axios.get(`/api/products/${id}`)
  //   .then(res => setData(res.data))
  // })

  return (
    <header>
      <h1>/products/{ id } Details about product: { id }</h1>
    </header>
  )
}

function NavigationBar() {
  return (
    <nav className="navbar">
      <span className="navbar-brand">My App!</span>
      <ul className="navbar-menu">
        <li>
          <Link to="/">Home</Link>
        </li>
        <li>
          <Link to="/about">About</Link>
        </li>
        <li>
          <Link to="/products/new">New product</Link>
        </li>
      </ul>
    </nav>
  )
}



function App() {
  return (
  <BrowserRouter>
    <NavigationBar />
    <Routes>
      <Route path="/" element={<Home />} />
      <Route path="/about" element={<About />} />
      <Route path="/products/new" element={<ProductsNew />} />
      <Route path="/products/:id" element={ <ProductDetails />}/>
    </Routes>
  </BrowserRouter>
  );
}

export default App;
