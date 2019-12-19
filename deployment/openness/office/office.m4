include(../../../maintenance/db-init/sensor-info.m4)dnl
define(`SCENARIO_NAME',defn(`scenario'defn(`SCENARIOIDX')))dnl
define(`OFFICE_NAME',defn(`SCENARIO_NAME')`-office'defn(`OFFICEIDX'))dnl
define(`OFFICE_LOCATION',ifelse(index(defn(`SCENARIO'),defn(`SCENARIO_NAME')),-1,,`defn(defn(`SCENARIO_NAME')`_office'defn(`OFFICEIDX')_location)'))dnl
define(`CAMERA_RTSP_PORT',eval(17000+(defn(`OFFICEIDX')-1)*1000))dnl
define(`CAMERA_RTP_PORT',eval(27000+(defn(`OFFICEIDX')-1)*1000))dnl
define(`CAMERA_PORT_STEP',10)dnl
define(`OFFICE_ZONE',`office'defn(`OFFICEIDX')-zone)dnl
define(`STORAGE_ZONE',`office'defn(`OFFICEIDX')-storage)dnl
define(`DISCOVER_IP_CAMERA',`true')dnl
define(`IP_CAMERA_NETWORK',192.168.defn(`OFFICEIDX').0/24)dnl
define(`DISCOVER_SIMULATED_CAMERA',`true')dnl
