import React, { useState, useEffect } from "react";
import { useParams, RouteComponentProps, Link } from "react-router-dom";
import Fetch from "./Fetch";

let SingleChirp: React.FC<ISingleChirpProps> = ({
  match: {
    params: { id }
  }
}) => {
  const [userid, setUserid] = useState("");
  const [text, setText] = useState("");
  const [location, setLocation] = useState("");

  let handleChange = (e: string, id: string) => {
    if (id === "userid") {
      setUserid(e);
    } else if (id === "text") {
      setText(e);
    } else if (id === "location") {
      setLocation(e);
  }};

  let handleClick = () => {
    if (userid !== "userid" && text !== "text" && location !== "location") {
      Fetch(
        {
          userid: userid,
          text: text,
          location: location
        },
        `/api/Chirps/${id}`,
        "PUT"
      );
    }
  };

  let handleDelete = () => {
    if (userid !== "userid" && text !== "text" && location !== "location") {
      Fetch(
        {
          userid: userid,
          text: text,
          location: location
        },
        `/api/Chirps/${id}`,
        "DELETE"
      );
    }
  };

  let postBlog = async () => {
    try {
      let res = await fetch(`/api/Chirps/${id}`);
      let ablog = await res.json();
      setUserid(ablog.userid);
      setText(ablog.text);
      setLocation(ablog.location);
    } catch (error) {
      console.log(error);
    }
  };

  useEffect(() => {
    postBlog();
  }, []);

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
          Save Edit
        </button>
      </Link>
      <Link to="/">
        <button
          className="btn btn-primary ml-3"
          onClick={() => {
            handleDelete();
          }}
        >
          Delete
        </button>
      </Link>
    </form>
  );
};

export interface ISingleChirpProps
  extends RouteComponentProps<{ id: string }> {}

export interface ISingleChirpState {}

export default SingleChirp;
