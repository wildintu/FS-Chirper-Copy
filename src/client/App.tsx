import React from "react";
import { BrowserRouter as Router, Route, Switch } from "react-router-dom";
import Forms from "./Components/Forms";
import Chirps from "./Components/Chirps";
import SingleChirp from "./Components/SingleChirp";

const App: React.FC<IAppProps> = props => {
  return (
    <Router>
      <Switch>
        <Route exact path="/Forms" component={ Forms } />
        <Route exact path="/Chirps/:id/admin" component={ SingleChirp } />
        <Route path="/" component={ Chirps } />
      </Switch>
    </Router>
  );
};

export interface IAppProps {}

export interface IAppState {}

export default App;
