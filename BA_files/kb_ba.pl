% ============================================
% DYNAMIC STATE
% ============================================
:- dynamic known/3.
:- dynamic maps_url/2.
:- discontiguous get_detail/3.

clear_known :- retractall(known(_, _, _)).

% ============================================
% RESTAURANTS (Name, Location, Cuisine, Price, Distance, Diets, Times, Vibe, GroupSizes, Alcohol)
% Format: restaurant(Name, Location, Cuisine, Price, Distance, Diets, Times, Vibe, GroupSizes, Alcohol)
% - Location: palermo | san_telmo | microcentro | recoleta | puerto_madero | belgrano
% - Cuisine: parrilla | pizza | pasta | burgers | gelato | cafe | vegetarian
% - Price: low | medium | high
% - Distance: walkable | short_ride | long_ride (from Esmeralda 920)
% - Diets: List of [none, vegetarian, vegan, gluten_free]
% - Times: List of [breakfast, lunch, dinner, late_night]
% - Vibe: casual | fancy | romantic | touristy
% - GroupSizes: List of [solo, couple, small_group, large_group]
% - Alcohol: yes | no
% 
% Total Askables: 10 (activity, location, distance, cuisine, price, diet, time_of_day, vibe, group_size, alcohol_ok)
% ============================================

% PALERMO – long ride
restaurant(
    'Don Julio',
    palermo,
    parrilla,
    luxury,
    long_ride,
    [none, gluten_free],
    [lunch, dinner],
    fancy,
    [couple, small_group, large_group],
    yes
).
restaurant(
    'La Cabrera',
    palermo,
    parrilla,
    expensive,
    long_ride,
    [none, gluten_free],
    [dinner, late_night],
    casual,
    [couple, small_group, large_group],
    yes
).
restaurant(
    'Nola',
    palermo,
    burgers,
    affordable,
    long_ride,
    [none, vegetarian],
    [lunch, dinner, late_night],
    casual,
    [solo, couple, small_group],
    yes
).
restaurant(
    'Rapanui Palermo',
    palermo,
    gelato,
    budget,
    long_ride,
    [none, vegetarian, vegan, gluten_free],
    [breakfast, brunch, lunch, afternoon, dinner, late_night],
    casual,
    [solo, couple, small_group],
    no
).
restaurant(
    'Cafe Registrado',
    palermo,
    cafe,
    affordable,
    long_ride,
    [none, vegetarian, vegan],
    [breakfast, brunch, lunch, afternoon, dinner, late_night],
    casual,
    [solo, couple, small_group],
    yes
).
restaurant(
    'Bio Solo Organico',
    palermo,
    vegetarian,
    affordable,
    long_ride,
    [vegetarian, vegan, gluten_free],
    [breakfast, lunch, dinner],
    casual,
    [solo, couple, small_group],
    yes
).

% SAN TELMO – short ride
restaurant(
    'El Desnivel',
    san_telmo,
    parrilla,
    affordable,
    short_ride,
    [none, gluten_free],
    [lunch, dinner],
    casual,
    [solo, couple, small_group, large_group],
    yes
).
restaurant(
    'La Brigada',
    san_telmo,
    parrilla,
    expensive,
    short_ride,
    [none, gluten_free],
    [dinner, late_night],
    romantic,
    [couple, small_group],
    yes
).
restaurant(
    'El Banco Rojo',
    san_telmo,
    burgers,
    budget,
    short_ride,
    [none, vegetarian],
    [lunch, dinner, late_night],
    casual,
    [solo, couple, small_group],
    yes
).
restaurant(
    'Hierbabuena',
    san_telmo,
    vegetarian,
    affordable,
    short_ride,
    [vegetarian, vegan, gluten_free],
    [lunch, dinner],
    casual,
    [solo, couple, small_group],
    yes
).
restaurant(
    'Cafe San Juan',
    san_telmo,
    pasta,
    moderate,
    short_ride,
    [none, vegetarian],
    [lunch, dinner],
    romantic,
    [couple, small_group],
    yes
).

