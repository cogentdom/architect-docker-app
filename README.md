# Stock Prediction AWS

### Overview  
This project scrapes data of stocks and feeds them down a pipeline that trains an ML model and displays it as a dashboard using Streamlit. This Streamlit app is then containerized using docker and deployed to a virtual machine on AWS using ECS. This ECS instance is then accessed from a custom domain name that is being hosted on a Cloudflare DNS server. 
