% RESTAURANTS

restaurant('Kung Food', east, chinese, '10-20').
restaurant('Yun Gui Chuan', east, chinese, '20-40').
restaurant('River View', east, chinese, '40+').
restaurant('Preem', east, indian, '10-20').
restaurant('Taste of Jaipur', east, indian, '20-40').
restaurant('Gunpowder', east, indian, '40+').
restaurant('Cabotte', east, french, '10-20').
restaurant('The Market Coffee House & Bar', east, french, '20-40').
restaurant('Le Cafe du Marche', east, french, '40+').
restaurant('Gloria', east, italian, '10-20').
restaurant('Sotto Cucina & Bar', east, italian, '20-40').
restaurant('Canto Corvino', east, italian, '40+').
restaurant('The Crown', east, english, '10-20').
restaurant('The Gun, Spitalfields', east, english, '20-40').
restaurant('Barge East', east, english, '40+').

restaurant('Silk Road', south, chinese, '10-20').
restaurant('Dragon Castle', south, chinese, '20-40').
restaurant('Hutong', south, chinese, '40+').
restaurant('Ganapati', south, indian, '10-20').
restaurant('Kricket', south, indian, '20-40').
restaurant('Babur', south, indian, '40+').
restaurant('Toulouse Lautrec', south, french, '10-20').
restaurant('Casse-Croûte', south, french, '20-40').
restaurant('Le Pont de la Tour', south, french, '40+').
restaurant('Theo\'s Pizzeria', south, italian, '10-20').
restaurant('Legare', south, italian, '20-40').
restaurant('Cafe Murano', south, italian, '40+').
restaurant('Masters Superfish', south, english, '10-20').
restaurant('The Camberwell Arms', south, english, '20-40').
restaurant('Roast', south, english, '40+').

restaurant('Chinese Gold Mine', west, chinese, '10-20').
restaurant('Royal China', west, chinese, '20-40').
restaurant('Min Jiang', west, chinese, '40+').
restaurant('Khan\'s', west, indian, '10-20').
restaurant('Dishoom', west, indian, '20-40').
restaurant('Gymkhana', west, indian, '40+').
restaurant('Le Petit Citron', west, french, '10-20').
restaurant('Aubaine', west, french, '20-40').
restaurant('Claude Bosi at Bibendum', west, french, '40+').
restaurant('Santa Maria', west, italian, '10-20').
restaurant('Osteria Basilico', west, italian, '20-40').
restaurant('River Cafe', west, italian, '40+').
restaurant('The Dove', west, english, '10-20').
restaurant('The Cow', west, english, '20-40').
restaurant('The Harwood Arms', west, english, '40+').

restaurant('Chinese Xi\'an Impression', north, chinese, '10-20').
restaurant('Three Uncles', north, chinese, '20-40').
restaurant('The Good Earth', north, chinese, '40+').
restaurant('Jai Krishna', north, indian, '10-20').
restaurant('The Tamil Prince', north, indian, '20-40').
restaurant('Anokhi', north, indian, '40+').
restaurant('Le Mercury', north, french, '10-20').
restaurant('La Ferme', north, french, '20-40').
restaurant('Odette\'s', north, french, '40+').
restaurant('Zia Lucia', north, italian, '10-20').
restaurant('Trullo', north, italian, '20-40').
restaurant('Luca', north, italian, '40+').
restaurant('Poppie\'s Fish & Chips', north, english, '10-20').
restaurant('The Drapers Arms', north, english, '20-40').
restaurant('Frederick\'s', north, english, '40+').

% PUBS

pub('Cafe 1001', east, new_modern_bar).
pub('Commercial Tavern', east, classic_english_pub).
pub('Juju\'s', east, live_music).
pub('Blues Kitchen Shoreditch', east, open_late).

pub('Gourmet Bar London Bridge', south, new_modern_bar).
pub('George', south, classic_english_pub).
pub('Common Pizza', south, live_music).
pub('The Raven', south, open_late).

pub('Dempseys Cocktail Bar', north, new_modern_bar).
pub('Flight Club Islington', north, classic_english_pub).
pub('The Blues Kitchen Camden', north, live_music).
pub('The Albany', north, open_late).

pub('The Builders Arms', west, new_modern_bar).
pub('The Elephant And Castle', west, classic_english_pub).
pub('Piano Kensington', west, live_music).
pub('Tamesis Dock', west, open_late).

% CHILL

chill('Victoria Park', east, park).
chill('Spitalfields Market', east, market).
chill('The Queens Walk', east, riverside_bench).

