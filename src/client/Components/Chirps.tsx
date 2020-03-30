import React, { useState, useEffect } from "react";
import { Link } from "react-router-dom";

const Chirps: React.FC<IChirpsProps> = props => {
    const [chirp, setChirp] = useState([]);
  
    let grabChirps = async () => {
      try {
        let r = await fetch("/api/chirps");
        let chirp = await r.json();
        chirpArray(chirp);
      } catch (error) {
        console.log(error);
      }
    };
  
    let chirpArray = (chirp: any) => {
      let keys = Object.keys(chirp);
      let arr = keys.map((element) => {
        return chirp[element];
      });
      // console.log(keys)
  
      let cards: JSX.Element[] = arr.map((element, index) => {
        return (
          <div className="card col-sm-4" key={index}>
            <div className="card-body">
              <h5 className="card-title">{element.name}</h5>
              <p className="card-text">{element.text}</p>
              <p className="card-text">{element.location}</p>
              <Link to={`/Chirps/${element.id}/admin`}>
                <button
                  type="button"
                  className="btn btn-info"
                >
                  Admin Settings
                </button>
              </Link>
            </div>
          </div>
        );
      });
      setChirp(cards);
    };
  
    useEffect(() => {
      grabChirps();
    }, []);
  
    return (
      <div>
        <Link to="/Forms" className="btn btn-success">
          Post to API
        </Link>
        {/* calling this.state.chirp */}
        {chirp}
      </div>
    );
  };
  
  export interface IChirpsProps {}
  
  export interface IChirpsState {
    chirp: string;
  }
  
  export default Chirps;