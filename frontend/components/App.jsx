import React from "react";
import { Route } from "react-router-dom";
import LoginFormContainer from "./session/login_form_container";
import SignupFormContainer from "./session/signup_form_container";
import NavBarContainer from "./nav_bar/nav_bar_container";
import { AuthRoute, ProtectedRoute } from "../util/route_util";
import { Switch } from "react-router-dom";

const App = () => (
    <div>
        <h1>eventdim</h1>
        <Switch>
            <Route exact path="/" component={NavBarContainer} />
            {/* <Route exact path="/" component={Home} /> */}

            {/* these are only seen if you are logged out */}
            <AuthRoute path="/signin" component={LoginFormContainer} />
            <AuthRoute path="/signup" component={SignupFormContainer} />
        </Switch>
    </div>
);

export default App;