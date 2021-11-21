import requests
import socket
import time


UDP_IP = "34.242.114.191"
UDP_PORT = 12345
location = (UDP_IP, UDP_PORT)

def get_measurements():
	querystring = {"api_key":"eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJhbGJlcnQuc2FtYUBnbWFpbC5jb20iLCJqdGkiOiIxOTY1NzJhNi04YjlhLTQxZjgtYWUxMS0wZWUyMzU0MGI0MTIiLCJpc3MiOiJBRU1FVCIsImlhdCI6MTYzNTg4NjQyOSwidXNlcklkIjoiMTk2NTcyYTYtOGI5YS00MWY4LWFlMTEtMGVlMjM1NDBiNDEyIiwicm9sZSI6IiJ9.YzY9rHf3j-4tTkW81CZW1hud9nJafe-Izrz8uPrH-bs"}
	headers = {
		'cache-control': "no-cache"
		}
	station_url = "https://opendata.aemet.es/opendata/api/observacion/convencional/datos/estacion/0201D"
	station_response = requests.request("GET", station_url, headers=headers, params=querystring)
	data_url=station_response.json()['datos']
	response_data = requests.request("GET", data_url)
	return response_data.json()

def get_temperature_and_rain(measurements):
	# From https://opendata.aemet.es/opendata/sh/55c2971b
	return (measurements[-1]['ta'], measurements[-1]['prec'])
	
def send_udp_message(message, location):
	sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM) # UDP socket
	sock.sendto(bytes(message, "utf-8"), location)

    
for i in range(10):
	m = get_measurements()
	(t, r) = get_temperature_and_rain(m)
	print("Temperature value: {}  Rainfall value: {}".format(t, r))
    
	send_udp_message('{{"temp": {}, "rainfall": {}}}'.format(t, r), location)
	time.sleep(5)
	


