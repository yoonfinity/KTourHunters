//
//  LocationsDataService.swift
//  MapTest
//
//  Created by Nick Sarno on 11/26/21.
//

import Foundation
import MapKit

class LocationsDataService {
    
    static let locations: [Location] = [
        Location(
            name: "Gyeongbokgung Palace",
            cityName: "Seoul",
            nameKorean: "경복궁",
            cityNameKorean: "서울",
            addressKorean: "서울 종로구 사직로 161 경복궁",
            coordinates: CLLocationCoordinate2D(latitude: 37.575832, longitude: 126.973857),
            description: "Gyeongbokgung (Korean: 경복궁) is a former royal palace in Seoul, South Korea. Established in 1395, it was the first royal palace of the Joseon dynasty, and is now one of the most significant tourist attractions in the country.",
            imageNames: [
                "seoul-gyeongbokgung-palace-1",
                "seoul-gyeongbokgung-palace-2",
                "seoul-gyeongbokgung-palace-3",
            ],
            link: "https://en.wikipedia.org/wiki/Gyeongbokgung"),
        Location(
            name: "N Seoul Tower",
            cityName: "Seoul",
            nameKorean: "N 서울타워",
            cityNameKorean: "서울",
            addressKorean: "서울 용산구 남산공원길 105",
            coordinates: CLLocationCoordinate2D(latitude: 37.551170, longitude: 126.988228),
            description: "The N Seoul Tower (Korean: N 서울타워), officially the YTN Seoul Tower[1] and a.k.a. Namsan Tower, is a communication and observation tower located on the summit of Namsan (262 m (860 ft)) in central Seoul, South Korea. The 236-metre-tall (774 ft) structure marks the second highest point in Seoul and is considered a local landmark.",
            imageNames: [
                "seoul-n-seoul-tower-1",
                "seoul-n-seoul-tower-2",
                "seoul-n-seoul-tower-3",
            ],
            link: "https://en.wikipedia.org/wiki/N_Seoul_Tower"),
        Location(
            name: "Bukchon Hanok Village",
            cityName: "Seoul",
            nameKorean: "북촌 한옥마을",
            cityNameKorean: "서울",
            addressKorean: "서울 종로구 계동길 37",
            coordinates: CLLocationCoordinate2D(latitude: 37.582883, longitude: 126.983567),
            description: "Bukchon Hanok Village (Korean: 북촌한옥마을) is a residential neighborhood in Jongno District, Seoul, South Korea. It has many restored traditional Korean houses, called hanok. This has made it a popular tourist destination.",
            imageNames: [
                "seoul-bukchon-1",
                "seoul-bukchon-2",
                "seoul-bukchon-3",
            ],
            link: "https://en.wikipedia.org/wiki/Bukchon_Hanok_Village"),
        Location(
            name: "Myeongdong Shopping Street",
            cityName: "Seoul",
            nameKorean: "명동거리",
            cityNameKorean: "서울",
            addressKorean: "서울 중구 명동2가",
            coordinates: CLLocationCoordinate2D(latitude: 37.563183, longitude: 126.98535),
            description: "Myeong-dong[a] (Korean: 명동; lit. 'bright neighborhood') is a dong (neighborhood) in Jung District, Seoul, South Korea between Chungmu-ro, Eulji-ro, and Namdaemun-ro. Myeongdong is known for being one of Seoul's main shopping, parade route, and tourism districts.[1] In 2023, it was listed as the ninth most expensive shopping street in the world.[2] The area is known for its two historically significant sites, namely the Myeongdong Cathedral and the Myeongdong Theater [ko]. Performances at Myeongdong Nanta Theater are popular.[3]",
            imageNames: [
                "seoul-myeongdong-1",
                "seoul-myeongdong-2",
                "seoul-myeongdong-3",
            ],
            link: "https://en.wikipedia.org/wiki/Myeong-dong"),
        Location(
            name: "Changdeokgung Palace",
            cityName: "Seoul",
            nameKorean: "TBD",
            cityNameKorean: "서울",
            addressKorean: "TBD",
            coordinates: CLLocationCoordinate2D(latitude: 37, longitude: 126),
            description: "TBD",
            imageNames: [
                "TBD",
                "TBD",
                "TBD",
            ],
            link: "TBD"),
        Location(
            name: "Insadong",
            cityName: "Seoul",
            nameKorean: "TBD",
            cityNameKorean: "서울",
            addressKorean: "TBD",
            coordinates: CLLocationCoordinate2D(latitude: 37, longitude: 126),
            description: "TBD",
            imageNames: [
                "TBD",
                "TBD",
                "TBD",
            ],
            link: "TBD"),
        Location(
            name: "Dongdaemun Design Plaza",
            cityName: "Seoul",
            nameKorean: "TBD",
            cityNameKorean: "서울",
            addressKorean: "TBD",
            coordinates: CLLocationCoordinate2D(latitude: 37, longitude: 126),
            description: "TBD",
            imageNames: [
                "TBD",
                "TBD",
                "TBD",
            ],
            link: "TBD"),
        Location(
            name: "Deoksugung Palace",
            cityName: "Seoul",
            nameKorean: "TBD",
            cityNameKorean: "서울",
            addressKorean: "TBD",
            coordinates: CLLocationCoordinate2D(latitude: 37, longitude: 126),
            description: "TBD",
            imageNames: [
                "TBD",
                "TBD",
                "TBD",
            ],
            link: "TBD"),
        Location(
            name: "Lotte World Tower",
            cityName: "Seoul",
            nameKorean: "TBD",
            cityNameKorean: "서울",
            addressKorean: "TBD",
            coordinates: CLLocationCoordinate2D(latitude: 37, longitude: 126),
            description: "TBD",
            imageNames: [
                "TBD",
                "TBD",
                "TBD",
            ],
            link: "TBD"),
        Location(
            name: "Starfield COEX Mall",
            cityName: "Seoul",
            nameKorean: "TBD",
            cityNameKorean: "서울",
            addressKorean: "TBD",
            coordinates: CLLocationCoordinate2D(latitude: 37, longitude: 126),
            description: "TBD",
            imageNames: [
                "TBD",
                "TBD",
                "TBD",
            ],
            link: "TBD"),
        Location(
            name: "Gwangjang Market",
            cityName: "Seoul",
            nameKorean: "TBD",
            cityNameKorean: "서울",
            addressKorean: "TBD",
            coordinates: CLLocationCoordinate2D(latitude: 37, longitude: 126),
            description: "TBD",
            imageNames: [
                "TBD",
                "TBD",
                "TBD",
            ],
            link: "TBD"),
        Location(
            name: "Namdaemun Market",
            cityName: "Seoul",
            nameKorean: "TBD",
            cityNameKorean: "서울",
            addressKorean: "TBD",
            coordinates: CLLocationCoordinate2D(latitude: 37, longitude: 126),
            description: "TBD",
            imageNames: [
                "TBD",
                "TBD",
                "TBD",
            ],
            link: "TBD"),
        Location(
            name: "Gangnam Station",
            cityName: "Seoul",
            nameKorean: "TBD",
            cityNameKorean: "서울",
            addressKorean: "TBD",
            coordinates: CLLocationCoordinate2D(latitude: 37, longitude: 126),
            description: "TBD",
            imageNames: [
                "TBD",
                "TBD",
                "TBD",
            ],
            link: "TBD"),
        Location(
            name: "Hongdae (Hongik Univ. Area)",
            cityName: "Seoul",
            nameKorean: "TBD",
            cityNameKorean: "서울",
            addressKorean: "TBD",
            coordinates: CLLocationCoordinate2D(latitude: 37, longitude: 126),
            description: "TBD",
            imageNames: [
                "TBD",
                "TBD",
                "TBD",
            ],
            link: "TBD"),
        Location(
            name: "Haeundae Beach",
            cityName: "Busan",
            nameKorean: "TBD",
            cityNameKorean: "부산",
            addressKorean: "TBD",
            coordinates: CLLocationCoordinate2D(latitude: 37, longitude: 126),
            description: "TBD",
            imageNames: [
                "TBD",
                "TBD",
                "TBD",
            ],
            link: "TBD"),
    ]
}
