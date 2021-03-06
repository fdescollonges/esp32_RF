#include <WiFi.h>
#include <RCSwitch.h>



// Replace with your network credentials
const char* ssid     = "VFEA_Low";
const char* password = "NobodyPersonneInDansMyMonPcPc";

WiFiServer server(80);
char linebuf[80];
int charcount=0;

int  RF_PIN=12;
int BLUE=25;
int RED=26;
int GREEN=27;
int YELLOW=14;


RCSwitch mySwitch = RCSwitch();

void on(int i) {
	for (int j=0;j<10;j++) {
		  	  digitalWrite(GREEN, HIGH);
			  mySwitch.switchOn(1,i);
			  digitalWrite(GREEN, LOW);
			  delay(100);
	}
}

void off(int i) {
	for (int j=0;j<10;j++) {
		  	  digitalWrite(RED, HIGH);
			  mySwitch.switchOff(1,i);
			  digitalWrite(RED, LOW);
			  delay(100);
	}
}

void setup() {
	pinMode(RED,OUTPUT);
	pinMode(BLUE,OUTPUT);
	pinMode(YELLOW,OUTPUT);
	pinMode(GREEN,OUTPUT);
  //Initialize serial and wait for port to open:
  Serial.begin(115200);
  while(!Serial) {
    ; // wait for serial port to connect. Needed for native USB port only
  }
  mySwitch.enableTransmit(RF_PIN);
  btStop();
  pinMode(2, OUTPUT);
  digitalWrite(2, LOW);
  //rtc_gpio_hold_en(GPIO_NUM_14);
  // We start by connecting to a WiFi network
  Serial.println();
  Serial.println();
  Serial.print("Connecting to ");
  Serial.println(ssid);
  digitalWrite(RED, HIGH);
  WiFi.begin(ssid, password);

  // attempt to connect to Wifi network:
  while(WiFi.status() != WL_CONNECTED) {
    // Connect to WPA/WPA2 network. Change this line if using open or WEP network:
    delay(500);
    Serial.print(".");
  }
  Serial.println("");
  digitalWrite(RED, LOW);
  //digitalWrite(BLUE, HIGH);
  Serial.println("WiFi connected");
  Serial.println("IP address: ");
  Serial.println(WiFi.localIP());

  server.begin();
}

void loop() {
  // listen for incoming clients
  WiFiClient client = server.available();
  if (client) {
    Serial.println("New client");
    memset(linebuf,0,sizeof(linebuf));
    charcount=0;
    // an http request ends with a blank line
    boolean currentLineIsBlank = true;
    while (client.connected()) {
      if (client.available()) {
        char c = client.read();
        //Serial.write(c);
        //read char by char HTTP request
        linebuf[charcount]=c;
        if (charcount<sizeof(linebuf)-1) charcount++;
        // if you've gotten to the end of the line (received a newline
        // character) and the line is blank, the http request has ended,
        // so you can send a reply
        if (c == '\n' && currentLineIsBlank) {
          // send a standard http response header
          client.println("HTTP/1.1 200 OK");
          client.println("Content-Type: text/html");
          client.println("Connection: close");  // the connection will be closed after completion of the response
          client.println();
          client.println("<!DOCTYPE HTML><html><head>");
          client.println("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\"></head>");
          client.println("<h1>ESP32 - Web Server</h1>");
          client.println("<p>Plug #1 <a href=\"on1\"><button>ON</button></a>&nbsp;<a href=\"off1\"><button>OFF</button></a></p>");
          client.println("<p>Plug #2 <a href=\"on2\"><button>ON</button></a>&nbsp;<a href=\"off2\"><button>OFF</button></a></p>");
          client.println("<p>Plug #3 <a href=\"on3\"><button>ON</button></a>&nbsp;<a href=\"off3\"><button>OFF</button></a></p>");
           client.println("</html>");
          break;
        }

        if (c == '\n') {
          // you're starting a new line
          currentLineIsBlank = true;
          if (strstr(linebuf,"GET /on1") > 0){
        	  Serial.println("Switch On");
        	  on(1);
          }
          if (strstr(linebuf,"GET /off1") > 0){
        	  Serial.println("Switch off");
        	  off(1);
          }
          if (strstr(linebuf,"GET /on2") > 0){
        	  Serial.println("Switch On");
        	  on(2);
          }
          if (strstr(linebuf,"GET /off2") > 0){
        	  Serial.println("Switch off");
        	  off(2);
          }
          if (strstr(linebuf,"GET /on3") > 0){
        	  Serial.println("Switch On");
        	  on(3);
          }
          if (strstr(linebuf,"GET /off3") > 0){
        	  Serial.println("Switch off");
        	  off(3);
          }
           // you're starting a new line
          currentLineIsBlank = true;
          memset(linebuf,0,sizeof(linebuf));
          charcount=0;
        } else if (c != '\r') {
          // you've gotten a character on the current line
          currentLineIsBlank = false;
        }
      }
    }
    // give the web browser time to receive the data
    delay(1);

    // close the connection:
    client.stop();
    Serial.println("client disconnected");

  }
}
