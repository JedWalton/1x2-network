A quick Java prototype for 1x2 Network interview Friday 5th Jan 2024.

### DOCKER COMPOSE
`$ docker compose up`

### RUN
`$ curl http://localhost:8080/gopher`


Comparing Java & Go architectures.

Java (Spring Boot)
-
```
iGamingApp/
├── src/
│   ├── main/
│   │   ├── java/
│   │   │   ├── com.example.igaming/
│   │   │   │   ├── controller/
│   │   │   │   │   └── GameController.java
│   │   │   │   ├── service/
│   │   │   │   │   └── GameService.java
│   │   │   │   ├── repository/
│   │   │   │   │   └── GameRepository.java
│   │   │   │   ├── model/
│   │   │   │   │   └── Game.java
│   │   │   │   └── IGameAppApplication.java
│   │   ├── resources/
│   │   │   ├── application.properties
│   │   │   └── static/
│   ├── test/
│       └── java/
├── pom.xml

```

Golang
```
iGamingApp/
├── cmd/
│   └── server/
│       └── main.go
├── pkg/
│   ├── game/
│   │   ├── handler.go   // HTTP handlers
│   │   ├── service.go   // Business logic
│   │   └── model.go     // Data model
│   ├── middleware/
│   └── repository/
├── .env                 // Environment variables
├── go.mod
├── go.sum
```


