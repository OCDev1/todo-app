import ListHeader from "./components/ListHeader";
import { useEffect } from 'react'

const App = ()=> {

  const getData = async () => {
    const userEmail = 'user@example.com'
    try {
      const response = await fetch(`http://localhost:8000/todos/${userEmail}`)
      const json = await response.json()
      console.log(json)
    } catch (err) {
      console.error(err)
    }
  }

  useEffect(() => getData, [])

  return (
    <div className="app">
      <ListHeader listName={'test header name'}></ListHeader>
    </div>
  );
}

export default App;
