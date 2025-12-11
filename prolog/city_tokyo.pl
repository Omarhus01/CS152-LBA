% ============================================
% TOKYO FACTS - Fill this in!
% ============================================

% RESTAURANTS - Tokyo (Need ~60 total: 15 per area)
% Format: restaurant(tokyo, 'Name', Area, Cuisine, Price).
% Areas: north, south, east, west
% Cuisines: chinese, indian, french, italian, english (adjust if needed)
% Prices: '10-20', '20-40', '40+'

% Example:
% restaurant(tokyo, 'Example Restaurant', north, chinese, '10-20').

% TODO: Add your Tokyo restaurants here


% PUBS - Tokyo (Need ~16 total: 4 per area)
% Format: pub(tokyo, 'Name', Area, Type).
% Types: new_modern_bar, classic_english_pub, live_music, open_late

% Example:
% pub(tokyo, 'Example Bar', north, new_modern_bar).

% TODO: Add your Tokyo pubs here


% CHILL SPOTS - Tokyo (Need 12 total: 3 per area)
% Format: chill(tokyo, 'Name', Area, Type).
% Types: park, market, riverside_bench

% Example:
% chill(tokyo, 'Example Garden', north, park).

% TODO: Add your Tokyo chill spots here


% TRAVEL - Tokyo (Need ~16 total: 4 per area)
% Format: travel(tokyo, 'Name', Area, Mode).
%     OR: travel(tokyo, 'Name', Area, plane, Budget).
% Modes: train, car, plane
% Budget (for planes only): budget, no_budget

:- discontiguous travel/4.
:- discontiguous travel/5.

% Example:
% travel(tokyo, 'Example Station', north, train).
% travel(tokyo, 'Example Airport', north, plane, budget).

% TODO: Add your Tokyo travel options here


% SIGHTSEEING - Tokyo (Need ~24 total)
% Format: sightseeing(tokyo, 'Name', Area, Type, Subtype).
% Types: old_monument, modern_tourist_spot, museum, outdoor_scenery
% Subtypes:
%   - For museum: modern_art, classical_art, artifacts
%   - For modern_tourist_spot: indoor, outdoor
%   - For old_monument: outdoor
%   - For outdoor_scenery: outdoor

% Example:
% sightseeing(tokyo, 'Example Temple', north, old_monument, outdoor).
% sightseeing(tokyo, 'Example Museum', south, museum, artifacts).

% TODO: Add your Tokyo sightseeing spots here
