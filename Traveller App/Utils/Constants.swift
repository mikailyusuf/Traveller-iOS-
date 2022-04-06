//
//  Constants.swift
//  Traveller App
//
//  Created by Mikail on 03/04/2022.
//

import Foundation
class Constants{
   static let discoryItems:[DiscoverItem] = [
    DiscoverItem(city: "Istanbul", country: "Turkey", cityURL: URL(string: "https://images.unsplash.com/photo-1559554498-7a9eb7587782?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=685&q=80"),
                 photos: ["https://images.unsplash.com/photo-1531168010535-64a9823f7eb4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDE2fHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=800&q=60",
                          "https://images.unsplash.com/photo-1531256417015-a728b85a7cb4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDEyfHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=800&q=60",
                          "https://images.unsplash.com/photo-1472095636650-197e6d619afe?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDE0fHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=800&q=60",
                         "https://images.unsplash.com/photo-1490079397423-a3931fd75940?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDd8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=800&q=60",
                         "https://images.unsplash.com/photo-1524231757912-21f4fe3a7200?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDR8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=800&q=60"]),
    
    DiscoverItem(city: "Tsavo", country: "Kenya", cityURL:URL(string: "https://images.unsplash.com/photo-1536937275673-8a12b3812e8e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=924&q=80"),
                 photos:["https://images.unsplash.com/photo-1562053232-1b9ef8cd1f26?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDV8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=800&q=60",
                         "https://images.unsplash.com/photo-1515658323406-25d61c141a6e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8a2VueWF8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60",
                         "https://images.unsplash.com/photo-1528277342758-f1d7613953a2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDExfHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=800&q=60",
                        "https://images.unsplash.com/photo-1544211412-2a32426e7fd5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDh8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=800&q=60",
                        "https://images.unsplash.com/photo-1489493887464-892be6d1daae?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDZ8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=800&q=60"]),
    
    DiscoverItem(city: "Dubai", country: "UAE", cityURL:URL(string: "https://images.unsplash.com/photo-1528702748617-c64d49f918af?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80"),
                 photos: ["https://images.unsplash.com/photo-1528702748617-c64d49f918af?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDF8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=800&q=60",
                          "https://images.unsplash.com/photo-1543579596-2c11997c7706?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTV8fGR1YmFpfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60",
                          "https://images.unsplash.com/photo-1634007626524-f47fa37810a7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjB8fGR1YmFpfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60",
                         "https://images.unsplash.com/photo-1579390668747-a917e5dabc10?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDN8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=800&q=60",
                         "https://images.unsplash.com/photo-1526495124232-a04e1849168c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDd8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=800&q=60",
                         "https://images.unsplash.com/photo-1503892728814-5d6f4aee37e0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDE0fHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=800&q=60",
                         "https://images.unsplash.com/photo-1569669568747-df222c4e8d4c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDE4fHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=800&q=60"]),
    
    DiscoverItem(city: "Maccah", country: "Saudi Arabia", cityURL:URL(string: "https://images.unsplash.com/photo-1580418827493-f2b22c0a76cb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80"),
                 photos:["https://images.unsplash.com/photo-1580418827493-f2b22c0a76cb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8c2F1ZGklMjBhcmFiaWF8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60",
                         "https://images.unsplash.com/photo-1609151712779-4f86b3de7308?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8c2F1ZGklMjBhcmFiaWF8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60",
                         "https://images.unsplash.com/photo-1602769490455-36cf9734dbcb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8c2F1ZGklMjBhcmFiaWF8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60",
                        "https://images.unsplash.com/photo-1609718581936-061a99384eb8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTN8fHNhdWRpJTIwYXJhYmlhfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60",
                        "https://images.unsplash.com/photo-1575225789216-135d5d0fc940?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTZ8fHNhdWRpJTIwYXJhYmlhfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60",
                        "https://images.unsplash.com/photo-1591054457135-3e2c2e51c5bc?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTR8fHNhdWRpJTIwYXJhYmlhfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60"]),
    
    DiscoverItem(city: "Cairo", country: "Egypt", cityURL:URL(string: "https://images.unsplash.com/photo-1559738933-d69ac3ff674b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80"),
                 photos:["https://images.unsplash.com/photo-1569531955317-390fbbc73f17?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8Y2Fpcm98ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60",
                         "https://images.unsplash.com/photo-1559738933-d69ac3ff674b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8Y2Fpcm98ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60",
                         "https://images.unsplash.com/photo-1553993500-d70955b75b5c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8Y2Fpcm98ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60",
                        "https://images.unsplash.com/photo-1553913861-dc2ce76b856c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjB8fGNhaXJvfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60",
                        "https://images.unsplash.com/photo-1594808846629-d8db69293d63?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTd8fGNhaXJvfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60",
                        "https://images.unsplash.com/photo-1623674657689-3444240b19fa?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTZ8fGNhaXJvfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60"]),
    
    DiscoverItem(city: "Marrakeck", country: "Morocco", cityURL:URL(string: "https://images.unsplash.com/photo-1580746738099-1cb74f972feb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=735&q=80"),
                 photos:["https://images.unsplash.com/photo-1517821099606-cef63a9bcda6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDV8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=800&q=60",
                         "https://images.unsplash.com/photo-1569440703456-29b9c31765ca?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDZ8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=800&q=60",
                         "https://images.unsplash.com/photo-1528657249085-c569d3c869e4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDF8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=800&q=60",
                        "https://images.unsplash.com/photo-1519594445471-0e5f86b3fb09?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDl8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=800&q=60",
                        "https://images.unsplash.com/photo-1545167496-c1e092d383a2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDEwfHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=800&q=60",
                         "https://images.unsplash.com/photo-1548846295-01a254126d8e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDE1fHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=800&q=60",
                         "https://images.unsplash.com/photo-1618423205267-e95744f57edf?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDE2fHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=800&q=60",
                         "https://images.unsplash.com/photo-1570135460237-510ca82c6781?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDE4fHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=800&q=60"
                        ]),
    
    
    ]
}
