% ============================================
% LONDON KNOWLEDGE BASE
% Expert System for International Students at Queen Mary University
% ============================================
% This file contains facts about restaurants, snacks, sightseeing, 
% and nightlife options in London, organized by distance from 
% Queen Mary University of London residence halls.
% ============================================

% ============================================
% RESTAURANTS - Full-Service Dining
% ============================================
% Format: restaurant_london(Name, Distance, Cuisine, Budget, Diets, Times, Vibe, GroupSizes, Alcohol)
%   - Distance: walkable (from Queen Mary), short_transit (tube/bus), far (across London)
%   - Cuisine: argentinian, asian, italian, other
%   - Budget: low (<£20/person), medium (£20-40), high (£40+)
%   - Diets: list of dietary options [none, vegetarian, vegan, halal, glutenfree]
%   - Times: list of meal times [breakfast, lunch, dinner, late_night]
%   - Vibe: quiet, social, fancy, casual
%   - GroupSizes: list of suitable group types [solo, couple, group]
%   - Alcohol: yes (serves alcohol), no (alcohol-free)

% East London - Walkable from Queen Mary Residences
restaurant_london('Kung Food',
    walkable,
    asian,
    low,
    [none, vegetarian],
    [lunch, dinner],
    casual,
    [solo, couple, group],
    no).

restaurant_london('Yun Gui Chuan',
    walkable,
    asian,
    medium,
    [none, vegetarian],
    [lunch, dinner],
    casual,
    [couple, group],
    yes).

restaurant_london('River View',
    walkable,
    asian,
    high,
    [none, vegetarian],
    [dinner],
    fancy,
    [couple, group],
    yes).

restaurant_london('Preem',
    walkable,
    asian,
    low,
    [none, halal],
    [lunch, dinner],
    casual,
    [solo, couple],
    no).

restaurant_london('Taste of Jaipur',
    walkable,
    asian,
    medium,
    [none, vegetarian, halal],
    [lunch, dinner],
    social,
    [couple, group],
    yes).

restaurant_london('Gunpowder',
    walkable,
    asian,
    high,
    [none, vegetarian, halal],
    [lunch, dinner],
    fancy,
    [couple],
    yes).

restaurant_london('Cabotte',
    walkable,
    other,
    low,
    [none, vegetarian],
    [breakfast, lunch],
    casual,
    [solo, couple],
    no).

restaurant_london('The Market Coffee House & Bar',
    walkable,
    other,
    medium,
    [none, vegetarian],
    [breakfast, lunch, dinner],
    social,
    [couple, group],
    yes).

restaurant_london('Le Cafe du Marche',
    walkable,
    other,
    high,
    [none, vegetarian],
    [lunch, dinner],
    fancy,
    [couple],
    yes).

restaurant_london('Gloria',
    walkable,
    italian,
    low,
    [none, vegetarian],
    [lunch, dinner],
    casual,
    [solo, couple, group],
    yes).

restaurant_london('Sotto Cucina & Bar',
    walkable,
    italian,
    medium,
    [none, vegetarian],
    [lunch, dinner],
    social,
    [couple, group],
    yes).

restaurant_london('Canto Corvino',
    walkable,
    italian,
    high,
    [none, vegetarian, glutenfree],
    [dinner],
    fancy,
    [couple],
    yes).

restaurant_london('The Crown',
    walkable,
    other,
    low,
    [none, vegetarian],
    [lunch, dinner, late_night],
    casual,
    [solo, couple, group],
    yes).

restaurant_london('The Gun, Spitalfields',
    walkable,
    other,
    medium,
    [none, vegetarian],
    [lunch, dinner],
    social,
    [couple, group],
    yes).

restaurant_london('Barge East',
    walkable,
    other,
    high,
    [none, vegetarian, glutenfree],
    [dinner],
    fancy,
    [couple, group],
    yes).

% South London - Far from Queen Mary (Requires Transit)
restaurant_london('Silk Road',
    far,
    asian,
    low,
    [none, vegetarian, halal],
    [lunch, dinner],
    casual,
    [solo, couple],
    no).

restaurant_london('Dragon Castle',
    far,
    asian,
    medium,
    [none, vegetarian],
    [lunch, dinner],
    casual,
    [group],
    yes).

restaurant_london('Hutong',
    far,
    asian,
    high,
    [none, vegetarian],
    [lunch, dinner],
    fancy,
    [couple, group],
    yes).

restaurant_london('Ganapati',
    far,
    asian,
    low,
    [none, vegetarian, vegan],
    [lunch, dinner],
    casual,
    [solo, couple],
    no).

