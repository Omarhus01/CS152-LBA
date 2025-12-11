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

% RESTAURANT recommendations
recommend(Name) :- 
    known(city, london, yes),
    known(activity, restaurant, yes),
    known(distance, Distance, yes),
    known(cuisine, Cuisine, yes),
    known(budget, Budget, yes),
    known(diet, Diet, yes),
    known(time_of_day, Time, yes),
    known(vibe, Vibe, yes),
    known(group_size, GroupSize, yes),
    known(alcohol_ok, yes, yes),  % User WANTS alcohol
    restaurant_london(Name, Distance, Cuisine, Budget, Diets, Times, Vibe, GroupSizes, yes),  % Must serve alcohol
    member(Diet, Diets),
    member(Time, Times),
    member(GroupSize, GroupSizes).

recommend(Name) :- 
    known(city, london, yes),
    known(activity, restaurant, yes),
    known(distance, Distance, yes),
    known(cuisine, Cuisine, yes),
    known(budget, Budget, yes),
    known(diet, Diet, yes),
    known(time_of_day, Time, yes),
    known(vibe, Vibe, yes),
    known(group_size, GroupSize, yes),
    known(alcohol_ok, no, yes),  % User doesn't need alcohol - can go anywhere
    restaurant_london(Name, Distance, Cuisine, Budget, Diets, Times, Vibe, GroupSizes, _),  % Any alcohol status
    member(Diet, Diets),
    member(Time, Times),
    member(GroupSize, GroupSizes).

recommend(Name) :- 
    known(city, ba, yes),
    known(activity, restaurant, yes),
    known(distance, Distance, yes),
    known(cuisine, Cuisine, yes),
    known(budget, Budget, yes),
    known(diet, Diet, yes),
    known(time_of_day, Time, yes),
    known(vibe, Vibe, yes),
    known(group_size, GroupSize, yes),
    known(alcohol_ok, yes, yes),  % User WANTS alcohol
    restaurant_ba(Name, Distance, Cuisine, Budget, Diets, Times, Vibe, GroupSizes, yes),  % Must serve alcohol
    member(Diet, Diets),
    member(Time, Times),
    member(GroupSize, GroupSizes).

recommend(Name) :- 
    known(city, ba, yes),
    known(activity, restaurant, yes),
    known(distance, Distance, yes),
    known(cuisine, Cuisine, yes),
    known(budget, Budget, yes),
    known(diet, Diet, yes),
    known(time_of_day, Time, yes),
    known(vibe, Vibe, yes),
    known(group_size, GroupSize, yes),
    known(alcohol_ok, no, yes),  % User doesn't need alcohol - can go anywhere
    restaurant_ba(Name, Distance, Cuisine, Budget, Diets, Times, Vibe, GroupSizes, _),  % Any alcohol status
    member(Diet, Diets),
    member(Time, Times),
    member(GroupSize, GroupSizes).

recommend(Name) :- 
    known(city, tokyo, yes),
    known(activity, restaurant, yes),
    known(distance, Distance, yes),
    known(cuisine, Cuisine, yes),
    known(budget, Budget, yes),
    known(diet, Diet, yes),
    known(time_of_day, Time, yes),
    known(vibe, Vibe, yes),
    known(group_size, GroupSize, yes),
    known(alcohol_ok, yes, yes),
    restaurant_tokyo(Name, Distance, Cuisine, Budget, Diets, Times, Vibe, GroupSizes, yes),
    member(Diet, Diets),
    member(Time, Times),
    member(GroupSize, GroupSizes).

recommend(Name) :- 
    known(city, tokyo, yes),
    known(activity, restaurant, yes),
    known(distance, Distance, yes),
    known(cuisine, Cuisine, yes),
    known(budget, Budget, yes),
    known(diet, Diet, yes),
    known(time_of_day, Time, yes),
    known(vibe, Vibe, yes),
    known(group_size, GroupSize, yes),
    known(alcohol_ok, no, yes),
    restaurant_tokyo(Name, Distance, Cuisine, Budget, Diets, Times, Vibe, GroupSizes, _),
    member(Diet, Diets),
    member(Time, Times),
    member(GroupSize, GroupSizes).

