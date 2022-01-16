## asphyxia-docker

Run Asphyxia-Core inside Docker

---

### Configuration

##### Environment Variables
|Name|Info|Default|
|-|-|-|
|LISTENING_PORT|Asphyxia Port (Use in spicecfg)|8083|
|MATCHING_PORT|Port for Matching|5700|
|HOST|What Hostname/IP Address to listen on|0.0.0.0|
|PING_IP_ADDRESS|Active IP address for clients to ping to ensure connectivity|127.0.0.1

#### Persistent Data
- Mount save data to `/opt/savedata`
- Mount plugins to `/opt/plugins`
  - **No plugins are included in this image!**
