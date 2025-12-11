% ============================================
% BUENOS AIRES KNOWLEDGE BASE
% Expert System for International Students in BA Residence Halls
% ============================================
% This file contains facts about restaurants, snacks, sightseeing,
% and nightlife options in Buenos Aires, organized by distance from
% typical student residence halls in Retiro/Recoleta area.
% ============================================

% ============================================
% RESTAURANTS - Full-Service Dining
% ============================================
% Format: restaurant_ba(Name, Distance, Cuisine, Budget, Diets, Times, Vibe, GroupSizes, Alcohol)
%   - Distance: walkable (from residence), short_transit (bus/subte), far (across city)
%   - Cuisine: argentinian, asian, italian, other
%   - Budget: low (<1500 ARS/person), medium (1500-3000), high (3000+)
%   - Diets: list of dietary options [none, vegetarian, vegan, halal, glutenfree]
%   - Times: list of meal times [breakfast, lunch, dinner, late_night]
%   - Vibe: quiet, social, fancy, casual
%   - GroupSizes: list of suitable group types [solo, couple, group]
%   - Alcohol: yes (serves alcohol), no (alcohol-free)

restaurant_ba('Santos Manjares',
    walkable,
    argentinian,
    medium,
    [none, vegetarian, glutenfree],
    [lunch, dinner],
    casual,
    [solo, couple, group],
    yes).

restaurant_ba('La Posta de los Tucu',
    walkable,
    argentinian,
    low,
    [none],
    [lunch, dinner],
    casual,
    [couple, group],
    yes).

restaurant_ba('El Establo Parrilla',
    walkable,
    argentinian,
    medium,
    [none, glutenfree],
    [lunch, dinner],
    casual,
    [solo, couple, group],
    yes).

restaurant_ba('Chiuso Ristorante',
    walkable,
    italian,
    high,
    [none, vegetarian],
    [lunch, dinner],
    fancy,
    [couple, group],
    yes).

restaurant_ba('Saigón - Tribunales',
    short_transit,
    asian,
    medium,
    [none, vegetarian, halal],
    [lunch, dinner],
    casual,
    [solo, couple, group],
    no).

restaurant_ba('Gran Dabbang',
    far,
    asian,
    medium,
    [none, vegetarian],
    [dinner],
    social,
    [couple, group],
    yes).

% ============================================
% SNACKS & CAFES - Quick Bites & Coffee
% ============================================
% Format: snack_ba(Name, Distance, Type, Budget, Diets, Times, Vibe, GroupSizes, Alcohol)
%   - Type: gelato, cafe, empanadas, bakery
%   - Other parameters same as restaurants

snack_ba('Heladeria Cadore',
    short_transit,
    gelato,
    low,
    [none, vegetarian],
    [afternoon, late_night],
    casual,
    [solo, couple, group],
    no).

snack_ba('Rapanui Recoleta',
    short_transit,
    gelato,
    medium,
    [none, vegetarian],
    [afternoon, evening],
    casual,
    [solo, couple, group],
    no).

snack_ba('Cafe Tortoni',
    walkable,
    cafe,
    medium,
    [none, vegetarian],
    [breakfast, afternoon],
    quiet,
    [solo, couple, group],
    no).

snack_ba('Pani Puerto Madero',
    short_transit,
    cafe,
    medium,
    [none, vegetarian],
    [breakfast, lunch, afternoon],
    social,
    [couple, group],
    no).

snack_ba('El Hornero Empanadas',
    walkable,
    empanadas,
    low,
    [none, vegetarian],
    [lunch, afternoon, late_night],
    casual,
    [solo, couple, group],
    no).
snack_ba('La Continental',
    short_transit,
    bakery,
    medium,
    [none, vegetarian],
    [breakfast, afternoon],
    casual,
    [solo, couple, group],
    no).
snack_ba('Confiteria Ideal',
    walkable,
    bakery,
    low,
    [none, vegetarian],
    [breakfast, afternoon],
    casual,
    [solo, couple, group],
    no).
snack_ba('Cafe Martinez',
    walkable,
    cafe,
    medium,
    [none, vegetarian],
    [breakfast, lunch, afternoon],
    casual,
    [solo, couple, group],
    no).
snack_ba('Rapanui Palermo',
    short_transit,
    gelato,
    medium,
    [none, vegetarian],
    [afternoon, evening],
    casual,
    [solo, couple, group],
    no).