% MICROCENTRO – walkable
restaurant(
    'Guerrin',
    microcentro,
    pizza,
    budget,
    walkable,
    [none, vegetarian],
    [lunch, dinner, late_night],
    touristy,
    [solo, couple, small_group, large_group],
    yes
).
restaurant(
    'El Cuartito',
    microcentro,
    pizza,
    affordable,
    walkable,
    [none, vegetarian],
    [lunch, dinner, late_night],
    casual,
    [solo, couple, small_group, large_group],
    yes
).
restaurant(
    'Las Cuartetas',
    microcentro,
    pizza,
    budget,
    walkable,
    [none, vegetarian],
    [lunch, dinner, late_night],
    casual,
    [solo, couple, small_group, large_group],
    yes
).
restaurant(
    'Kentucky Pizza',
    microcentro,
    pizza,
    budget,
    walkable,
    [none, vegetarian],
    [dinner, late_night],
    casual,
    [solo, couple, small_group],
    yes
).
restaurant(
    'La Americana',
    microcentro,
    pizza,
    budget,
    walkable,
    [none, vegetarian],
    [lunch, dinner, late_night],
    casual,
    [solo, couple, small_group, large_group],
    yes
).
restaurant(
    'Cadore',
    microcentro,
    gelato,
    budget,
    walkable,
    [none, vegetarian, vegan, gluten_free],
    [breakfast, brunch, lunch, afternoon, dinner, late_night],
    casual,
    [solo, couple, small_group],
    no
).
restaurant(
    'Rapanui Microcentro',
    microcentro,
    gelato,
    budget,
    walkable,
    [none, vegetarian, vegan, gluten_free],
    [breakfast, brunch, lunch, afternoon, dinner, late_night],
    casual,
    [solo, couple, small_group],
    no
).
restaurant(
    'Cafe Tortoni',
    microcentro,
    cafe,
    affordable,
    walkable,
    [none, vegetarian, vegan],
    [breakfast, brunch, lunch, afternoon, dinner, late_night],
    touristy,
    [solo, couple, small_group, large_group],
    yes
).
restaurant(
    'Palacio de la Papa Frita',
    microcentro,
    parrilla,
    affordable,
    walkable,
    [none, gluten_free],
    [lunch, dinner],
    casual,
    [solo, couple, small_group, large_group],
    yes
).

restaurant(
    'Santos Manjares',
    microcentro,
    parrilla,
    moderate,
    walkable,
    [none, gluten_free],
    [lunch, dinner],
    casual,
    [couple, small_group, large_group],
    yes
).
restaurant(
    'La Posta de los Tucu',
    microcentro,
    parrilla,
    moderate,
    walkable,
    [none, gluten_free],
    [lunch, dinner],
    casual,
    [couple, small_group, large_group],
    yes
).
restaurant(
    'El Establo Parrilla',
    microcentro,
    parrilla,
    affordable,
    walkable,
    [none, gluten_free],
    [lunch, dinner, late_night],
    casual,
    [solo, couple, small_group, large_group],
    yes
).
restaurant(
    'Broccolino',
    microcentro,
    pasta,
    affordable,
    walkable,
    [none, vegetarian, vegan],
    [lunch, dinner],
    casual,
    [solo, couple, small_group],
    yes
).
restaurant(
    'La Estancia',
    microcentro,
    parrilla,
    affordable,
    walkable,
    [none, gluten_free],
    [lunch, dinner],
    casual,
    [couple, small_group, large_group],
    yes
).
restaurant(
    'Sagardi Argentina',
    microcentro,
    parrilla,
    expensive,
    walkable,
    [none, gluten_free],
    [lunch, dinner],
    fancy,
    [couple, small_group, large_group],
    yes
).

% RECOLETA – short ride
restaurant(
    'La Biela',
    recoleta,
    cafe,
    affordable,
    short_ride,
    [none, vegetarian, vegan],
    [breakfast, brunch, lunch, afternoon, dinner, late_night],
    touristy,
    [solo, couple, small_group],
    yes
).
restaurant(
    'Fervor',
    recoleta,
    parrilla,
    luxury,
    short_ride,
    [none, gluten_free],
    [lunch, dinner],
    fancy,
    [couple, small_group],
    yes
).
restaurant(
    'Rapanui Recoleta',
    recoleta,
    gelato,
    budget,
    short_ride,
    [none, vegetarian, vegan, gluten_free],
    [breakfast, brunch, lunch, afternoon, dinner, late_night],
    casual,
    [solo, couple, small_group],
    no
).
restaurant(
    'Parrilla Pena',
    recoleta,
    parrilla,
    moderate,
    short_ride,
    [none, gluten_free],
    [lunch, dinner],
    casual,
    [couple, small_group, large_group],
    yes
).