restaurant_london('Kricket',
    far,
    asian,
    medium,
    [none, vegetarian],
    [lunch, dinner],
    social,
    [couple, group],
    yes).

restaurant_london('Babur',
    far,
    asian,
    high,
    [none, vegetarian, halal],
    [lunch, dinner],
    fancy,
    [couple],
    yes).

restaurant_london('Toulouse Lautrec',
    far,
    other,
    low,
    [none, vegetarian],
    [lunch, dinner],
    casual,
    [solo, couple],
    yes).

restaurant_london('Casse-Croûte',
    far,
    other,
    medium,
    [none, vegetarian],
    [lunch, dinner],
    social,
    [couple],
    yes).

restaurant_london('Le Pont de la Tour',
    far,
    other,
    high,
    [none, vegetarian, glutenfree],
    [lunch, dinner],
    fancy,
    [couple, group],
    yes).

restaurant_london('Theo\'s Pizzeria',
    far,
    italian,
    low,
    [none, vegetarian, vegan],
    [lunch, dinner, late_night],
    casual,
    [solo, couple, group],
    no).

restaurant_london('Legare',
    far,
    italian,
    medium,
    [none, vegetarian],
    [dinner],
    social,
    [couple, group],
    yes).

restaurant_london('Cafe Murano',
    far,
    italian,
    high,
    [none, vegetarian, glutenfree],
    [lunch, dinner],
    fancy,
    [couple],
    yes).

restaurant_london('Masters Superfish',
    far,
    other,
    low,
    [none],
    [lunch, dinner],
    casual,
    [solo, couple, group],
    no).

restaurant_london('The Camberwell Arms',
    far,
    other,
    medium,
    [none, vegetarian],
    [lunch, dinner],
    social,
    [couple, group],
    yes).

restaurant_london('Roast',
    far,
    other,
    high,
    [none, vegetarian],
    [breakfast, lunch, dinner],
    fancy,
    [couple, group],
    yes).

% West London - Far from Queen Mary (Requires Transit)
restaurant_london('Chinese Gold Mine',
    far,
    asian,
    low,
    [none, vegetarian],
    [lunch, dinner, late_night],
    casual,
    [solo, couple, group],
    no).

restaurant_london('Royal China',
    far,
    asian,
    medium,
    [none, vegetarian],
    [lunch, dinner],
    social,
    [couple, group],
    yes).

restaurant_london('Min Jiang',
    far,
    asian,
    high,
    [none, vegetarian, halal],
    [lunch, dinner],
    fancy,
    [couple, group],
    yes).

restaurant_london('Khan\'s',
    far,
    asian,
    low,
    [none, halal],
    [lunch, dinner, late_night],
    casual,
    [solo, couple, group],
    no).

restaurant_london('Dishoom',
    far,
    asian,
    medium,
    [none, vegetarian, vegan],
    [breakfast, lunch, dinner],
    social,
    [couple, group],
    yes).

restaurant_london('Gymkhana',
    far,
    asian,
    high,
    [none, vegetarian, halal],
    [lunch, dinner],
    fancy,
    [couple, group],
    yes).

restaurant_london('Le Petit Citron',
    far,
    other,
    low,
    [none, vegetarian],
    [breakfast, lunch],
    casual,
    [solo, couple],
    no).

restaurant_london('Aubaine',
    far,
    other,
    medium,
    [none, vegetarian, vegan],
    [breakfast, lunch, dinner],
    social,
    [couple, group],
    yes).

restaurant_london('Claude Bosi at Bibendum',
    far,
    other,
    high,
    [none, vegetarian, glutenfree],
    [lunch, dinner],
    fancy,
    [couple],
    yes).

restaurant_london('Santa Maria',
    far,
    italian,
    low,
    [none, vegetarian],
    [lunch, dinner],
    casual,
    [solo, couple, group],
    yes).

restaurant_london('Osteria Basilico',
    far,
    italian,
    medium,
    [none, vegetarian],
    [lunch, dinner],
    social,
    [couple, group],
    yes).

restaurant_london('River Cafe',
    far,
    italian,
    high,
    [none, vegetarian],
    [lunch, dinner],
    fancy,
    [couple],
    yes).

restaurant_london('The Dove',
    far,
    other,
    low,
    [none, vegetarian],
    [lunch, dinner],
    casual,
    [couple, group],
    yes).

restaurant_london('The Cow',
    far,
    other,
    medium,
    [none, vegetarian],
    [lunch, dinner],
    social,
    [couple, group],
    yes).

