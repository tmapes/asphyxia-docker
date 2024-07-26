## asphyxia-docker

Run [Asphyxia-Core](https://asphyxia-core.github.io/) inside Docker

---

### Configuration

##### Environment Variables

| Name            | Info                                                                                                          | Default        |
| --------------- | ------------------------------------------------------------------------------------------------------------- | -------------- |
| LISTENING_PORT  | Asphyxia Port (Use in spicecfg)                                                                               | 8083 (TCP)     |
| MATCHING_PORT   | Port for Matching (NOTE: This port is used on the _client_ side for matching, as has no impact on the server. | 5700 (TCP/UDP) |
| HOST            | What Hostname/IP Address to listen on                                                                         | 0.0.0.0        |
| PING_IP_ADDRESS | Active IP address for clients to ping to ensure connectivity                                                  | 127.0.0.1      |
#### Persistent Data

- Mount `config.ini` to `/opt/asphyxia/config.ini`
- Mount save data to `/opt/asphyxia/savedata`
- Mount plugins to `/opt/asphyxia/plugins`
  - **No plugins are included in this image!**