% PUERTO MADERO — walkable / short
restaurant(
    'Cabana Las Lilas',
    puerto_madero,
    parrilla,
    luxury,
    walkable,
    [none, gluten_free],
    [lunch, dinner],
    fancy,
    [couple, small_group, large_group],
    yes
).
restaurant(
    'Siga La Vaca',
    puerto_madero,
    parrilla,
    moderate,
    walkable,
    [none, gluten_free],
    [lunch, dinner, late_night],
    casual,
    [couple, small_group, large_group],
    yes
).
restaurant(
    'Olivia Deli Cafe',
    puerto_madero,
    cafe,
    affordable,
    walkable,
    [none, vegetarian, vegan, gluten_free],
    [breakfast, brunch, lunch, afternoon, dinner, late_night],
    casual,
    [solo, couple, small_group],
    yes
).
restaurant(
    'Luccianos Puerto Madero',
    puerto_madero,
    gelato,
    budget,
    walkable,
    [none, vegetarian, vegan, gluten_free],
    [breakfast, brunch, lunch, afternoon, dinner, late_night],
    casual,
    [solo, couple, small_group],
    no
).

% BELGRANO – long ride
restaurant(
    'La Mezzetta',
    belgrano,
    pizza,
    budget,
    long_ride,
    [none, vegetarian],
    [dinner, late_night],
    casual,
    [solo, couple, small_group, large_group],
    yes
).
restaurant(
    'Pizzeria El Imperio',
    belgrano,
    pizza,
    budget,
    long_ride,
    [none, vegetarian],
    [dinner, late_night],
    casual,
    [solo, couple, small_group, large_group],
    yes
).
restaurant(
    'Pani Belgrano',
    belgrano,
    cafe,
    affordable,
    long_ride,
    [none, vegetarian, vegan],
    [breakfast, brunch, lunch, afternoon, dinner, late_night],
    casual,
    [solo, couple, small_group],
    yes
).
restaurant(
    'La Dorita Belgrano',
    belgrano,
    parrilla,
    affordable,
    long_ride,
    [none, gluten_free],
    [lunch, dinner],
    casual,
    [couple, small_group, large_group],
    yes
).

% ============================================
% PUBS (Name, Location, PubType, Distance)
% Format: pub(Name, Location, PubType, Distance)
% - PubType: classic_bar | bar_notable | craft_beer | rooftop | live_music | dance_club
% ============================================

% PALERMO – long ride
pub(
    'Desarmadero',
    palermo,
    craft_beer,
    long_ride
).
pub(
    'Club 69',
    palermo,
    dance_club,
    long_ride
).
pub(
    'Antares Palermo',
    palermo,
    craft_beer,
    long_ride
).

% SAN TELMO – short ride
pub(
    'La Puerta Roja',
    san_telmo,
    classic_bar,
    short_ride
).
pub(
    'Bierlife',
    san_telmo,
    craft_beer,
    short_ride
).
pub(
    'Bar El Federal',
    san_telmo,
    bar_notable,
    short_ride
).
pub(
    'Bar Britanico',
    san_telmo,
    bar_notable,
    short_ride
).

% MICROCENTRO / RECOLETA
pub(
    'Bar Los Galgos',
    microcentro,
    bar_notable,
    walkable
).
pub(
    'Floreria Atlantico',
    microcentro,
    classic_bar,
    walkable
).
pub(
    'Milion',
    recoleta,
    rooftop,
    short_ride
).

% BELGRANO / PUERTO MADERO
pub(
    'Temple Bar Belgrano',
    belgrano,
    craft_beer,
    long_ride
).
pub(
    'Antares Belgrano',
    belgrano,
    craft_beer,
    long_ride
).
pub(
    'Johnny B Good',
    puerto_madero,
    live_music,
    walkable
).
pub(
    'Sky Bar Puerto Madero',
    puerto_madero,
    rooftop,
    walkable
).

