//
//  Forecast.swift
//  WeatherApp
//
//  Created by Шынгыс Курбан on 17.01.2022.
//

import Foundation

// JSON data
/*
 URL: https://api.openweathermap.org/data/2.5/onecall?lat=43.258509&lon=76.924993&exclude=current,minutely&appid=dd7bf386e7b6fa62abac93ec93b1f47a
 
 Coordinates:
 Almaty - 43.258509, 76.924993
 
 {
   "lat": 43.2585,
   "lon": 76.925,
   "timezone": "Asia/Almaty",
   "timezone_offset": 21600,
   "hourly": [
     {
       "dt": 1642496400,
       "temp": 272.46,
       "feels_like": 272.46,
       "pressure": 1018,
       "humidity": 100,
       "dew_point": 272.46,
       "uvi": 0.4,
       "clouds": 100,
       "visibility": 9491,
       "wind_speed": 1.03,
       "wind_deg": 4,
       "wind_gust": 0.94,
       "weather": [
         {
           "id": 804,
           "main": "Clouds",
           "description": "overcast clouds",
           "icon": "04d"
         }
       ],
       "pop": 0
     },
     {
       "dt": 1642500000,
       "temp": 273.38,
       "feels_like": 273.38,
       "pressure": 1019,
       "humidity": 98,
       "dew_point": 273.11,
       "uvi": 0.17,
       "clouds": 99,
       "visibility": 5873,
       "wind_speed": 1.29,
       "wind_deg": 11,
       "wind_gust": 1.27,
       "weather": [
         {
           "id": 804,
           "main": "Clouds",
           "description": "overcast clouds",
           "icon": "04d"
         }
       ],
       "pop": 0
     },
     {
       "dt": 1642503600,
       "temp": 274.29,
       "feels_like": 274.29,
       "pressure": 1020,
       "humidity": 96,
       "dew_point": 273.72,
       "uvi": 0,
       "clouds": 98,
       "visibility": 5850,
       "wind_speed": 1.11,
       "wind_deg": 19,
       "wind_gust": 1.24,
       "weather": [
         {
           "id": 804,
           "main": "Clouds",
           "description": "overcast clouds",
           "icon": "04d"
         }
       ],
       "pop": 0
     },
     {
       "dt": 1642507200,
       "temp": 275.22,
       "feels_like": 273.86,
       "pressure": 1020,
       "humidity": 94,
       "dew_point": 274.36,
       "uvi": 0,
       "clouds": 98,
       "visibility": 6252,
       "wind_speed": 1.43,
       "wind_deg": 45,
       "wind_gust": 2.01,
       "weather": [
         {
           "id": 804,
           "main": "Clouds",
           "description": "overcast clouds",
           "icon": "04n"
         }
       ],
       "pop": 0
     },
     {
       "dt": 1642510800,
       "temp": 276.2,
       "feels_like": 274.92,
       "pressure": 1020,
       "humidity": 88,
       "dew_point": 274.41,
       "uvi": 0,
       "clouds": 100,
       "visibility": 10000,
       "wind_speed": 1.47,
       "wind_deg": 51,
       "wind_gust": 2.74,
       "weather": [
         {
           "id": 804,
           "main": "Clouds",
           "description": "overcast clouds",
           "icon": "04n"
         }
       ],
       "pop": 0
     },
     {
       "dt": 1642514400,
       "temp": 276.44,
       "feels_like": 276.44,
       "pressure": 1020,
       "humidity": 85,
       "dew_point": 272.62,
       "uvi": 0,
       "clouds": 82,
       "visibility": 10000,
       "wind_speed": 0.81,
       "wind_deg": 345,
       "wind_gust": 1.8,
       "weather": [
         {
           "id": 803,
           "main": "Clouds",
           "description": "broken clouds",
           "icon": "04n"
         }
       ],
       "pop": 0
     },
     {
       "dt": 1642518000,
       "temp": 276.22,
       "feels_like": 276.22,
       "pressure": 1020,
       "humidity": 84,
       "dew_point": 272.24,
       "uvi": 0,
       "clouds": 77,
       "visibility": 10000,
       "wind_speed": 0.17,
       "wind_deg": 354,
       "wind_gust": 1.31,
       "weather": [
         {
           "id": 803,
           "main": "Clouds",
           "description": "broken clouds",
           "icon": "04n"
         }
       ],
       "pop": 0
     },
     {
       "dt": 1642521600,
       "temp": 276.45,
       "feels_like": 276.45,
       "pressure": 1019,
       "humidity": 82,
       "dew_point": 272.02,
       "uvi": 0,
       "clouds": 76,
       "visibility": 3147,
       "wind_speed": 0.51,
       "wind_deg": 96,
       "wind_gust": 1.26,
       "weather": [
         {
           "id": 803,
           "main": "Clouds",
           "description": "broken clouds",
           "icon": "04n"
         }
       ],
       "pop": 0
     },
     {
       "dt": 1642525200,
       "temp": 276.29,
       "feels_like": 276.29,
       "pressure": 1018,
       "humidity": 81,
       "dew_point": 271.71,
       "uvi": 0,
       "clouds": 73,
       "visibility": 2984,
       "wind_speed": 0.82,
       "wind_deg": 97,
       "wind_gust": 1.6,
       "weather": [
         {
           "id": 803,
           "main": "Clouds",
           "description": "broken clouds",
           "icon": "04n"
         }
       ],
       "pop": 0
     },
     {
       "dt": 1642528800,
       "temp": 275.94,
       "feels_like": 275.94,
       "pressure": 1017,
       "humidity": 81,
       "dew_point": 271.22,
       "uvi": 0,
       "clouds": 74,
       "visibility": 10000,
       "wind_speed": 0.4,
       "wind_deg": 78,
       "wind_gust": 1.43,
       "weather": [
         {
           "id": 803,
           "main": "Clouds",
           "description": "broken clouds",
           "icon": "04n"
         }
       ],
       "pop": 0
     },
     {
       "dt": 1642532400,
       "temp": 275.64,
       "feels_like": 275.64,
       "pressure": 1016,
       "humidity": 80,
       "dew_point": 270.79,
       "uvi": 0,
       "clouds": 93,
       "visibility": 10000,
       "wind_speed": 0.56,
       "wind_deg": 184,
       "wind_gust": 1.14,
       "weather": [
         {
           "id": 804,
           "main": "Clouds",
           "description": "overcast clouds",
           "icon": "04n"
         }
       ],
       "pop": 0
     },
     {
       "dt": 1642536000,
       "temp": 275.89,
       "feels_like": 275.89,
       "pressure": 1014,
       "humidity": 77,
       "dew_point": 270.45,
       "uvi": 0,
       "clouds": 96,
       "visibility": 10000,
       "wind_speed": 0.19,
       "wind_deg": 137,
       "wind_gust": 1.23,
       "weather": [
         {
           "id": 804,
           "main": "Clouds",
           "description": "overcast clouds",
           "icon": "04n"
         }
       ],
       "pop": 0
     },
     {
       "dt": 1642539600,
       "temp": 275.07,
       "feels_like": 275.07,
       "pressure": 1015,
       "humidity": 83,
       "dew_point": 270.74,
       "uvi": 0,
       "clouds": 98,
       "visibility": 3012,
       "wind_speed": 1.14,
       "wind_deg": 274,
       "wind_gust": 1.84,
       "weather": [
         {
           "id": 804,
           "main": "Clouds",
           "description": "overcast clouds",
           "icon": "04n"
         }
       ],
       "pop": 0
     },
     {
       "dt": 1642543200,
       "temp": 275.23,
       "feels_like": 275.23,
       "pressure": 1014,
       "humidity": 86,
       "dew_point": 271.48,
       "uvi": 0,
       "clouds": 98,
       "visibility": 1914,
       "wind_speed": 0.39,
       "wind_deg": 333,
       "wind_gust": 1.36,
       "weather": [
         {
           "id": 804,
           "main": "Clouds",
           "description": "overcast clouds",
           "icon": "04n"
         }
       ],
       "pop": 0
     },
     {
       "dt": 1642546800,
       "temp": 274.8,
       "feels_like": 274.8,
       "pressure": 1014,
       "humidity": 86,
       "dew_point": 270.97,
       "uvi": 0,
       "clouds": 99,
       "visibility": 2778,
       "wind_speed": 0.27,
       "wind_deg": 235,
       "wind_gust": 1.07,
       "weather": [
         {
           "id": 804,
           "main": "Clouds",
           "description": "overcast clouds",
           "icon": "04n"
         }
       ],
       "pop": 0
     },
     {
       "dt": 1642550400,
       "temp": 275.06,
       "feels_like": 275.06,
       "pressure": 1013,
       "humidity": 84,
       "dew_point": 270.94,
       "uvi": 0,
       "clouds": 99,
       "visibility": 2108,
       "wind_speed": 0.8,
       "wind_deg": 279,
       "wind_gust": 1.32,
       "weather": [
         {
           "id": 804,
           "main": "Clouds",
           "description": "overcast clouds",
           "icon": "04n"
         }
       ],
       "pop": 0
     },
     {
       "dt": 1642554000,
       "temp": 274.51,
       "feels_like": 274.51,
       "pressure": 1013,
       "humidity": 85,
       "dew_point": 270.62,
       "uvi": 0,
       "clouds": 100,
       "visibility": 2464,
       "wind_speed": 0.58,
       "wind_deg": 287,
       "wind_gust": 1.06,
       "weather": [
         {
           "id": 804,
           "main": "Clouds",
           "description": "overcast clouds",
           "icon": "04n"
         }
       ],
       "pop": 0
     },
     {
       "dt": 1642557600,
       "temp": 274.53,
       "feels_like": 272.84,
       "pressure": 1014,
       "humidity": 87,
       "dew_point": 270.92,
       "uvi": 0,
       "clouds": 100,
       "visibility": 1659,
       "wind_speed": 1.59,
       "wind_deg": 259,
       "wind_gust": 2.02,
       "weather": [
         {
           "id": 804,
           "main": "Clouds",
           "description": "overcast clouds",
           "icon": "04n"
         }
       ],
       "pop": 0
     },
     {
       "dt": 1642561200,
       "temp": 274.8,
       "feels_like": 274.8,
       "pressure": 1013,
       "humidity": 86,
       "dew_point": 270.98,
       "uvi": 0.12,
       "clouds": 100,
       "visibility": 2810,
       "wind_speed": 1.13,
       "wind_deg": 268,
       "wind_gust": 1.72,
       "weather": [
         {
           "id": 804,
           "main": "Clouds",
           "description": "overcast clouds",
           "icon": "04d"
         }
       ],
       "pop": 0
     },
     {
       "dt": 1642564800,
       "temp": 274.84,
       "feels_like": 272.64,
       "pressure": 1014,
       "humidity": 86,
       "dew_point": 271.21,
       "uvi": 0.42,
       "clouds": 100,
       "visibility": 2355,
       "wind_speed": 2.02,
       "wind_deg": 251,
       "wind_gust": 2.91,
       "weather": [
         {
           "id": 804,
           "main": "Clouds",
           "description": "overcast clouds",
           "icon": "04d"
         }
       ],
       "pop": 0
     },
     {
       "dt": 1642568400,
       "temp": 275.93,
       "feels_like": 274.13,
       "pressure": 1013,
       "humidity": 80,
       "dew_point": 271.2,
       "uvi": 0.85,
       "clouds": 100,
       "visibility": 10000,
       "wind_speed": 1.83,
       "wind_deg": 304,
       "wind_gust": 2.03,
       "weather": [
         {
           "id": 804,
           "main": "Clouds",
           "description": "overcast clouds",
           "icon": "04d"
         }
       ],
       "pop": 0
     },
     {
       "dt": 1642572000,
       "temp": 276.21,
       "feels_like": 274.63,
       "pressure": 1014,
       "humidity": 79,
       "dew_point": 271.43,
       "uvi": 1.2,
       "clouds": 100,
       "visibility": 10000,
       "wind_speed": 1.69,
       "wind_deg": 292,
       "wind_gust": 1.97,
       "weather": [
         {
           "id": 804,
           "main": "Clouds",
           "description": "overcast clouds",
           "icon": "04d"
         }
       ],
       "pop": 0
     },
     {
       "dt": 1642575600,
       "temp": 276.18,
       "feels_like": 274.66,
       "pressure": 1014,
       "humidity": 80,
       "dew_point": 271.59,
       "uvi": 0.96,
       "clouds": 100,
       "visibility": 10000,
       "wind_speed": 1.64,
       "wind_deg": 290,
       "wind_gust": 1.84,
       "weather": [
         {
           "id": 804,
           "main": "Clouds",
           "description": "overcast clouds",
           "icon": "04d"
         }
       ],
       "pop": 0
     },
     {
       "dt": 1642579200,
       "temp": 275.98,
       "feels_like": 273.23,
       "pressure": 1015,
       "humidity": 84,
       "dew_point": 271.93,
       "uvi": 0.83,
       "clouds": 100,
       "visibility": 5995,
       "wind_speed": 2.78,
       "wind_deg": 270,
       "wind_gust": 3.57,
       "weather": [
         {
           "id": 804,
           "main": "Clouds",
           "description": "overcast clouds",
           "icon": "04d"
         }
       ],
       "pop": 0
     },
     {
       "dt": 1642582800,
       "temp": 276.22,
       "feels_like": 273.21,
       "pressure": 1016,
       "humidity": 82,
       "dew_point": 272.01,
       "uvi": 0.54,
       "clouds": 100,
       "visibility": 10000,
       "wind_speed": 3.16,
       "wind_deg": 284,
       "wind_gust": 3.85,
       "weather": [
         {
           "id": 804,
           "main": "Clouds",
           "description": "overcast clouds",
           "icon": "04d"
         }
       ],
       "pop": 0.07
     },
     {
       "dt": 1642586400,
       "temp": 275.68,
       "feels_like": 272.84,
       "pressure": 1018,
       "humidity": 86,
       "dew_point": 272.05,
       "uvi": 0.2,
       "clouds": 100,
       "visibility": 6005,
       "wind_speed": 2.82,
       "wind_deg": 262,
       "wind_gust": 4.33,
       "weather": [
         {
           "id": 804,
           "main": "Clouds",
           "description": "overcast clouds",
           "icon": "04d"
         }
       ],
       "pop": 0.14
     },
     {
       "dt": 1642590000,
       "temp": 276.93,
       "feels_like": 276.93,
       "pressure": 1017,
       "humidity": 77,
       "dew_point": 271.75,
       "uvi": 0,
       "clouds": 100,
       "visibility": 10000,
       "wind_speed": 1.2,
       "wind_deg": 210,
       "wind_gust": 2.73,
       "weather": [
         {
           "id": 804,
           "main": "Clouds",
           "description": "overcast clouds",
           "icon": "04d"
         }
       ],
       "pop": 0.19
     },
     {
       "dt": 1642593600,
       "temp": 276.06,
       "feels_like": 274.89,
       "pressure": 1018,
       "humidity": 83,
       "dew_point": 271.88,
       "uvi": 0,
       "clouds": 100,
       "visibility": 10000,
       "wind_speed": 1.38,
       "wind_deg": 283,
       "wind_gust": 2.05,
       "weather": [
         {
           "id": 500,
           "main": "Rain",
           "description": "light rain",
           "icon": "10n"
         }
       ],
       "pop": 0.28,
       "rain": {
         "1h": 0.23
       }
     },
     {
       "dt": 1642597200,
       "temp": 276.67,
       "feels_like": 274.75,
       "pressure": 1018,
       "humidity": 82,
       "dew_point": 272.4,
       "uvi": 0,
       "clouds": 100,
       "visibility": 10000,
       "wind_speed": 2.04,
       "wind_deg": 174,
       "wind_gust": 3,
       "weather": [
         {
           "id": 500,
           "main": "Rain",
           "description": "light rain",
           "icon": "10n"
         }
       ],
       "pop": 0.64,
       "rain": {
         "1h": 0.52
       }
     },
     {
       "dt": 1642600800,
       "temp": 277.59,
       "feels_like": 275.23,
       "pressure": 1019,
       "humidity": 83,
       "dew_point": 273.39,
       "uvi": 0,
       "clouds": 100,
       "visibility": 9206,
       "wind_speed": 2.68,
       "wind_deg": 191,
       "wind_gust": 4.44,
       "weather": [
         {
           "id": 500,
           "main": "Rain",
           "description": "light rain",
           "icon": "10n"
         }
       ],
       "pop": 0.67,
       "rain": {
         "1h": 0.7
       }
     },
     {
       "dt": 1642604400,
       "temp": 278.46,
       "feels_like": 276.02,
       "pressure": 1018,
       "humidity": 79,
       "dew_point": 273.51,
       "uvi": 0,
       "clouds": 100,
       "visibility": 10000,
       "wind_speed": 3.01,
       "wind_deg": 182,
       "wind_gust": 4.52,
       "weather": [
         {
           "id": 500,
           "main": "Rain",
           "description": "light rain",
           "icon": "10n"
         }
       ],
       "pop": 0.69,
       "rain": {
         "1h": 0.6
       }
     },
     {
       "dt": 1642608000,
       "temp": 278.53,
       "feels_like": 276.9,
       "pressure": 1018,
       "humidity": 70,
       "dew_point": 271.92,
       "uvi": 0,
       "clouds": 100,
       "visibility": 10000,
       "wind_speed": 2.06,
       "wind_deg": 199,
       "wind_gust": 2.78,
       "weather": [
         {
           "id": 804,
           "main": "Clouds",
           "description": "overcast clouds",
           "icon": "04n"
         }
       ],
       "pop": 0.69
     },
     {
       "dt": 1642611600,
       "temp": 277.33,
       "feels_like": 277.33,
       "pressure": 1019,
       "humidity": 70,
       "dew_point": 270.94,
       "uvi": 0,
       "clouds": 100,
       "visibility": 10000,
       "wind_speed": 1.18,
       "wind_deg": 253,
       "wind_gust": 2.1,
       "weather": [
         {
           "id": 804,
           "main": "Clouds",
           "description": "overcast clouds",
           "icon": "04n"
         }
       ],
       "pop": 0.65
     },
     {
       "dt": 1642615200,
       "temp": 276.03,
       "feels_like": 276.03,
       "pressure": 1020,
       "humidity": 76,
       "dew_point": 270.74,
       "uvi": 0,
       "clouds": 92,
       "visibility": 10000,
       "wind_speed": 1.11,
       "wind_deg": 218,
       "wind_gust": 1.19,
       "weather": [
         {
           "id": 804,
           "main": "Clouds",
           "description": "overcast clouds",
           "icon": "04n"
         }
       ],
       "pop": 0.65
     },
     {
       "dt": 1642618800,
       "temp": 275.91,
       "feels_like": 275.91,
       "pressure": 1021,
       "humidity": 75,
       "dew_point": 270.34,
       "uvi": 0,
       "clouds": 66,
       "visibility": 10000,
       "wind_speed": 1.08,
       "wind_deg": 217,
       "wind_gust": 1.21,
       "weather": [
         {
           "id": 803,
           "main": "Clouds",
           "description": "broken clouds",
           "icon": "04n"
         }
       ],
       "pop": 0.08
     },
     {
       "dt": 1642622400,
       "temp": 275.53,
       "feels_like": 273.95,
       "pressure": 1022,
       "humidity": 77,
       "dew_point": 270.39,
       "uvi": 0,
       "clouds": 60,
       "visibility": 10000,
       "wind_speed": 1.61,
       "wind_deg": 215,
       "wind_gust": 1.9,
       "weather": [
         {
           "id": 803,
           "main": "Clouds",
           "description": "broken clouds",
           "icon": "04n"
         }
       ],
       "pop": 0.08
     },
     {
       "dt": 1642626000,
       "temp": 275.77,
       "feels_like": 274.41,
       "pressure": 1022,
       "humidity": 83,
       "dew_point": 271.64,
       "uvi": 0,
       "clouds": 73,
       "visibility": 6463,
       "wind_speed": 1.48,
       "wind_deg": 199,
       "wind_gust": 2.05,
       "weather": [
         {
           "id": 803,
           "main": "Clouds",
           "description": "broken clouds",
           "icon": "04n"
         }
       ],
       "pop": 0.04
     },
     {
       "dt": 1642629600,
       "temp": 275.83,
       "feels_like": 275.83,
       "pressure": 1022,
       "humidity": 87,
       "dew_point": 272.27,
       "uvi": 0,
       "clouds": 80,
       "visibility": 6517,
       "wind_speed": 1.04,
       "wind_deg": 195,
       "wind_gust": 1.68,
       "weather": [
         {
           "id": 803,
           "main": "Clouds",
           "description": "broken clouds",
           "icon": "04n"
         }
       ],
       "pop": 0.04
     },
     {
       "dt": 1642633200,
       "temp": 275.52,
       "feels_like": 275.52,
       "pressure": 1022,
       "humidity": 93,
       "dew_point": 272.99,
       "uvi": 0,
       "clouds": 84,
       "visibility": 5735,
       "wind_speed": 0.54,
       "wind_deg": 272,
       "wind_gust": 1.09,
       "weather": [
         {
           "id": 600,
           "main": "Snow",
           "description": "light snow",
           "icon": "13n"
         }
       ],
       "pop": 0.27,
       "snow": {
         "1h": 0.14
       }
     },
     {
       "dt": 1642636800,
       "temp": 275.32,
       "feels_like": 273.74,
       "pressure": 1023,
       "humidity": 96,
       "dew_point": 273.25,
       "uvi": 0,
       "clouds": 86,
       "visibility": 1531,
       "wind_speed": 1.59,
       "wind_deg": 328,
       "wind_gust": 2.29,
       "weather": [
         {
           "id": 600,
           "main": "Snow",
           "description": "light snow",
           "icon": "13n"
         }
       ],
       "pop": 0.39,
       "snow": {
         "1h": 0.3
       }
     },
     {
       "dt": 1642640400,
       "temp": 274.94,
       "feels_like": 272.92,
       "pressure": 1024,
       "humidity": 98,
       "dew_point": 273.12,
       "uvi": 0,
       "clouds": 99,
       "visibility": 822,
       "wind_speed": 1.88,
       "wind_deg": 337,
       "wind_gust": 2.32,
       "weather": [
         {
           "id": 600,
           "main": "Snow",
           "description": "light snow",
           "icon": "13n"
         }
       ],
       "pop": 0.42,
       "snow": {
         "1h": 0.39
       }
     },
     {
       "dt": 1642644000,
       "temp": 274.58,
       "feels_like": 272.69,
       "pressure": 1025,
       "humidity": 98,
       "dew_point": 272.75,
       "uvi": 0,
       "clouds": 99,
       "visibility": 756,
       "wind_speed": 1.74,
       "wind_deg": 329,
       "wind_gust": 1.97,
       "weather": [
         {
           "id": 600,
           "main": "Snow",
           "description": "light snow",
           "icon": "13n"
         }
       ],
       "pop": 0.47,
       "snow": {
         "1h": 0.45
       }
     },
     {
       "dt": 1642647600,
       "temp": 274.32,
       "feels_like": 272.52,
       "pressure": 1026,
       "humidity": 99,
       "dew_point": 272.51,
       "uvi": 0.1,
       "clouds": 99,
       "visibility": 166,
       "wind_speed": 1.64,
       "wind_deg": 320,
       "wind_gust": 1.89,
       "weather": [
         {
           "id": 601,
           "main": "Snow",
           "description": "snow",
           "icon": "13d"
         }
       ],
       "pop": 0.5,
       "snow": {
         "1h": 0.61
       }
     },
     {
       "dt": 1642651200,
       "temp": 274.16,
       "feels_like": 272.17,
       "pressure": 1026,
       "humidity": 99,
       "dew_point": 272.41,
       "uvi": 0.32,
       "clouds": 99,
       "visibility": 39,
       "wind_speed": 1.76,
       "wind_deg": 323,
       "wind_gust": 1.76,
       "weather": [
         {
           "id": 601,
           "main": "Snow",
           "description": "snow",
           "icon": "13d"
         }
       ],
       "pop": 0.56,
       "snow": {
         "1h": 0.86
       }
     },
     {
       "dt": 1642654800,
       "temp": 274.11,
       "feels_like": 272.27,
       "pressure": 1027,
       "humidity": 99,
       "dew_point": 272.43,
       "uvi": 0.63,
       "clouds": 100,
       "visibility": 29,
       "wind_speed": 1.65,
       "wind_deg": 312,
       "wind_gust": 1.59,
       "weather": [
         {
           "id": 601,
           "main": "Snow",
           "description": "snow",
           "icon": "13d"
         }
       ],
       "pop": 0.72,
       "snow": {
         "1h": 0.8
       }
     },
     {
       "dt": 1642658400,
       "temp": 274.2,
       "feels_like": 271.99,
       "pressure": 1027,
       "humidity": 99,
       "dew_point": 272.5,
       "uvi": 0.89,
       "clouds": 100,
       "visibility": 29,
       "wind_speed": 1.94,
       "wind_deg": 307,
       "wind_gust": 2.11,
       "weather": [
         {
           "id": 601,
           "main": "Snow",
           "description": "snow",
           "icon": "13d"
         }
       ],
       "pop": 0.72,
       "snow": {
         "1h": 0.62
       }
     },
     {
       "dt": 1642662000,
       "temp": 274.11,
       "feels_like": 271.61,
       "pressure": 1027,
       "humidity": 99,
       "dew_point": 272.42,
       "uvi": 0.55,
       "clouds": 100,
       "visibility": 27,
       "wind_speed": 2.17,
       "wind_deg": 309,
       "wind_gust": 2.49,
       "weather": [
         {
           "id": 601,
           "main": "Snow",
           "description": "snow",
           "icon": "13d"
         }
       ],
       "pop": 0.83,
       "snow": {
         "1h": 0.52
       }
     },
     {
       "dt": 1642665600,
       "temp": 273.9,
       "feels_like": 271.92,
       "pressure": 1027,
       "humidity": 99,
       "dew_point": 272.21,
       "uvi": 0.47,
       "clouds": 100,
       "visibility": 31,
       "wind_speed": 1.73,
       "wind_deg": 319,
       "wind_gust": 1.67,
       "weather": [
         {
           "id": 600,
           "main": "Snow",
           "description": "light snow",
           "icon": "13d"
         }
       ],
       "pop": 0.83,
       "snow": {
         "1h": 0.43
       }
     }
   ],
   "daily": [
     {
       "dt": 1642489200,
       "sunrise": 1642472402,
       "sunset": 1642506285,
       "moonrise": 1642506840,
       "moonset": 1642474380,
       "moon_phase": 0.5,
       "temp": {
         "day": 274.48,
         "min": 272.46,
         "max": 276.65,
         "night": 276.29,
         "eve": 276.2,
         "morn": 276.32
       },
       "feels_like": {
         "day": 272.5,
         "night": 276.29,
         "eve": 274.92,
         "morn": 276.32
       },
       "pressure": 1020,
       "humidity": 95,
       "dew_point": 273.77,
       "wind_speed": 1.79,
       "wind_deg": 360,
       "wind_gust": 2.74,
       "weather": [
         {
           "id": 804,
           "main": "Clouds",
           "description": "overcast clouds",
           "icon": "04d"
         }
       ],
       "clouds": 92,
       "pop": 0.29,
       "uvi": 0.71
     },
     {
       "dt": 1642575600,
       "sunrise": 1642558765,
       "sunset": 1642592760,
       "moonrise": 1642597140,
       "moonset": 1642563000,
       "moon_phase": 0.54,
       "temp": {
         "day": 276.18,
         "min": 274.51,
         "max": 278.53,
         "night": 277.33,
         "eve": 276.67,
         "morn": 274.51
       },
       "feels_like": {
         "day": 274.66,
         "night": 277.33,
         "eve": 274.75,
         "morn": 274.51
       },
       "pressure": 1014,
       "humidity": 80,
       "dew_point": 271.59,
       "wind_speed": 3.16,
       "wind_deg": 284,
       "wind_gust": 4.52,
       "weather": [
         {
           "id": 500,
           "main": "Rain",
           "description": "light rain",
           "icon": "10d"
         }
       ],
       "clouds": 100,
       "pop": 0.69,
       "rain": 2.05,
       "uvi": 1.2
     },
     {
       "dt": 1642662000,
       "sunrise": 1642645127,
       "sunset": 1642679236,
       "moonrise": 1642687560,
       "moonset": 1642651200,
       "moon_phase": 0.57,
       "temp": {
         "day": 274.11,
         "min": 272.23,
         "max": 276.03,
         "night": 272.23,
         "eve": 273.05,
         "morn": 274.94
       },
       "feels_like": {
         "day": 271.61,
         "night": 269.66,
         "eve": 271.08,
         "morn": 272.92
       },
       "pressure": 1027,
       "humidity": 99,
       "dew_point": 272.42,
       "wind_speed": 2.17,
       "wind_deg": 309,
       "wind_gust": 2.49,
       "weather": [
         {
           "id": 601,
           "main": "Snow",
           "description": "snow",
           "icon": "13d"
         }
       ],
       "clouds": 100,
       "pop": 0.83,
       "snow": 5.37,
       "uvi": 0.89
     },
     {
       "dt": 1642748400,
       "sunrise": 1642731486,
       "sunset": 1642765712,
       "moonrise": 1642777980,
       "moonset": 1642739160,
       "moon_phase": 0.6,
       "temp": {
         "day": 274.55,
         "min": 271.88,
         "max": 275.54,
         "night": 272.88,
         "eve": 273.49,
         "morn": 271.9
       },
       "feels_like": {
         "day": 273.24,
         "night": 272.88,
         "eve": 273.49,
         "morn": 269.72
       },
       "pressure": 1016,
       "humidity": 72,
       "dew_point": 268.32,
       "wind_speed": 2.08,
       "wind_deg": 146,
       "wind_gust": 1.94,
       "weather": [
         {
           "id": 800,
           "main": "Clear",
           "description": "clear sky",
           "icon": "01d"
         }
       ],
       "clouds": 4,
       "pop": 0.03,
       "uvi": 1.51
     },
     {
       "dt": 1642834800,
       "sunrise": 1642817844,
       "sunset": 1642852189,
       "moonrise": 1642868400,
       "moonset": 1642826940,
       "moon_phase": 0.64,
       "temp": {
         "day": 273.94,
         "min": 271.7,
         "max": 275.1,
         "night": 272.77,
         "eve": 273.26,
         "morn": 271.7
       },
       "feels_like": {
         "day": 272.39,
         "night": 272.77,
         "eve": 273.26,
         "morn": 271.7
       },
       "pressure": 1023,
       "humidity": 75,
       "dew_point": 268.57,
       "wind_speed": 1.46,
       "wind_deg": 202,
       "wind_gust": 1.44,
       "weather": [
         {
           "id": 803,
           "main": "Clouds",
           "description": "broken clouds",
           "icon": "04d"
         }
       ],
       "clouds": 68,
       "pop": 0,
       "uvi": 1.37
     },
     {
       "dt": 1642921200,
       "sunrise": 1642904199,
       "sunset": 1642938667,
       "moonrise": 1642958940,
       "moonset": 1642914660,
       "moon_phase": 0.67,
       "temp": {
         "day": 273.18,
         "min": 271.26,
         "max": 273.9,
         "night": 271.79,
         "eve": 272.33,
         "morn": 271.38
       },
       "feels_like": {
         "day": 271.23,
         "night": 271.79,
         "eve": 272.33,
         "morn": 271.38
       },
       "pressure": 1027,
       "humidity": 70,
       "dew_point": 266.88,
       "wind_speed": 1.63,
       "wind_deg": 4,
       "wind_gust": 1.03,
       "weather": [
         {
           "id": 803,
           "main": "Clouds",
           "description": "broken clouds",
           "icon": "04d"
         }
       ],
       "clouds": 66,
       "pop": 0,
       "uvi": 2
     },
     {
       "dt": 1643007600,
       "sunrise": 1642990552,
       "sunset": 1643025145,
       "moonrise": 0,
       "moonset": 1643002380,
       "moon_phase": 0.7,
       "temp": {
         "day": 271.4,
         "min": 270.12,
         "max": 272.02,
         "night": 271.29,
         "eve": 271.5,
         "morn": 270.17
       },
       "feels_like": {
         "day": 269.19,
         "night": 271.29,
         "eve": 271.5,
         "morn": 270.17
       },
       "pressure": 1029,
       "humidity": 78,
       "dew_point": 266.29,
       "wind_speed": 1.63,
       "wind_deg": 354,
       "wind_gust": 1.02,
       "weather": [
         {
           "id": 804,
           "main": "Clouds",
           "description": "overcast clouds",
           "icon": "04d"
         }
       ],
       "clouds": 100,
       "pop": 0.28,
       "uvi": 2
     },
     {
       "dt": 1643094000,
       "sunrise": 1643076903,
       "sunset": 1643111624,
       "moonrise": 1643049480,
       "moonset": 1643090160,
       "moon_phase": 0.75,
       "temp": {
         "day": 271.72,
         "min": 270.48,
         "max": 272.86,
         "night": 271.13,
         "eve": 271.87,
         "morn": 270.48
       },
       "feels_like": {
         "day": 269.51,
         "night": 271.13,
         "eve": 271.87,
         "morn": 270.48
       },
       "pressure": 1030,
       "humidity": 87,
       "dew_point": 268.2,
       "wind_speed": 1.75,
       "wind_deg": 25,
       "wind_gust": 1.73,
       "weather": [
         {
           "id": 600,
           "main": "Snow",
           "description": "light snow",
           "icon": "13d"
         }
       ],
       "clouds": 100,
       "pop": 0.4,
       "snow": 0.58,
       "uvi": 2
     }
   ]
 }
                 

 
 */

