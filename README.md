# Networking-Foundations-HTTP
## Projects
### 1. Image Request
* Store URL string by Enum
* Make API call by URLSession
* Enter name App Transport Security Settings & Allow Arbitrary Loads to YES Allows URL request
* Reload imageView in main thread

### 2. Random dog
* Store URL string by Enum Endpoint
* Struct Model
* Picker View
* Completion Handler
<p float="left">
<img width="139" height="301" src="https://github.com/zijiazhai/Networking-Foundations-HTTP/blob/master/images/randomDog.png">
</p>


## Basic Knowledge
#### Get, Post, Put, Patch, Detele
* `Get` allows you to receive data from some type of api or networking call. 
* `Post` request allows you to send data.
* A `put request` is similar to a post request in structure but instead of sending new data, a put request it meant to update existing data that has already been posted to the server.
* `Patch`, update part of the data without updating the whole thing
* `Datele`, delete removes data from the server

#### URL components
https://swift.org/about/
* Scheme: https://
* Host: swift.org
* Path: /about/

#### Status Code
| Status Code|	Short Description |	Category |
| ----- | -------- | ---------- |
| 100	| Continue | Information
| 200	| OK	| Success
| 301	| Moved | Permanently	Redirection
| 403	| Forbidden	| Client Error
| 404	| Not Found	| Client Error
| 418	| I'm a teapot	| Client Error
| 500	| Internal Server | Error	Server Error

#### Https
HTTPs, a secure extension of HTTP

#### Urlsession
An object that coordinates a group of related network data transfer tasks

#### Tasks
"Tasks" are what URLSession calls network requests.
* `URLSessionDataTask`: Used for perfuming an HTTP request (GET, POST, etc.).
* `URLSessionDownloadTask`: Downloading a file from a server.
* `URLSessionUploadTask`: Uploading a file to a server
* `URLSessionStreamTask`: Getting a continuous stream of data from a server.

#### Jsonserialization VS Codable Protocol
* The old way to do json parsing in ios was using `json serialization`. Using that you had to map out all of the keys manually yourself. So, you had to translate all of it into a dictionary, and then know exactly where the keys were and how they mapped out.
* But with the `new codable protocol`, as long as you create object that adheres to the protocol and has all of the properties that directly match to the json, apple will do the work for you.

#### Example of Using JsonDecoder(Codable Protocol)
* Helpful Link: [JsonDecoder](https://github.com/zijiazhai/parseJsonData)
* [Parsing Json Cheat Sheet](https://github.com/udacity/ios-nd-networking/wiki/JSON-Parsing-Cheat-Sheet)
   ```swift
    import Foundation

    var json = """
      {
      "name": "Earth",
      "type": "rocky",
      "standardGravity": 9.81,
      "hoursInDay": 24
      }""".data(using: .utf8)!
    struct Planet: Codable {
        let name: String
        let type: String
        let standardGravity: Double
        let hoursInDay: Int
    }
    let decoder = JSONDecoder()
    do {
        let earth = try decoder.decode(Planet.self, from: json)
        print(earth)
    } catch {
        print(error)
    }    
   ```
   
#### Json name VS Swift Struct name
   ```swift
   var json = """
{
    "food_name": "Lemon",
    "taste": "sour",
    "number of calories": 17
}
""".data(using: .utf8)!

struct Food: Codable {
    let name: String
    let taste: String
    let calories: Int
    
    enum CodingKeys: String, CodingKey {   
        case name = "food_name"
        case taste = "taste"
        case calories = "number of calories"
    }
}
   ```
   
#### Authentication Flow
1. Creating the request token
2. Validating the request token
3. Creating the session ID
4. Deleting the session(Logging out)

#### Network Link Conditioner
A utility that allows macOS and iOS devices to accurately and consistently simulate adverse networking environments.