% ============================================
% CHILL SPOTS (Name, Location, ChillType, Distance)
% Format: chill(Name, Location, ChillType, Distance)
% - ChillType: park | riverfront | plaza | cafe
% ============================================

% PALERMO
chill(
    'Parque Tres de Febrero',
    palermo,
    park,
    long_ride
).
chill(
    'Jardin Botanico',
    palermo,
    park,
    long_ride
).
chill(
    'Plaza Armenia',
    palermo,
    plaza,
    long_ride
).

% SAN TELMO / CENTRO
chill(
    'Parque Lezama',
    san_telmo,
    park,
    short_ride
).
chill(
    'Plaza Dorrego',
    san_telmo,
    plaza,
    short_ride
).
chill(
    'Cafe Tortoni',
    microcentro,
    cafe,
    walkable
).

% RECOLETA / PM
chill(
    'Plaza Francia',
    recoleta,
    plaza,
    short_ride
).
chill(
    'Recoleta Cultural Center Cafe',
    recoleta,
    cafe,
    short_ride
).
chill(
    'Puerto Madero Costanera',
    puerto_madero,
    riverfront,
    walkable
).
chill(
    'Reserva Ecologica Costanera Sur',
    puerto_madero,
    riverfront,
    walkable
).

% BELGRANO
chill(
    'Barrancas de Belgrano',
    belgrano,
    park,
    long_ride
).

% ============================================
% SIGHTSEEING (Name, Location, SightType, Extra, Distance)
% Format: sightseeing(Name, Location, SightType, Extra, Distance)
% - SightType: old_monument | modern_tourist_spot | museum | outdoor_scenery | theatre
% - Extra: For museums: modern_art | classical_art | artifacts
%          For modern_tourist_spot: indoor | outdoor
%          For others: outdoor (fixed)
% ============================================

% MICROCENTRO – walkable
sightseeing(
    'Obelisco',
    microcentro,
    old_monument,
    outdoor,
    walkable
).
sightseeing(
    'Casa Rosada',
    microcentro,
    old_monument,
    outdoor,
    walkable
).
sightseeing(
    'Cabildo de Buenos Aires',
    microcentro,
    old_monument,
    outdoor,
    walkable
).
sightseeing(
    'Teatro Colon',
    microcentro,
    theatre,
    indoor,
    walkable
).
sightseeing(
    'Galerias Pacifico',
    microcentro,
    modern_tourist_spot,
    indoor,
    walkable
).

% SAN TELMO / LA BOCA
sightseeing(
    'La Boca y Caminito',
    san_telmo,
    outdoor_scenery,
    outdoor,
    long_ride
).
sightseeing(
    'Museo de Arte Moderno de Buenos Aires',
    san_telmo,
    museum,
    modern_art,
    short_ride
).
sightseeing(
    'Museo Historico Nacional',
    san_telmo,
    museum,
    artifacts,
    short_ride
).

% PUERTO MADERO
sightseeing(
    'Puente De La Mujer',
    puerto_madero,
    modern_tourist_spot,
    outdoor,
    walkable
).
sightseeing(
    'Reserva Ecologica Costanera Sur Sight',
    puerto_madero,
    outdoor_scenery,
    outdoor,
    walkable
).

% RECOLETA
sightseeing(
    'Museo Nacional de Bellas Artes',
    recoleta,
    museum,
    classical_art,
    short_ride
).
sightseeing(
    'Recoleta Cemetery',
    recoleta,
    outdoor_scenery,
    outdoor,
    short_ride
).

% PALERMO
sightseeing(
    'MALBA',
    palermo,
    museum,
    modern_art,
    long_ride
).
sightseeing(
    'Planetario Galileo Galilei',
    palermo,
    modern_tourist_spot,
    outdoor,
    long_ride
).

% BELGRANO
sightseeing(
    'Barrancas de Belgrano Vista',
    belgrano,
    outdoor_scenery,
    outdoor,
    long_ride
).

% ============================================
% RECOMMENDATION RULES
% ============================================