chill('Hampstead Heath', north, park).
chill('Primrose Hill Food Market', north, market).
chill('Does not exist, sorry choose another location', north, riverside_bench).

chill('Hyde Park', west, park).
chill('Portobello Road Market', west, market).
chill('Imperial Park', west, riverside_bench).

chill('Clapham Common', south, park).
chill('Borough Market', south, market).
chill('The London Peace Pagoda', south, riverside_bench).

% TRAVEL

:- discontiguous travel/3.
:- discontiguous travel/4.

travel('liverpool street', east, train).
travel('zipcar', east, car).
travel('Stansted Express', east, plane, budget).
travel('London City Airport', east, plane, no_budget).

travel('Queenstown Road Station', south, train).
travel('zipcar', south, car).
travel('Gatwick', south, plane, budget).
travel('heathrow', south, plane, no_budget).

travel('Paddington Station', west, train).
travel('zipcar', west, car).
travel('Stansted Express', west, plane, budget).
travel('Heathrow', west, plane, no_budget).

travel('Kings Cross station', north, train).
travel('zipcar', north, car).
travel('Stansted', north, plane, budget).
travel('LCY', north, plane, no_budget).

% SIGHTSEEING

sightseeing('Cutty Sark', south, old_monument, outdoor).
sightseeing('Eltham Palace', south, old_monument, outdoor).
sightseeing('The Shard', south, modern_tourist_spot, outdoor).
sightseeing('The O2 / Up at The O2', south, modern_tourist_spot, outdoor).
sightseeing('White Cube', south, museum, modern_art).
sightseeing('Dulwich Picture Gallery', south, museum, classical_art).
sightseeing('Horniman Museum', south, museum, artifacts).
sightseeing('Greenwich Park', south, outdoor_scenery, outdoor).

sightseeing('Kensington Palace', west, old_monument, outdoor).
sightseeing('Chiswick House', west, old_monument, outdoor).
sightseeing('Design Museum', west, modern_tourist_spot, indoor).
sightseeing('Westfield London', west, modern_tourist_spot, indoor).
sightseeing('Serpentine Galleries', west, museum, modern_art).
sightseeing('The Wallace Collection', west, museum, classical_art).
sightseeing('Victoria and Albert Museum', west, museum, artifacts).
sightseeing('Kyoto Garden', west, outdoor_scenery, outdoor).

sightseeing('Highgate Cemetery', north, old_monument, outdoor).
sightseeing('Fenton House', north, old_monument, outdoor).
sightseeing('The Dare Skywalk', north, modern_tourist_spot, outdoor).
sightseeing('Alexandra Palace', north, modern_tourist_spot, outdoor).
sightseeing('Estorick Collection', north, museum, modern_art).
sightseeing('Kenwood House', north, museum, classical_art).
sightseeing('The British Library', north, museum, artifacts).
sightseeing('Hampstead Heath & Parliament Hill', north, outdoor_scenery, outdoor).


% Dynamic predicates to store user answers
:- dynamic known/3.

% Clear known facts
clear_known :- retractall(known(_, _, _)).

% Main recommendation rule - finds a recommendation based on user preferences
recommend(Name) :- 
    known(activity, restaurant, yes),
    known(location, Location, yes),
    known(cuisine, Cuisine, yes),
    known(price, Price, yes),
    restaurant(Name, Location, Cuisine, Price).

recommend(Name) :- 
    known(activity, pub, yes),
    known(location, Location, yes),
    known(pub_type, PubType, yes),
    pub(Name, Location, PubType).

recommend(Name) :- 
    known(activity, chill, yes),
    known(location, Location, yes),
    known(chill_type, ChillType, yes),
    chill(Name, Location, ChillType).

recommend(Name) :- 
    known(activity, travel, yes),
    known(location, Location, yes),
    known(transport, plane, yes),
    known(budget, Budget, yes),
    travel(Name, Location, plane, Budget).

recommend(Name) :- 
    known(activity, travel, yes),
    known(location, Location, yes),
    known(transport, Transport, yes),
    Transport \= plane,
    travel(Name, Location, Transport).

recommend(Name) :- 
    known(activity, sightseeing, yes),
    known(location, Location, yes),
    known(sight_type, museum, yes),
    known(art_type, ArtType, yes),
    sightseeing(Name, Location, museum, ArtType).

recommend(Name) :- 
    known(activity, sightseeing, yes),
    known(location, Location, yes),
    known(sight_type, modern_tourist_spot, yes),
    known(indoor_outdoor, IndoorOutdoor, yes),
    sightseeing(Name, Location, modern_tourist_spot, IndoorOutdoor).

