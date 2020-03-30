import React, { useState, useEffect } from "react";
import { Link } from "react-router-dom";
import Fetch from "./Fetch";

const Forms: React.FC<IFormsProps> = props => {
  const [userid, setUserid] = useState("");
  const [text, setText] = useState("");
  const [location, setLocation] = useState("");

  let handleChange = (e: string, id: string) => {
    if (id === "user") {
      setUserid(e);
    } else if (id === "text") {
      setText(e);
    } else if (id === "location") {
      setLocation(e);
  };

  let handleClick = () => {
    if (userid !== "" && text !== "" && location !== "") {
      Fetch(
        {
          userid: userid,
          text: text,
          location: location
        },
        "/api/Chirps",
        "POST"
      );
    }
  };

  return (
    <form>
      <div className="form-group col-sm-4">
        <label htmlFor="name">Name</label>
        <input
          type="text"
          className="form-control"
          id="userid"
          value={userid}
          onChange={e => handleChange(e.target.value, "userid")}
        />
        <small id="userMsg" className="form-text text-muted">
          We plan to stalk you.
        </small>
      </div>
      <div className="form-group col-sm-4">
        <label htmlFor="msg">Msg</label>
        <input
          type="text"
          className="form-control"
          id="text"
          value={text}
          onChange={e => handleChange(e.target.value, "text")}
        />
      </div>
      <div className="form-group col-sm-4">
        <label htmlFor="msg">Location</label>
        <input
          type="text"
          className="form-control"
          id="location"
          value={location}
          onChange={e => handleChange(e.target.value, "location")}
        />
      </div>
      <Link to="/">
        <button
          className="btn btn-primary ml-3"
          onClick={() => {
            handleClick();
          }}
        >
          Submit
        </button>
      </Link>
    </form>
  );
};

export interface IFormsProps {}

export interface IFormsState {}

export default Forms;