% Restaurants - User is okay with alcohol (shows all places)
recommend(Name) :-
    known(activity, restaurant, yes),
    known(location, Location, yes),
    known(distance, UserDistance, yes),
    known(cuisine, Cuisine, yes),
    known(price, Price, yes),
    known(diet, Diet, yes),
    known(time_of_day, Time, yes),
    known(vibe, Vibe, yes),
    known(group_size, GroupSize, yes),
    known(alcohol_ok, yes, yes),  % User is okay with alcohol
    restaurant(Name, Location, Cuisine, Price, Distance, Diets, Times, Vibe, GroupSizes, _),  % Any alcohol status
    (UserDistance = doesnt_matter ; Distance = UserDistance),  % Match distance or doesn't matter
    member(Diet, Diets),
    member(Time, Times),
    member(GroupSize, GroupSizes).

% Restaurants - User minds alcohol (only non-alcohol places)
recommend(Name) :-
    known(activity, restaurant, yes),
    known(location, Location, yes),
    known(distance, UserDistance, yes),
    known(cuisine, Cuisine, yes),
    known(price, Price, yes),
    known(diet, Diet, yes),
    known(time_of_day, Time, yes),
    known(vibe, Vibe, yes),
    known(group_size, GroupSize, yes),
    known(alcohol_ok, no, yes),  % User minds alcohol
    restaurant(Name, Location, Cuisine, Price, Distance, Diets, Times, Vibe, GroupSizes, no),  % Only non-alcohol places
    (UserDistance = doesnt_matter ; Distance = UserDistance),  % Match distance or doesn't matter
    member(Diet, Diets),
    member(Time, Times),
    member(GroupSize, GroupSizes).

% Pubs / bars
recommend(Name) :-
    known(activity, pub, yes),
    known(location, Location, yes),
    known(distance, UserDistance, yes),
    known(pub_type, PubType, yes),
    pub(Name, Location, PubType, Distance),
    (UserDistance = doesnt_matter ; Distance = UserDistance).

% Chill spots
recommend(Name) :-
    known(activity, chill, yes),
    known(location, Location, yes),
    known(distance, UserDistance, yes),
    known(chill_type, ChillType, yes),
    chill(Name, Location, ChillType, Distance),
    (UserDistance = doesnt_matter ; Distance = UserDistance).

% Sightseeing – museums
recommend(Name) :-
    known(activity, sightseeing, yes),
    known(location, Location, yes),
    known(distance, UserDistance, yes),
    known(sight_type, museum, yes),
    known(art_type, ArtType, yes),
    sightseeing(Name, Location, museum, ArtType, Distance),
    (UserDistance = doesnt_matter ; Distance = UserDistance).

% Sightseeing – modern tourist spots
recommend(Name) :-
    known(activity, sightseeing, yes),
    known(location, Location, yes),
    known(distance, UserDistance, yes),
    known(sight_type, modern_tourist_spot, yes),
    known(indoor_outdoor, IndoorOutdoor, yes),
    sightseeing(Name, Location, modern_tourist_spot, IndoorOutdoor, Distance),
    (UserDistance = doesnt_matter ; Distance = UserDistance).

% Sightseeing – old monuments
recommend(Name) :-
    known(activity, sightseeing, yes),
    known(location, Location, yes),
    known(distance, UserDistance, yes),
    known(sight_type, old_monument, yes),
    sightseeing(Name, Location, old_monument, outdoor, Distance),
    (UserDistance = doesnt_matter ; Distance = UserDistance).

% Sightseeing – outdoor scenery
recommend(Name) :-
    known(activity, sightseeing, yes),
    known(location, Location, yes),
    known(distance, UserDistance, yes),
    known(sight_type, outdoor_scenery, yes),
    sightseeing(Name, Location, outdoor_scenery, outdoor, Distance),
    (UserDistance = doesnt_matter ; Distance = UserDistance).

% Sightseeing – theatre (Teatro Colon)
recommend(Name) :-
    known(activity, sightseeing, yes),
    known(location, Location, yes),
    known(distance, UserDistance, yes),
    known(sight_type, theatre, yes),
    sightseeing(Name, Location, theatre, _, Distance),
    (UserDistance = doesnt_matter ; Distance = UserDistance).

% ============================================
% QUESTION LOGIC (ASKABLES)
% ============================================

