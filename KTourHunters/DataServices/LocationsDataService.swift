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
            coordinates: CLLocationCoordinate2D(latitude: 37.5796, longitude: 126.9794),
            description: "Gyeongbokgung Palace is the largest and most iconic royal palace of the Joseon Dynasty. Originally constructed in 1395, it served as the main royal residence and political center of the kingdom. The palace features grand gates, expansive courtyards, and traditional halls set against a mountainous backdrop. Gyeongbokgung remains one of Seoul’s most significant cultural landmarks.",
            imageNames: [
                "seoul-gyeongbokgung-palace-1",
                "seoul-gyeongbokgung-palace-2",
                "seoul-gyeongbokgung-palace-3",
            ],
            link: "https://royal.cha.go.kr/ENG/contents/E101010000.do"),
        Location(
            name: "N Seoul Tower",
            cityName: "Seoul",
            nameKorean: "N 서울타워",
            cityNameKorean: "서울",
            addressKorean: "서울 용산구 남산공원길 105",
            coordinates: CLLocationCoordinate2D(latitude: 37.551170, longitude: 126.988228),
            description: "N Seoul Tower is a prominent landmark perched atop Namsan Mountain, offering panoramic views of Seoul. The tower is especially popular at night, when the city lights create a stunning backdrop. Visitors can enjoy observation decks, restaurants, and walking paths around the tower. N Seoul Tower is also known as a romantic spot, famous for its “love locks” left by couples.",
            imageNames: [
                "seoul-n-seoul-tower-1",
                "seoul-n-seoul-tower-2",
                "seoul-n-seoul-tower-3",
            ],
            link: "https://www.koreatodo.com/namsan-seoul-tower"),
        Location(
            name: "Bukchon Hanok Village",
            cityName: "Seoul",
            nameKorean: "북촌 한옥마을",
            cityNameKorean: "서울",
            addressKorean: "서울 종로구 계동길 37",
            coordinates: CLLocationCoordinate2D(latitude: 37.582883, longitude: 126.983567),
            description: "Bukchon Hanok Village is a historic neighborhood that preserves hundreds of traditional Korean hanok houses dating back to the Joseon Dynasty. Nestled between major palaces, the village offers scenic alleyways and panoramic views of Seoul’s skyline. Many hanoks now serve as cultural centers, tea houses, and guesthouses. Bukchon provides a rare glimpse into traditional Korean life within a modern city.",
            imageNames: [
                "seoul-bukchon-1",
                "seoul-bukchon-2",
                "seoul-bukchon-3",
            ],
            link: "https://english.visitkorea.or.kr/svc/whereToGo/locIntrdn/rgnContentsView.do?vcontsId=97932"),
        Location(
            name: "Myeongdong Shopping Street",
            cityName: "Seoul",
            nameKorean: "명동거리",
            cityNameKorean: "서울",
            addressKorean: "서울 중구 명동2가",
            coordinates: CLLocationCoordinate2D(latitude: 37.563183, longitude: 126.98535),
            description: "Myeongdong Shopping Street is one of Seoul’s most vibrant commercial districts, known for its fashion boutiques, beauty stores, and lively street food scene. The area attracts both locals and international visitors with its mix of global brands and Korean cosmetic shops. In the evenings, the streets come alive with food stalls and bright storefronts. Myeongdong is a must-visit destination for shopping, dining, and experiencing Seoul’s energetic urban atmosphere.",
            imageNames: [
                "seoul-myeongdong-1",
                "seoul-myeongdong-2",
                "seoul-myeongdong-3",
            ],
            link: "https://www.koreatodo.com/myeongdong-shopping-district"),
        Location(
            name: "Changdeokgung Palace",
            cityName: "Seoul",
            nameKorean: "창덕궁",
            cityNameKorean: "서울",
            addressKorean: "서울 종로구 율곡로 99",
            coordinates: CLLocationCoordinate2D(latitude: 37.5794, longitude: 126.9910),
            description: "Changdeokgung Palace is a UNESCO World Heritage Site renowned for its harmonious integration with the natural landscape. Built during the Joseon Dynasty, the palace follows the surrounding terrain rather than imposing rigid symmetry. Its famous Secret Garden offers serene ponds, pavilions, and centuries-old trees that change beautifully with the seasons. Changdeokgung is often considered one of the most elegant and peaceful royal palaces in Seoul.",
            imageNames: [
                "seoul-changdeokgung-palace-1",
                "seoul-changdeokgung-palace-2",
                "seoul-changdeokgung-palace-3",
            ],
            link: "https://royal.cha.go.kr/ENG/contents/E102010000.do"),
        Location(
            name: "Insadong",
            cityName: "Seoul",
            nameKorean: "인사동",
            cityNameKorean: "서울",
            addressKorean: "서울 종로구 인사동길 39-1",
            coordinates: CLLocationCoordinate2D(latitude: 37.5717, longitude: 126.9861),
            description: "Insadong is a lively cultural district in the heart of Seoul where traditional Korean heritage meets modern creativity. The area is famous for its narrow streets lined with antique shops, art galleries, tea houses, and craft stores showcasing centuries-old traditions. Visitors can explore local street food, traditional calligraphy, and handmade souvenirs while enjoying a relaxed, walkable atmosphere. Insadong offers a unique glimpse into Korea’s past while remaining a vibrant destination for both locals and travelers.",
            imageNames: [
                "seoul-insadong-1",
                "seoul-insadong-2",
                "seoul-insadong-3",
            ],
            link: "https://www.koreatodo.com/insadong"),
        Location(
            name: "Dongdaemun Design Plaza (DDP)",
            cityName: "Seoul",
            nameKorean: "동대문디자인플라자",
            cityNameKorean: "서울",
            addressKorean: "서울 중구 을지로 281",
            coordinates: CLLocationCoordinate2D(latitude: 37.5669, longitude: 127.0094),
            description: "Dongdaemun Design Plaza (DDP) is a striking architectural landmark in Seoul known for its futuristic curves and innovative design by world-renowned architect Zaha Hadid. The complex serves as a major hub for design, fashion, exhibitions, and cultural events, blending creativity with cutting-edge technology. Visitors can explore galleries, attend seasonal shows, or enjoy the surrounding parks and night markets. DDP represents Seoul’s forward-looking spirit while standing at the center of the city’s dynamic urban culture.",
            imageNames: [
                "seoul-ddp-1",
                "seoul-ddp-2",
                "seoul-ddp-3",
            ],
            link: "https://ddp.or.kr/?menuno=346"),
        Location(
            name: "Deoksugung Palace",
            cityName: "Seoul",
            nameKorean: "덕수궁",
            cityNameKorean: "서울",
            addressKorean: "서울 중구 세종대로 99 덕수궁",
            coordinates: CLLocationCoordinate2D(latitude: 37.566111, longitude: 126.975),
            description: "Deoksugung Palace is a historic royal palace in central Seoul known for its unique blend of traditional Korean architecture and Western-style buildings. Once a royal residence during the late Joseon Dynasty, the palace reflects a period of modernization in Korean history. Visitors can stroll along its stone-walled paths, explore elegant halls, and enjoy seasonal scenery within the palace grounds. Deoksugung offers a peaceful yet culturally rich experience in the heart of the city.",
            imageNames: [
                "seoul-deoksugung-palace-1",
                "seoul-deoksugung-palace-2",
                "seoul-deoksugung-palace-3",
            ],
            link: "https://royal.cha.go.kr/ENG/contents/E104010000.do"),
        Location(
            name: "Lotte World Tower",
            cityName: "Seoul",
            nameKorean: "롯데월드타워",
            cityNameKorean: "서울",
            addressKorean: "서울 송파구 올림픽로 300",
            coordinates: CLLocationCoordinate2D(latitude: 37.5125, longitude: 127.1028),
            description: "Lotte World Tower is South Korea’s tallest skyscraper and a defining feature of Seoul’s modern skyline. Rising over 500 meters, the tower houses luxury residences, offices, shopping areas, and one of the world’s highest observation decks. Visitors can enjoy panoramic city views, fine dining, and direct access to the surrounding entertainment complex. Lotte World Tower symbolizes Seoul’s rapid growth and contemporary architectural ambition.",
            imageNames: [
                "seoul-lotte-tower-1",
                "seoul-lotte-tower-2",
                "seoul-lotte-tower-3",
            ],
            link: "https://www.lwt.co.kr/en/tourist-guide/view.do?guide-id=2nd"),
        Location(
            name: "Starfield COEX Mall",
            cityName: "Seoul",
            nameKorean: "코엑스",
            cityNameKorean: "서울",
            addressKorean: "서울 강남구 영동대로 513 , B1층",
            coordinates: CLLocationCoordinate2D(latitude: 37.51194, longitude: 127.05889),
            description: "COEX is a large convention and cultural complex located in Seoul’s Gangnam district. It features exhibition halls, shopping areas, an aquarium, a cinema, and the iconic Starfield Library. The venue regularly hosts international events, conferences, and performances. COEX serves as a dynamic hub where business, entertainment, and culture come together in the heart of the city.",
            imageNames: [
                "seoul-coex-1",
                "seoul-coex-2",
                "seoul-coex-3",
            ],
            link: "https://english.visitkorea.or.kr/svc/contents/contentsView.do?vcontsId=138121"),
        Location(
            name: "Gwangjang Market",
            cityName: "Seoul",
            nameKorean: "광장시장",
            cityNameKorean: "서울",
            addressKorean: "서울 종로구 창경궁로 88",
            coordinates: CLLocationCoordinate2D(latitude: 37.570, longitude: 126.999),
            description: "Gwangjang Market is one of Seoul’s oldest traditional markets, offering a vibrant glimpse into local food and everyday life. The market is especially famous for its street food, including bindaetteok, mayak gimbap, and various noodle dishes. Narrow aisles filled with vendors create a lively and authentic atmosphere. Gwangjang Market is a popular destination for experiencing Korean cuisine and traditional market culture.",
            imageNames: [
                "seoul-gwangjang-market-1",
                "seoul-gwangjang-market-2",
                "seoul-gwangjang-market-3",
            ],
            link: "https://english.visitkorea.or.kr/svc/whereToGo/locIntrdn/rgnContentsView.do?vcontsId=106345"),
        Location(
            name: "Namdaemun Market",
            cityName: "Seoul",
            nameKorean: "남대문시장",
            cityNameKorean: "서울",
            addressKorean: "서울특별시 중구 남대문시장4길 21",
            coordinates: CLLocationCoordinate2D(latitude: 37.558417, longitude: 126.977333),
            description: "Namdaemun Market is the largest and one of the oldest traditional markets in Seoul, offering a wide variety of goods from clothing and accessories to household items and souvenirs. The market is also well known for its local food stalls and small eateries serving classic Korean dishes. Its maze-like streets create a lively, bustling atmosphere throughout the day. Namdaemun Market provides an authentic shopping experience that reflects the daily life of Seoul.",
            imageNames: [
                "seoul-namdaemun-1",
                "seoul-namdaemun-2",
                "seoul-namdaemun-3",
            ],
            link: "https://english.visitkorea.or.kr/svc/whereToGo/locIntrdn/rgnContentsView.do?vcontsId=106358"),
        Location(
            name: "Gangnam Station",
            cityName: "Seoul",
            nameKorean: "강남역",
            cityNameKorean: "서울",
            addressKorean: "서울특별시 강남구 강남대로 396",
            coordinates: CLLocationCoordinate2D(latitude: 37.497942, longitude: 127.027621),
            description: "Gangnam Station is a major transportation hub and one of Seoul’s busiest commercial areas. The surrounding district is known for its shopping, dining, nightlife, and energetic street culture. Underground malls, cafes, and entertainment venues make the area lively throughout the day and night. Gangnam Station represents the fast-paced, modern lifestyle of Seoul’s urban core.",
            imageNames: [
                "seoul-gangnam-station-1",
                "seoul-gangnam-station-2",
                "seoul-gangnam-station-3",
            ],
            link: "https://www.koreatodo.com/gangnam-shopping-street"),
        Location(
            name: "Hongdae (Hongik Univ. Station Area)",
            cityName: "Seoul",
            nameKorean: "홍대입구역",
            cityNameKorean: "서울",
            addressKorean: "서울특별시 마포구 양화로 160",
            coordinates: CLLocationCoordinate2D(latitude: 37.5563, longitude: 126.9220),
            description: "Hongdae is one of Seoul’s most vibrant neighborhoods, known for its youthful energy, creative culture, and lively nightlife. Centered around Hongik University Station, the area is filled with street performances, independent shops, cafes, clubs, and late-night eateries. During the day, visitors can enjoy shopping and art spaces, while evenings bring live music, busking, and a buzzing social scene. Hongdae is a must-visit destination for experiencing Seoul’s modern, playful, and artistic side.",
            imageNames: [
                "seoul-hongdae-1",
                "seoul-hongdae-2",
                "seoul-hongdae-3",
            ],
            link: "https://www.koreatodo.com/hongdae-hongik-university-street"),
        Location(
            name: "Haeundae Beach",
            cityName: "Busan",
            nameKorean: "해운대해수욕장",
            cityNameKorean: "부산",
            addressKorean: "부산 해운대구 우동",
            coordinates: CLLocationCoordinate2D(latitude: 35.15855, longitude: 129.16053),
            description: "Haeundae Beach is South Korea’s most famous beach, located along the southeastern coast of Busan. Known for its wide sandy shoreline and scenic ocean views, it attracts visitors year-round for relaxation, festivals, and seaside activities. The surrounding area offers hotels, cafes, seafood restaurants, and coastal walks. Haeundae Beach combines a laid-back beach atmosphere with the energy of a modern coastal city.",
            imageNames: [
                "busan-haeundae-1",
                "busan-haeundae-2",
                "busan-haeundae-3",
            ],
            link: "https://www.koreatodo.com/haeundae-beach"),
    ]
}
