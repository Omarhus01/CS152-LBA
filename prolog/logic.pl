% ============================================
% SHARED LOGIC - Works for ALL cities
% ============================================

% Dynamic predicates to store user answers
:- dynamic known/3.

% Clear known facts
clear_known :- retractall(known(_, _, _)).

% ============================================
% RECOMMENDATION RULES
% ============================================

% Restaurant recommendation - matches user preferences with city-specific facts
recommend(Name) :- 
    known(city, london, yes),
    known(distance, Distance, yes),
    known(cuisine, Cuisine, yes),
    known(budget, Budget, yes),
    known(diet, Diet, yes),
    known(time_of_day, Time, yes),
    known(vibe, Vibe, yes),
    known(group_size, GroupSize, yes),
    known(alcohol_ok, Alcohol, yes),
    restaurant_london(Name, Distance, Cuisine, Budget, Diets, Times, Vibe, GroupSizes, Alcohol),
    member(Diet, Diets),
    member(Time, Times),
    member(GroupSize, GroupSizes).

recommend(Name) :- 
    known(city, ba, yes),
    known(distance, Distance, yes),
    known(cuisine, Cuisine, yes),
    known(budget, Budget, yes),
    known(diet, Diet, yes),
    known(time_of_day, Time, yes),
    known(vibe, Vibe, yes),
    known(group_size, GroupSize, yes),
    known(alcohol_ok, Alcohol, yes),
    restaurant_ba(Name, Distance, Cuisine, Budget, Diets, Times, Vibe, GroupSizes, Alcohol),
    member(Diet, Diets),
    member(Time, Times),
    member(GroupSize, GroupSizes).

recommend(Name) :- 
    known(city, tokyo, yes),
    known(distance, Distance, yes),
    known(cuisine, Cuisine, yes),
    known(budget, Budget, yes),
    known(diet, Diet, yes),
    known(time_of_day, Time, yes),
    known(vibe, Vibe, yes),
    known(group_size, GroupSize, yes),
    known(alcohol_ok, Alcohol, yes),
    restaurant_tokyo(Name, Distance, Cuisine, Budget, Diets, Times, Vibe, GroupSizes, Alcohol),
    member(Diet, Diets),
    member(Time, Times),
    member(GroupSize, GroupSizes).



% ============================================
% QUESTION FLOW LOGIC
% ============================================

% City selection (FIRST QUESTION)
next_question(city, 'Which city are you exploring?', [london, ba, tokyo]) :-
    \+ known(city, _, _).

% Activity selection
next_question(activity, 'What would you like to do?', [restaurant, pub, chill, travel, sightseeing]) :-
    known(city, _, yes),
    \+ known(activity, _, _).

% Location within city
next_question(location, 'Which area would you prefer?', [north, south, east, west]) :-
    known(city, _, yes),
    known(activity, _, yes),
    \+ known(location, _, _).

% Restaurant specific questions
next_question(cuisine, 'What type of cuisine would you like?', [chinese, indian, french, italian, english]) :-
    known(activity, restaurant, yes),
    known(location, _, yes),
    \+ known(cuisine, _, _).

next_question(price, 'What is your price range per person?', ['10-20', '20-40', '40+']) :-
    known(activity, restaurant, yes),
    known(location, _, yes),
    known(cuisine, _, yes),
    \+ known(price, _, _).

% Pub specific questions
next_question(pub_type, 'What type of pub atmosphere do you prefer?', [new_modern_bar, classic_english_pub, live_music, open_late]) :-
    known(activity, pub, yes),
    known(location, _, yes),
    \+ known(pub_type, _, _).

% Chill specific questions
next_question(chill_type, 'What kind of place would you like to relax?', [park, market, riverside_bench]) :-
    known(activity, chill, yes),
    known(location, _, yes),
    \+ known(chill_type, _, _).

% Travel specific questions
next_question(transport, 'What mode of transport do you prefer?', [train, car, plane]) :-
    known(activity, travel, yes),
    known(location, _, yes),
    \+ known(transport, _, _).

next_question(budget, 'What is your budget preference?', [budget, no_budget]) :-
    known(activity, travel, yes),
    known(location, _, yes),
    known(transport, plane, yes),
    \+ known(budget, _, _).

% Sightseeing specific questions
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
alDistance from residence hall
next_question(distance, 'How far are you willing to travel?', [walkable, short_transit, far]) :-
    known(city, _, yes),
    \+ known(distance, _, _).

% Cuisine type
next_question(cuisine, 'What type of cuisine would you like?', [argentinian, asian, italian, other]) :-
    known(distance, _, yes),
    \+ known(cuisine, _, _).

% Budget level
next_questidistance, Label, Value) :-
    known(distance, Value, yes),
    Label = 'Distance'.

get_detail(cuisine, Label, Value) :-
    known(cuisine, Value, yes),
    Label = 'Cuisine'.

get_detail(budget, Label, Value) :-
    known(budget, Value, yes),
    Label = 'Budget'.

get_detail(diet, Label, Value) :-
    known(diet, Value, yes),
    Label = 'Dietary Restriction'.

get_detail(time_of_day, Label, Value) :-
    known(time_of_day, Value, yes),
    Label = 'Time of Day'.

get_detail(vibe, Label, Value) :-
    known(vibe, Value, yes),
    Label = 'Vibe'.

get_detail(group_size, Label, Value) :-
    known(group_size, Value, yes),
    Label = 'Group Size'.

get_detail(alcohol_ok, Label, Value) :-
    known(alcohol_ok, Value, yes),
    Label = 'Alcohol