% Activity
next_question(activity,
              'What would you like to do in Buenos Aires?',
              [restaurant, pub, chill, sightseeing]) :-
    \+ known(activity, _, _).

% Distance from Esmeralda 920 (asked BEFORE location)
next_question(distance,
              'How far from the residence hall at Esmeralda 920 are you willing to go?',
              [walkable, short_ride, long_ride, doesnt_matter]) :-
    known(activity, Activity, yes),
    member(Activity, [restaurant, pub, chill, sightseeing]),
    \+ known(distance, _, _).

% Location - shows only neighborhoods matching distance preference
next_question(location,
              'Which area of Buenos Aires would you prefer?',
              [microcentro, puerto_madero]) :-
    known(activity, _, yes),
    known(distance, walkable, yes),
    \+ known(location, _, _).

next_question(location,
              'Which area of Buenos Aires would you prefer?',
              [san_telmo, recoleta]) :-
    known(activity, _, yes),
    known(distance, short_ride, yes),
    \+ known(location, _, _).

next_question(location,
              'Which area of Buenos Aires would you prefer?',
              [palermo, belgrano]) :-
    known(activity, _, yes),
    known(distance, long_ride, yes),
    \+ known(location, _, _).

next_question(location,
              'Which area of Buenos Aires would you prefer?',
              [microcentro, puerto_madero, san_telmo, recoleta, palermo, belgrano]) :-
    known(activity, _, yes),
    known(distance, doesnt_matter, yes),
    \+ known(location, _, _).

% Restaurant-specific
next_question(cuisine,
              'What type of cuisine would you like?',
              [parrilla, pizza, pasta, burgers, gelato, cafe, vegetarian]) :-
    known(activity, restaurant, yes),
    known(location, _, yes),
    known(distance, _, yes),
    \+ known(cuisine, _, _).

next_question(price,
              'What is your price range per person?',
              ['budget (under 8,000 ARS)', 'affordable (8,000-15,000 ARS)', 'moderate (15,000-25,000 ARS)', 'expensive (25,000-35,000 ARS)', 'luxury (35,000+ ARS)']) :-
    known(activity, restaurant, yes),
    known(location, _, yes),
    known(distance, _, yes),
    known(cuisine, _, yes),
    \+ known(price, _, _).

next_question(diet,
              'Do you have any dietary restrictions?',
              [none, vegetarian, vegan, gluten_free]) :-
    known(activity, restaurant, yes),
    known(location, _, yes),
    known(distance, _, yes),
    known(cuisine, _, yes),
    known(price, _, yes),
    \+ known(diet, _, _).

next_question(time_of_day,
              'What time of day will you be dining?',
              ['breakfast (7am-11am)', 'brunch (11am-2pm)', 'lunch (12pm-3pm)', 'afternoon (3pm-6pm)', 'dinner (6pm-10pm)', 'late_night (10pm-2am)']) :-
    known(activity, restaurant, yes),
    known(location, _, yes),
    known(distance, _, yes),
    known(cuisine, _, yes),
    known(price, _, yes),
    known(diet, _, yes),
    \+ known(time_of_day, _, _).

next_question(vibe,
              'What kind of atmosphere do you prefer?',
              [casual, fancy, romantic, touristy]) :-
    known(activity, restaurant, yes),
    known(location, _, yes),
    known(distance, _, yes),
    known(cuisine, _, yes),
    known(price, _, yes),
    known(diet, _, yes),
    known(time_of_day, _, yes),
    \+ known(vibe, _, _).

next_question(group_size,
              'How many people will be dining?',
              [solo, couple, small_group, large_group]) :-
    known(activity, restaurant, yes),
    known(location, _, yes),
    known(distance, _, yes),
    known(cuisine, _, yes),
    known(price, _, yes),
    known(diet, _, yes),
    known(time_of_day, _, yes),
    known(vibe, _, yes),
    \+ known(group_size, _, _).

next_question(alcohol_ok,
              'Are you okay with the restaurant serving alcohol (optional to order)?',
              [yes, no]) :-
    known(activity, restaurant, yes),
    known(location, _, yes),
    known(distance, _, yes),
    known(cuisine, _, yes),
    known(price, _, yes),
    known(diet, _, yes),
    known(time_of_day, _, yes),
    known(vibe, _, yes),
    known(group_size, _, yes),
    \+ known(alcohol_ok, _, _).