% SNACK recommendations (no alcohol filter needed - most snacks don't serve alcohol)
recommend(Name) :- 
    known(city, london, yes),
    known(activity, snack, yes),
    known(distance, Distance, yes),
    known(snack_type, Type, yes),
    known(budget, Budget, yes),
    known(time_of_day, Time, yes),
    known(vibe, Vibe, yes),
    known(group_size, GroupSize, yes),
    snack_london(Name, Distance, Type, Budget, _, Times, Vibe, GroupSizes, _),
    member(Time, Times),
    member(GroupSize, GroupSizes).

recommend(Name) :- 
    known(city, ba, yes),
    known(activity, snack, yes),
    known(distance, Distance, yes),
    known(snack_type, Type, yes),
    known(budget, Budget, yes),
    known(time_of_day, Time, yes),
    known(vibe, Vibe, yes),
    known(group_size, GroupSize, yes),
    snack_ba(Name, Distance, Type, Budget, _, Times, Vibe, GroupSizes, _),
    member(Time, Times),
    member(GroupSize, GroupSizes).

% SIGHTSEEING recommendations
recommend(Name) :- 
    known(city, london, yes),
    known(activity, sightseeing, yes),
    known(distance, Distance, yes),
    known(sight_type, Type, yes),
    known(budget, Budget, yes),
    known(time_of_day, Time, yes),
    known(vibe, Vibe, yes),
    known(group_size, GroupSize, yes),
    sightseeing_london(Name, Distance, Type, Budget, Times, Vibe, GroupSizes),
    member(Time, Times),
    member(GroupSize, GroupSizes).

recommend(Name) :- 
    known(city, ba, yes),
    known(activity, sightseeing, yes),
    known(distance, Distance, yes),
    known(sight_type, Type, yes),
    known(budget, Budget, yes),
    known(time_of_day, Time, yes),
    known(vibe, Vibe, yes),
    known(group_size, GroupSize, yes),
    sightseeing_ba(Name, Distance, Type, Budget, Times, Vibe, GroupSizes),
    member(Time, Times),
    member(GroupSize, GroupSizes).

% NIGHTLIFE recommendations
recommend(Name) :- 
    known(city, london, yes),
    known(activity, nightlife, yes),
    known(distance, Distance, yes),
    known(nightlife_type, Type, yes),
    known(budget, Budget, yes),
    known(vibe, Vibe, yes),
    known(group_size, GroupSize, yes),
    known(alcohol_ok, Alcohol, yes),
    nightlife_london(Name, Distance, Type, Budget, Vibe, GroupSizes, Alcohol),
    member(GroupSize, GroupSizes).

recommend(Name) :- 
    known(city, ba, yes),
    known(activity, nightlife, yes),
    known(distance, Distance, yes),
    known(nightlife_type, Type, yes),
    known(budget, Budget, yes),
    known(vibe, Vibe, yes),
    known(group_size, GroupSize, yes),
    known(alcohol_ok, Alcohol, yes),
    nightlife_ba(Name, Distance, Type, Budget, Vibe, GroupSizes, Alcohol),
    member(GroupSize, GroupSizes).

% ============================================
% QUESTION FLOW LOGIC
% ============================================

% City selection (FIRST QUESTION)
next_question(city, 'Which city are you exploring?', [london, ba, tokyo]) :-
    \+ known(city, _, _).

% Activity type (SECOND QUESTION)
next_question(activity, 'What would you like to do?', [restaurant, snack, sightseeing, nightlife]) :-
    known(city, _, yes),
    \+ known(activity, _, _).

% Distance from residence hall
next_question(distance, 'How far are you willing to travel?', [walkable, short_transit, far]) :-
    known(city, _, yes),
    known(activity, _, yes),
    \+ known(distance, _, _).

% RESTAURANT-specific questions
next_question(cuisine, 'What type of cuisine would you like?', [argentinian, asian, italian, other]) :-
    known(activity, restaurant, yes),
    known(distance, _, yes),
    \+ known(cuisine, _, _).

% SNACK-specific questions
next_question(snack_type, 'What type of snack/cafe?', [gelato, cafe, empanadas, bakery]) :-
    known(activity, snack, yes),
    known(distance, _, yes),
    \+ known(snack_type, _, _).

% SIGHTSEEING-specific questions
next_question(sight_type, 'What type of attraction?', [museum_history, museum_modern, museum_classical, park, landmark, theatre, cultural_center]) :-
    known(activity, sightseeing, yes),
    known(distance, _, yes),
    \+ known(sight_type, _, _).

% NIGHTLIFE-specific questions
next_question(nightlife_type, 'What type of nightlife?', [rooftop_bar, speakeasy, cocktail_bar, milonga, club, pub, live_music]) :-
    known(activity, nightlife, yes),
    known(distance, _, yes),
    \+ known(nightlife_type, _, _).

% Budget level (for ALL activities)
next_question(budget, 'What is your budget?', [free, low, medium, high]) :-
    known(distance, _, yes),
    (known(cuisine, _, yes) ; known(snack_type, _, yes) ; known(sight_type, _, yes) ; known(nightlife_type, _, yes)),
    \+ known(budget, _, _).

% Dietary restrictions (ONLY for full meals - restaurants)
next_question(diet, 'Any dietary restrictions?', [none, vegetarian, vegan, halal, glutenfree]) :-
    known(activity, restaurant, yes),
    known(budget, _, yes),
    \+ known(diet, _, _).

% Time of day (different options per activity)
next_question(time_of_day, 'What time are you going?', [breakfast, lunch, dinner, late_night]) :-
    (known(activity, restaurant, yes) ; known(activity, snack, yes)),
    known(budget, _, yes),
    (known(diet, _, yes) ; known(activity, snack, yes)),
    \+ known(time_of_day, _, _).

next_question(time_of_day, 'What time are you going?', [morning, afternoon, evening]) :-
    known(activity, sightseeing, yes),
    known(budget, _, yes),
    \+ known(time_of_day, _, _).

% Vibe/atmosphere (for ALL activities)
next_question(vibe, 'What vibe are you looking for?', [quiet, social, fancy, casual]) :-
    known(budget, _, yes),
    (known(time_of_day, _, yes) ; known(activity, nightlife, yes)),
    \+ known(vibe, _, _).

% Group size (for ALL activities)
next_question(group_size, 'How many people?', [solo, couple, group]) :-
    known(vibe, _, yes),
    \+ known(group_size, _, _).

% Alcohol availability (ONLY for restaurants and nightlife - not snacks or sightseeing!)
next_question(alcohol_ok, 'Do you want alcohol available?', [yes, no]) :-
    (known(activity, restaurant, yes) ; known(activity, nightlife, yes)),
    known(group_size, _, yes),
    \+ known(alcohol_ok, _, _).

% ============================================
% DISPLAY DETAILS HELPER RULES
% ============================================

get_detail(city, Label, Value) :-
    known(city, Value, yes),
    Label = 'City'.

get_detail(distance, Label, Value) :-
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
    Label = 'Alcohol'.
