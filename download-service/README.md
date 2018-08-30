# Download Serivce

Download file using 'wget' and tell us finished when file completely downloaded using 'curl' command.

## Build

```
sudo docker build -f Dockerfile -t download-service .
```

## Run

```
sudo docker run -e URL=<File URL> -e OUT=<File Path> -e CALLBACK=<Callback URL> download-service
```
