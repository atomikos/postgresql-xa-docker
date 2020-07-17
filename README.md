Step 1 :
 docker build -t atomikos/postgres:0.0.1 .

Step 2 :
 docker run -d -p 5432:5432 --name pg -v $PWD/data:/var/lib/postgresql/data -e POSTGRES_PASSWORD=atomikos <IMAGE_ID>