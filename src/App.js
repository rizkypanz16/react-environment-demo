import { Helmet } from 'react-helmet';
import './App.css';

function App() {
  let environment = process.env.REACT_APP_NODE_ENV || 'development';
  let appVersion = process.env.REACT_APP_VERSION || 'latest';
  return (
    <div className="App">
      <Helmet>
        <title>nginx - {environment} {appVersion}</title>
      </Helmet>
      <h2> Welcome to nginx {environment}! - {appVersion}</h2>
      <p>
        If you see this page, the nginx web server is successfully installed and <br/>
        working. Further configuration is required.
      </p>
      <p><i>Thank you for using nginx.</i></p>
    </div>
  );
}

export default App;
