# MICADO platform
MICADO platform offers a set of backend components integrated and exposed through three applications targeted to 3 stackeholders groups:
1. Migrants
2. Public Administration
3. NGO

## Deployment instructions
To execute the MICADO platform clone the repository and execute docker-compose.

To have a correct working instance you have to properly configure hostnames.  Given a target domain <MY_DOMAIN> the hostnames that should be created are:
1. migrants.<MY_DOMAIN> (this hostname will have to be assigned to the MICADO app for the migrants)
2. pa.<MY_DOMAIN> (this hostname will have to be assigned to the Public Administration web application)
3. ngo.<MY_DOMAIN> (this hostname will have to be used for the Non Governative Organizations web application)
4. gateway.<MY_DOMAIN> (this hostname is needed to the API gateway that is one of the backend components with which the 3 frontend application will talk to)
5. dashboard.<MY_DOMAIN> (this hostname is needed for the dashboarding backend application)
6. upload.<MY_DOMAIN> (this hostname is needed for the upload service)


``
docker-compose up
``

funded by

![GitHub Logo](/img/Flag_of_Europe.svg_.png)This project has received funding from the European Union’s H2020 Innovation Action under Grant Agreement No 822717.