restaurant_london('The Harwood Arms',
    far,
    other,
    high,
    [none, vegetarian, glutenfree],
    [lunch, dinner],
    fancy,
    [couple],
    yes).

% North London - Short Transit from Queen Mary (Tube/Bus)
restaurant_london('Chinese Xi\'an Impression',
    short_transit,
    asian,
    low,
    [none, vegetarian, halal],
    [lunch, dinner],
    casual,
    [solo, couple],
    no).

restaurant_london('Three Uncles',
    short_transit,
    asian,
    medium,
    [none, vegetarian],
    [lunch, dinner],
    casual,
    [couple, group],
    yes).

restaurant_london('The Good Earth',
    short_transit,
    asian,
    high,
    [none, vegetarian],
    [lunch, dinner],
    fancy,
    [couple, group],
    yes).

restaurant_london('Jai Krishna',
    short_transit,
    asian,
    low,
    [vegetarian, vegan],
    [lunch, dinner],
    casual,
    [solo, couple],
    no).

restaurant_london('The Tamil Prince',
    short_transit,
    asian,
    medium,
    [none, vegetarian, halal],
    [lunch, dinner],
    social,
    [couple, group],
    yes).

restaurant_london('Anokhi',
    short_transit,
    asian,
    high,
    [none, vegetarian, vegan],
    [lunch, dinner],
    fancy,
    [couple],
    yes).

restaurant_london('Le Mercury',
    short_transit,
    other,
    low,
    [none, vegetarian],
    [lunch, dinner],
    casual,
    [couple, group],
    yes).

restaurant_london('La Ferme',
    short_transit,
    other,
    medium,
    [none, vegetarian],
    [lunch, dinner],
    social,
    [couple, group],
    yes).

restaurant_london('Odette\'s',
    short_transit,
    other,
    high,
    [none, vegetarian, glutenfree],
    [lunch, dinner],
    fancy,
    [couple],
    yes).

restaurant_london('Zia Lucia',
    short_transit,
    italian,
    low,
    [none, vegetarian, vegan],
    [lunch, dinner, late_night],
    casual,
    [solo, couple, group],
    no).

restaurant_london('Trullo',
    short_transit,
    italian,
    medium,
    [none, vegetarian],
    [dinner],
    social,
    [couple, group],
    yes).

restaurant_london('Luca',
    short_transit,
    italian,
    high,
    [none, vegetarian, glutenfree],
    [lunch, dinner],
    fancy,
    [couple, group],
    yes).

restaurant_london('Poppie\'s Fish & Chips',
    short_transit,
    other,
    low,
    [none],
    [lunch, dinner],
    casual,
    [solo, couple, group],
    no).

restaurant_london('The Drapers Arms',
    short_transit,
    other,
    medium,
    [none, vegetarian],
    [lunch, dinner],
    social,
    [couple, group],
    yes).

restaurant_london('Frederick\'s',
    short_transit,
    other,
    high,
    [none, vegetarian],
    [lunch, dinner],
    fancy,
    [couple],
    yes).

% ============================================
% SNACKS & CAFES - Quick Bites & Coffee
% ============================================
% Format: snack_london(Name, Distance, Type, Budget, Diets, Times, Vibe, GroupSizes, Alcohol)
%   - Type: cafe, bakery, gelato, empanadas
%   - Other parameters same as restaurants

snack_london('Cafe 1001',
    walkable,
    cafe,
    low,
    [none, vegetarian, vegan],
    [breakfast, lunch, afternoon],
    casual,
    [solo, couple, group],
    yes).

snack_london('E Pellicci',
    walkable,
    cafe,
    low,
    [none],
    [breakfast, lunch],
    casual,
    [solo, couple, group],
    no).

snack_london('Beigel Bake',
    walkable,
    bakery,
    low,
    [none, vegetarian],
    [breakfast, lunch, late_night],
    casual,
    [solo, couple, group],
    no).

snack_london('Dark Sugars',
    walkable,
    cafe,
    low,
    [none, vegetarian],
    [afternoon],
    casual,
    [solo, couple],
    no).

snack_london('Monmouth Coffee',
    short_transit,
    cafe,
    low,
    [none, vegetarian],
    [breakfast, afternoon],
    quiet,
    [solo, couple],
    no).

snack_london('Dishoom Cafe',
    short_transit,
    cafe,
    medium,
    [none, vegetarian],
    [breakfast, lunch],
    social,
    [couple, group],
    yes).

snack_london('Gelupo',
    far,
    gelato,
    low,
    [none, vegetarian],
    [afternoon, evening],
    casual,
    [solo, couple, group],
    no).