% Pub-specific
next_question(pub_type,
              'What type of bar atmosphere do you prefer?',
              [classic_bar, bar_notable, craft_beer, rooftop, live_music, dance_club]) :-
    known(activity, pub, yes),
    known(location, _, yes),
    known(distance, _, yes),
    \+ known(pub_type, _, _).

% Chill-specific
next_question(chill_type,
              'What kind of place would you like to relax in?',
              [park, riverfront, plaza, cafe]) :-
    known(activity, chill, yes),
    known(location, _, yes),
    known(distance, _, yes),
    \+ known(chill_type, _, _).

% Sightseeing-specific
next_question(sight_type,
              'What type of attraction interests you?',
              [old_monument, modern_tourist_spot, museum, outdoor_scenery, theatre]) :-
    known(activity, sightseeing, yes),
    known(location, _, yes),
    known(distance, _, yes),
    \+ known(sight_type, _, _).

next_question(art_type,
              'What type of art or artifacts do you prefer?',
              [modern_art, classical_art, artifacts]) :-
    known(activity, sightseeing, yes),
    known(location, _, yes),
    known(distance, _, yes),
    known(sight_type, museum, yes),
    \+ known(art_type, _, _).

next_question(indoor_outdoor,
              'Do you prefer an indoor or outdoor attraction?',
              [indoor, outdoor]) :-
    known(activity, sightseeing, yes),
    known(location, _, yes),
    known(distance, _, yes),
    known(sight_type, modern_tourist_spot, yes),
    \+ known(indoor_outdoor, _, _).

% Optional helper
all_questions_answered :-
    \+ next_question(_, _, _).

% ============================================
% DETAIL EXTRACTION FOR PYTHON DISPLAY
% get_detail(Key, Label, Value)
% ============================================

get_detail(cuisine, 'Cuisine', Value) :-
    known(activity, restaurant, yes),
    known(cuisine, Value, yes).

get_detail(price, 'Price Level', Value) :-
    known(activity, restaurant, yes),
    known(price, PriceCode, yes),
    price_display(PriceCode, Value).

% Price range display helper
price_display(budget, 'Budget (under 8,000 ARS)').
price_display(affordable, 'Affordable (8,000-15,000 ARS)').
price_display(moderate, 'Moderate (15,000-25,000 ARS)').
price_display(expensive, 'Expensive (25,000-35,000 ARS)').
price_display(luxury, 'Luxury (35,000+ ARS)').
price_display(free, 'Free').

get_detail(pub_type, 'Type', Value) :-
    known(activity, pub, yes),
    known(pub_type, Value, yes).

get_detail(chill_type, 'Type', Value) :-
    known(activity, chill, yes),
    known(chill_type, Value, yes).

get_detail(sight_type, 'Type', Value) :-
    known(activity, sightseeing, yes),
    known(sight_type, Value, yes).

get_detail(art_type, 'Collection', Value) :-
    known(activity, sightseeing, yes),
    known(sight_type, museum, yes),
    known(art_type, Value, yes).

get_detail(indoor_outdoor, 'Setting', Value) :-
    known(activity, sightseeing, yes),
    known(sight_type, modern_tourist_spot, yes),
    known(indoor_outdoor, Value, yes).

get_detail(distance, 'Distance from Res Hall', Value) :-
    known(distance, Value, yes).

get_detail(diet, 'Dietary Restriction', Value) :-
    known(activity, restaurant, yes),
    known(diet, Value, yes).

get_detail(time_of_day, 'Time of Day', Value) :-
    known(activity, restaurant, yes),
    known(time_of_day, Value, yes).

get_detail(vibe, 'Vibe', Value) :-
    known(activity, restaurant, yes),
    known(vibe, Value, yes).

get_detail(group_size, 'Group Size', Value) :-
    known(activity, restaurant, yes),
    known(group_size, Value, yes).

get_detail(alcohol_ok, 'Serves Alcohol', Value) :-
    known(activity, restaurant, yes),
    known(alcohol_ok, Value, yes).
