import axios from "axios";

// const getRawUrl = (url: string) => {}

const getRawUrl = (githubURL: string) => {
  const url = new URL(githubURL);
  const parts = url.pathname.split('/');

  // Ensure the URL is a valid GitHub URL
  if (url.hostname !== 'github.com' || parts.length < 5) {
    throw new Error('Invalid GitHub URL');
  }

  const owner = parts[1];
  const repo = parts[2];
  const ref = parts[4] || 'master'; // Use 'master' if no branch/tag is provided
  const filePath = parts.slice(4).join('/');

  return `https://raw.githubusercontent.com/${owner}/${repo}/${ref}/${filePath}`;
}

const fetchRawContent = (url: string) => {
  console.log(getRawUrl(url))
  axios
    .get("https://raw.githubusercontent.com/speckleworks/SpeckleManagerFeed/master/repos.json")
    .then(resp => {
      console.log(resp.data);
    })
    .catch(console.error)
}
const docToJson = () => { }

export default {
  load() {
    return {
      hello: 'world'
    }
  }
}

fetchRawContent(
  'https://github.com/tauri-apps/tauri-action'
)

// TODO: default file readme.{md,txt} ReAdMe.{md,txt}