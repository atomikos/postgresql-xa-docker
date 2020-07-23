# Configuring PostgreSQL For XA

This project generates a docker image with PostgreSQL and XA enabled.

## Instructions

### Build the image:
   
		docker build -t atomikos/postgres:0.0.1 .docker build -t atomikos/postgres:0.0.1 .
### Run the image:
      
	docker run -d -p 5432:5432 --name pg -v $PWD/data:/var/lib/postgresql/data -e POSTGRES_PASSWORD=atomikos <IMAGE_ID>
 
## Testing

Testing can be done with the pgAdmin application:

### Create Server

Create (add) a new server to your admin tool, by right-clicking the *Servers* icon in the left pane:

<p align="center"><img src="images/create-server-1.png" alt="create server 1"></p>


 
## Troubleshooting

You may see the following error while attempting to run the image:

```
docker: Error response from daemon: Conflict. The container name "/pg" is already in use by container "d2b51af3d0ed2b31203d4aab65d19916b30c29bc39e983d70523a6219f5f84c8". You have to remove (or rename) that container to be able to reuse that name.
See 'docker run --help'.
```

In that case, you may need to stop and remove any previous instance (only do this if you are sure you don't need it any more):

		docker stop pg
		docker rm pg
		