// MARK: - Welcome
struct Forecast: Codable {
    let lat, lon: Double?
    let timezone: String
    let timezoneOffset: Int?
    let hourly: [Hourly]
    let daily: [Daily]

    enum CodingKeys: String, CodingKey {
        case lat, lon, timezone
        case timezoneOffset = "timezone_offset"
        case hourly, daily
    }
}

// MARK: - Daily
struct Daily: Codable {
    let dt, sunrise, sunset, moonrise: Int?
    let moonset: Int?
    let moonPhase: Double?
    let temp: Temp
    let feelsLike: FeelsLike
    let pressure, humidity: Int?
    let dewPoint, windSpeed: Double?
    let windDeg: Int?
    let windGust: Double?
    let weather: [Weather]
    let clouds: Int?
    let pop, uvi, rain, snow: Double?

    enum CodingKeys: String, CodingKey {
        case dt, sunrise, sunset, moonrise, moonset
        case moonPhase = "moon_phase"
        case temp
        case feelsLike = "feels_like"
        case pressure, humidity
        case dewPoint = "dew_point"
        case windSpeed = "wind_speed"
        case windDeg = "wind_deg"
        case windGust = "wind_gust"
        case weather, clouds, pop, uvi, rain, snow
    }
}

// MARK: - FeelsLike
struct FeelsLike: Codable {
    let day, night, eve, morn: Double
}