recommend(Name) :- 
    known(activity, sightseeing, yes),
    known(location, Location, yes),
    known(sight_type, old_monument, yes),
    sightseeing(Name, Location, old_monument, outdoor).

recommend(Name) :- 
    known(activity, sightseeing, yes),
    known(location, Location, yes),
    known(sight_type, outdoor_scenery, yes),
    sightseeing(Name, Location, outdoor_scenery, outdoor).

% Rules to determine what question needs to be asked next
next_question(activity, 'What would you like to do?', [restaurant, pub, chill, travel, sightseeing]) :-
    \+ known(activity, _, _).

next_question(location, 'Which area of London would you prefer?', [north, south, east, west]) :-
    known(activity, _, yes),
    \+ known(location, _, _).

next_question(cuisine, 'What type of cuisine would you like?', [chinese, indian, french, italian, english]) :-
    known(activity, restaurant, yes),
    known(location, _, yes),
    \+ known(cuisine, _, _).

next_question(price, 'What is your price range per person (£)?', ['10-20', '20-40', '40+']) :-
    known(activity, restaurant, yes),
    known(location, _, yes),
    known(cuisine, _, yes),
    \+ known(price, _, _).

next_question(pub_type, 'What type of pub atmosphere do you prefer?', [new_modern_bar, classic_english_pub, live_music, open_late]) :-
    known(activity, pub, yes),
    known(location, _, yes),
    \+ known(pub_type, _, _).

next_question(chill_type, 'What kind of place would you like to relax?', [park, market, riverside_bench]) :-
    known(activity, chill, yes),
    known(location, _, yes),
    \+ known(chill_type, _, _).

next_question(transport, 'What mode of transport do you prefer?', [train, car, plane]) :-
    known(activity, travel, yes),
    known(location, _, yes),
    \+ known(transport, _, _).

next_question(budget, 'What is your budget preference?', [budget, no_budget]) :-
    known(activity, travel, yes),
    known(location, _, yes),
    known(transport, plane, yes),
    \+ known(budget, _, _).

next_question(sight_type, 'What type of attraction interests you?', [old_monument, modern_tourist_spot, museum, outdoor_scenery]) :-
    known(activity, sightseeing, yes),
    known(location, _, yes),
    \+ known(sight_type, _, _).

next_question(art_type, 'What type of art or artifacts do you prefer?', [modern_art, classical_art, artifacts]) :-
    known(activity, sightseeing, yes),
    known(location, _, yes),
    known(sight_type, museum, yes),
    \+ known(art_type, _, _).

next_question(indoor_outdoor, 'Do you prefer indoor or outdoor?', [indoor, outdoor]) :-
    known(activity, sightseeing, yes),
    known(location, _, yes),
    known(sight_type, modern_tourist_spot, yes),
    \+ known(indoor_outdoor, _, _).

% Check if all necessary questions have been answered
all_questions_answered :- 
    \+ next_question(_, _, _).

% Rules to get display details for the recommendation

get_detail(cuisine, Label, Value) :-
    known(activity, restaurant, yes),
    known(cuisine, Value, yes),
    Label = 'Cuisine'.

get_detail(price, Label, Value) :-
    known(activity, restaurant, yes),
    known(price, Value, yes),
    Label = 'Price Range'.

get_detail(pub_type, Label, Value) :-
    known(activity, pub, yes),
    known(pub_type, Value, yes),
    Label = 'Type'.

get_detail(chill_type, Label, Value) :-
    known(activity, chill, yes),
    known(chill_type, Value, yes),
    Label = 'Type'.

get_detail(transport, Label, Value) :-
    known(activity, travel, yes),
    known(transport, Value, yes),
    Label = 'Transport'.

get_detail(budget, Label, Value) :-
    known(activity, travel, yes),
    known(transport, plane, yes),
    known(budget, Value, yes),
    Label = 'Budget'.

get_detail(sight_type, Label, Value) :-
    known(activity, sightseeing, yes),
    known(sight_type, Value, yes),
    Label = 'Type'.

get_detail(art_type, Label, Value) :-
    known(activity, sightseeing, yes),
    known(sight_type, museum, yes),
    known(art_type, Value, yes),
    Label = 'Collection'.

get_detail(indoor_outdoor, Label, Value) :-
    known(activity, sightseeing, yes),
    known(sight_type, modern_tourist_spot, yes),
    known(indoor_outdoor, Value, yes),
    Label = 'Setting'.