snack_london('Fortnum & Mason Tea',
    far,
    cafe,
    high,
    [none, vegetarian, glutenfree],
    [afternoon],
    fancy,
    [couple, group],
    no).

% ============================================
% SIGHTSEEING - Museums, Parks, Landmarks
% ============================================
% Format: sightseeing_london(Name, Distance, Type, Budget, Times, Vibe, GroupSizes)
%   - Type: museum_modern, museum_history, museum_classical, park, landmark, theatre, cultural_center
%   - Budget: free, low, medium, high
%   - No Diets or Alcohol parameters (not food venues)

% Museums
sightseeing_london('White Cube',
    far,
    museum_modern,
    free,
    [afternoon],
    quiet,
    [solo, couple, group]).

sightseeing_london('Tate Modern',
    far,
    museum_modern,
    free,
    [morning, afternoon],
    quiet,
    [solo, couple, group]).

sightseeing_london('British Museum',
    short_transit,
    museum_history,
    free,
    [morning, afternoon],
    quiet,
    [solo, couple, group]).

sightseeing_london('Victoria and Albert Museum',
    far,
    museum_classical,
    free,
    [afternoon],
    quiet,
    [solo, couple, group]).

sightseeing_london('Natural History Museum',
    far,
    museum_history,
    free,
    [morning, afternoon],
    quiet,
    [solo, couple, group]).

% Parks
sightseeing_london('Victoria Park',
    walkable,
    park,
    free,
    [morning, afternoon, evening],
    casual,
    [solo, couple, group]).

sightseeing_london('Hampstead Heath',
    short_transit,
    park,
    free,
    [morning, afternoon],
    quiet,
    [solo, couple, group]).

sightseeing_london('Hyde Park',
    far,
    park,
    free,
    [morning, afternoon, evening],
    casual,
    [solo, couple, group]).

sightseeing_london('Greenwich Park',
    far,
    park,
    free,
    [afternoon],
    quiet,
    [solo, couple, group]).

% Landmarks
sightseeing_london('Tower of London',
    walkable,
    landmark,
    high,
    [morning, afternoon],
    social,
    [couple, group]).

sightseeing_london('Tower Bridge',
    walkable,
    landmark,
    free,
    [afternoon, evening],
    casual,
    [solo, couple, group]).

sightseeing_london('The Shard',
    far,
    landmark,
    high,
    [afternoon, evening],
    fancy,
    [couple, group]).

sightseeing_london('Big Ben',
    far,
    landmark,
    free,
    [afternoon],
    social,
    [solo, couple, group]).

sightseeing_london('London Eye',
    far,
    landmark,
    high,
    [afternoon, evening],
    social,
    [couple, group]).

% Theatres
sightseeing_london('Shakespeare\'s Globe',
    far,
    theatre,
    medium,
    [evening],
    social,
    [couple, group]).

sightseeing_london('Royal Opera House',
    far,
    theatre,
    high,
    [evening],
    fancy,
    [couple, group]).

% ============================================
% NIGHTLIFE - Bars, Clubs, Live Music
% ============================================
% Format: nightlife_london(Name, Distance, Type, Budget, Vibe, GroupSizes, Alcohol)
%   - Type: pub, live_music, rooftop_bar, club, speakeasy, cocktail_bar
%   - No Diets or Times parameters (evening/night assumed)

nightlife_london('Commercial Tavern',
    walkable,
    pub,
    low,
    casual,
    [couple, group],
    yes).

nightlife_london('Juju\'s',
    walkable,
    live_music,
    medium,
    social,
    [couple, group],
    yes).

nightlife_london('Blues Kitchen Shoreditch',
    walkable,
    live_music,
    medium,
    social,
    [couple, group],
    yes).

nightlife_london('Shoreditch House',
    walkable,
    rooftop_bar,
    high,
    fancy,
    [couple, group],
    yes).

nightlife_london('Flight Club Islington',
    short_transit,
    pub,
    medium,
    social,
    [couple, group],
    yes).

nightlife_london('The Blues Kitchen Camden',
    short_transit,
    live_music,
    medium,
    social,
    [couple, group],
    yes).

nightlife_london('Camden Assembly',
    short_transit,
    club,
    medium,
    social,
    [group],
    yes).

nightlife_london('Fabric',
    far,
    club,
    medium,
    social,
    [group],
    yes).

nightlife_london('Ministry of Sound',
    far,
    club,
    high,
    social,
    [group],
    yes).

nightlife_london('Sky Garden',
    far,
    rooftop_bar,
    high,
    fancy,
    [couple, group],
    yes).
