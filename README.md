# Google Cloud SQL Auth Proxy Scripts

This is a set of convenience scripts for accessing Google Cloud Cloud SQL databases using the [Google Cloud SQL Auth Proxy](https://cloud.google.com/sql/docs/mysql/sql-proxy).

## Connecting

To get started clone this repository and `cd` into the directory.

```
git clone https://github.com/jzonthemtn/cloud-sql-auth-proxy-scripts.git
cd cloud-sql-auth-proxy-scripts
```

Now, run the `download-proxies.sh` script to download the Cloud SQL Auth Proxy binaries.

Next, log in to Google Cloud if you have not already:

```bash
gcloud auth login
gcloud auth application-default login
```

Next, edit the `database.properties` file to set your environment settings.

Now, run the connection script for your operating system and the database you want to connect to. (This starts the Cloud SQL Auth Proxy.) For example, to connect to the stage database, run:

```
./connect_stage_linux_x64.sh
```

Lastly, using your favorite database client, connect to `localhost` on the port specified in the `database.properties`. Your username is your Google Cloud user name (whatever is in front of the @ in your email address.)

*There is no password so leave any password prompts blank!*

An example for connecting to a Google Cloud CLoud SQL MySQL database via the Cloud SQL Auth Proxy:

```bash
mysql --host localhost --port=3306 --user=jzonthemtn
```

You are now connected to the database!