% ============================================
% SIGHTSEEING - Museums, Parks, Landmarks
% ============================================
% Format: sightseeing_ba(Name, Distance, Type, Budget, Times, Vibe, GroupSizes)
%   - Type: museum_history, museum_modern, museum_classical, park, landmark, theatre, cultural_center
%   - Budget: free, low, medium, high
%   - No Diets or Alcohol parameters (not food venues)

sightseeing_ba('Palacio Paz',
    walkable,
    museum_history,
    low,
    [morning, afternoon],
    quiet,
    [solo, couple, group]).

sightseeing_ba('Centro Cultural Borges',
    walkable,
    museum_modern,
    low,
    [afternoon, evening],
    quiet,
    [solo, couple, group]).

sightseeing_ba('Museo del Bicentenario',
    short_transit,
    museum_history,
    free,
    [morning, afternoon],
    quiet,
    [solo, couple, group]).

sightseeing_ba('Museo Nacional de Bellas Artes',
    short_transit,
    museum_classical,
    free,
    [afternoon],
    quiet,
    [solo, couple, group]).

sightseeing_ba('MALBA',
    far,
    museum_modern,
    medium,
    [afternoon],
    quiet,
    [solo, couple, group]).
sightseeing_ba('Plaza San Martin',
    walkable,
    park,
    free,
    [afternoon, evening],
    quiet,
    [solo, couple, group]).

sightseeing_ba('Plaza Lavalle',
    walkable,
    park,
    free,
    [morning, afternoon],
    quiet,
    [solo, couple, group]).

sightseeing_ba('Reserva Ecologica Costanera Sur',
    short_transit,
    park,
    free,
    [morning, afternoon],
    quiet,
    [solo, couple, group]).

sightseeing_ba('Puerto Madero Waterfront',
    short_transit,
    park,
    free,
    [afternoon, evening],
    casual,
    [solo, couple, group]).
sightseeing_ba('Teatro Colon',
    walkable,
    theatre,
    medium,
    [afternoon, evening],
    fancy,
    [solo, couple, group]).

sightseeing_ba('Teatro Gran Rex',
    walkable,
    theatre,
    medium,
    [evening],
    social,
    [couple, group]).

sightseeing_ba('Teatro Opera Orbis',
    walkable,
    theatre,
    medium,
    [evening],
    social,
    [couple, group]).

sightseeing_ba('CCK - Centro Cultural Kirchner',
    short_transit,
    cultural_center,
    free,
    [afternoon, evening],
    quiet,
    [solo, couple, group]).
sightseeing_ba('Obelisco',
    walkable,
    landmark,
    free,
    [afternoon, evening],
    social,
    [solo, couple, group]).

sightseeing_ba('Casa Rosada & Plaza de Mayo',
    short_transit,
    landmark,
    free,
    [morning, afternoon],
    quiet,
    [solo, couple, group]).

sightseeing_ba('Puente de la Mujer',
    short_transit,
    landmark,
    free,
    [evening],
    casual,
    [solo, couple, group]).

sightseeing_ba('Galerias Pacifico Dome',
    walkable,
    landmark,
    free,
    [afternoon],
    quiet,
    [solo, couple, group]).

% ============================================
% NIGHTLIFE - Bars, Clubs, Milongas
% ============================================
% Format: nightlife_ba(Name, Distance, Type, Budget, Vibe, GroupSizes, Alcohol)
%   - Type: rooftop_bar, speakeasy, cocktail_bar, milonga, club
%   - No Diets or Times parameters (evening/night assumed)

nightlife_ba('Trade Sky Bar',
    walkable,
    rooftop_bar,
    high,
    social,
    [couple, group],
    yes).

nightlife_ba('Boca Arriba - Boca Abajo',
    walkable,
    speakeasy,
    medium,
    social,
    [couple, group],
    yes).

nightlife_ba('Floreria Atlantico',
    short_transit,
    cocktail_bar,
    high,
    fancy,
    [couple, group],
    yes).

nightlife_ba('La Viruta',
    far,
    milonga,
    low,
    social,
    [solo, group],
    yes).

nightlife_ba('El Beso',
    short_transit,
    milonga,
    low,
    social,
    [solo, couple, group],
    yes).

nightlife_ba('Asia de Cuba',
    short_transit,
    club,
    high,
    fancy,
    [couple, group],
    yes).