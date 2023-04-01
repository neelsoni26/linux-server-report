# Linux Server Report

This repository files will provide all information/report of your server at once.

## Features

- Greets the User
- Current Date and Time
- Uptime of the Server
- Last Logins of the Server
- Disk Utilization of the Server
- RAM (Memory) Utilization of the Server
- CPU Utilization of the Server

There are two files one is `server-auto-report` and `server-custom-report`.
If you run the `server-auto-report` file it will auto display the data with 
- Top 5 last logins
- Top 5 CPU utilization

If you want to get custom number of data you need to run `server-custom-report`

To run `server-auto-report`:

First update the permission to execute the file:
```sh
sudo chmod 740 server-auto-report.sh
```
Secondly, run the file:
```sh
./server-auto-report.sh
```

To run `server-custom-report`:

First update the permission to execute the file:
```sh
sudo chmod 740 server-custom-report.sh
```
Secondly, run the file with the arguments:
```sh
./server-auto-report.sh arg1 arg2
```
Here, `arg1` is your number of last logins you want to display such as `10`.

And the `arg2` is the number of CPU utilization you want to display such as `12` however, the count starts at `6` for the processes. If you want to check the top 5 CPU utilization and processes you need to give `12` as an argument.