// MARK: - Temp
struct Temp: Codable {
    let day, min, max, night: Double
    let eve, morn: Double
}

// MARK: - Weather
struct Weather: Codable {
    let id: Int?
    let main: String //Main?
    let weatherDescription: String //Description?
    let icon: String? //Icon?

    enum CodingKeys: String, CodingKey {
        case id, main
        case weatherDescription = "description"
        case icon
    }
}

//enum Icon: String, Codable {
//    case the01D = "01d"
//    case the04D = "04d"
//    case the04N = "04n"
//    case the10D = "10d"
//    case the10N = "10n"
//    case the13D = "13d"
//}
//
//enum Main: String, Codable {
//    case clear = "Clear"
//    case clouds = "Clouds"
//    case rain = "Rain"
//    case snow = "Snow"
//}
//
//enum Description: String, Codable {
//    case brokenClouds = "broken clouds"
//    case clearSky = "clear sky"
//    case lightRain = "light rain"
//    case lightSnow = "light snow"
//    case moderateRain = "moderate rain"
//    case overcastClouds = "overcast clouds"
//    case rainAndSnow = "rain and snow"
//}

// MARK: - Hourly
struct Hourly: Codable {
    let dt: Int?
    let temp, feelsLike: Double
    let pressure, humidity: Int?
    let dewPoint, uvi: Double?
    let clouds, visibility: Int?
    let windSpeed: Double?
    let windDeg: Int?
    let windGust: Double?
    let weather: [Weather]
    let pop: Double?
    let rain: Rain?

    enum CodingKeys: String, CodingKey {
        case dt, temp
        case feelsLike = "feels_like"
        case pressure, humidity
        case dewPoint = "dew_point"
        case uvi, clouds, visibility
        case windSpeed = "wind_speed"
        case windDeg = "wind_deg"
        case windGust = "wind_gust"
        case weather, pop, rain
    }
}

// MARK: - Rain
struct Rain: Codable {
    let the1H: Double?

    enum CodingKeys: String, CodingKey {
        case the1H = "1h"
    }
}
