### Docker Node Hello World

This project uses `Docker for Mac`

---

### Interactive Development

To interactively develop with docker, you must build the environment and mount the project folder.  If you do not mount the project folder, you will need to rebuild the image each time you make changes.  Remember: if you ran `npm install` outside the container, you will need to `rm -rf /opt/src/node_modules` before you start.  

```
git clone https://github.com/kunze83/node-demo.git && cd node-demo;
docker build -t node-demo .;
docker run -d -p 3000:3000 --name node-demo -h node-demo.localhost -v ${pwd}:/opt/src -t node-demo;
```

### Production

In production, we dont want to interactively modify the app code.  Therefore, the steps are simple: `build`, and `run`.

```
git clone https://github.com/kunze83/node-demo.git && cd node-demo;
docker build -t node-demo .;
docker run -d -p 3000:3000 --name node-demo -h node-demo.prod -t node-demo;
```
