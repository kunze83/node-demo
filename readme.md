### Docker Node Hello World

This project uses `Docker for Mac`

---

```
git clone https://github.com/kunze83/node-demo.git && cd node-demo;
docker build -t node-demo .;
docker run -d -p 3000:3000 --name node-demo -h node-demo.localhost -t node-demo;
```
