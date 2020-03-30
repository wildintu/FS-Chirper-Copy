let Fetch = async (posts: object, url: string, methodtype: string) => {
  console.log(posts);
  try {
    let response = await fetch(url, {
      method: methodtype,
      mode: "cors",
      cache: "no-cache",
      credentials: "same-origin",
      headers: {
        "Content-Type": "application/json"
      },
      redirect: "follow",
      referrerPolicy: "no-referrer",
      body: JSON.stringify(posts)
    });
    return await response.text();
  } catch (err) {
    console.log(err);
  }
};

export default Fetch;
