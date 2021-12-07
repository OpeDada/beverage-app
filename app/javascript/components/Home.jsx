import React from "react"
import { Link } from "react-router-dom"

export default function Home() {
  return (
    <div>
      <h1>Shop by Brand</h1>
      <h2>Shop all products</h2>
      <Link
      to="/beverages"
      className="btn btn-lg custom-button"
      role="button"
      >
        See list of products
      </Link>
    </div>
  )
}
