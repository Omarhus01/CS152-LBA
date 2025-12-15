# Buenos Aires Expert System - CS152 LBA

An expert system to help students find the best restaurants, pubs, chill spots, and sightseeing attractions in **Buenos Aires**, Argentina.

## 🎯 Project Overview

This expert system uses **Prolog** for the knowledge base and **Python** (PySWIP) for a chat-style GUI interface. It asks students about their preferences and recommends the best places to visit near the residence hall at Esmeralda 920, Microcentro.

### Features
- **38 Restaurants** across 6 neighborhoods with detailed attributes
- **15 Pubs & Bars** for nightlife with drink prices
- **12 Chill Spots** (parks free, cafes with pricing)
- **16 Sightseeing Attractions** with entry fees (many free!)
- **Chat-Style GUI** with Tkinter
- **Google Maps Integration** - clickable buttons for every location
- **Complete Price System** - ALL activities have budget filtering (restaurants, pub drinks, park vs cafe costs, museum entry fees)
- **Dynamic Location Filtering** - neighborhoods shown based on distance preference
- **Price Ranges** - actual ARS values displayed (budget, affordable, moderate, expensive, luxury, free)
- **Time Ranges** - specific hours for dining (breakfast 7-11am, brunch 11am-2pm, etc.)

### Askables (10 total)
1. **Activity** - restaurant, pub, chill, sightseeing
2. **Distance** - walkable, short_ride, long_ride, doesn't matter (from Esmeralda 920) - *Asked BEFORE location to enable smart filtering*
3. **Location** - dynamically filtered based on distance (e.g., walkable → microcentro/puerto_madero only)
4. **Activity-Specific Type** - cuisine (restaurants), pub_type (bars), chill_type (parks/cafes), sight_type (monuments/museums)
5. **Price** - For ALL activities: restaurant meals, pub drinks, park vs cafe costs, museum entry fees
6. **Diet** - none, vegetarian, vegan, gluten_free (restaurants only)
7. **Time of Day** - breakfast (7-11am), brunch (11am-2pm), lunch (12-3pm), afternoon (3-6pm), dinner (6-10pm), late_night (10pm-2am) (restaurants only)
8. **Vibe** - casual, fancy, romantic, touristy (restaurants only)
9. **Group Size** - solo, couple, small_group, large_group (restaurants only)
10. **Alcohol** - yes, no (restaurants only - filters places that serve alcohol)

## 📁 Project Structure

```
CS152 LBA/
├── BA_files/
│   ├── ba_expert_system_gui.py   # Chat-style Tkinter GUI (main interface)
│   ├── ba_expert_system.py       # Text-based numbered menu version
│   ├── kb_ba.pl                  # Buenos Aires knowledge base (38 restaurants + more)
│   └── maps_urls.pl              # Google Maps URLs for all locations
├── Removed_when_done_DON'T_USE/  # Old multi-city version (deprecated)
├── .gitignore
└── README.md
```

## 🚀 How to Run

### ⚙️ Platform Compatibility

**✅ Windows**: Fully tested and works perfectly  
**✅ macOS**: Compatible with Intel and Apple Silicon Macs  
**✅ Linux**: Fully supported

### Prerequisites

#### 1. Install SWI-Prolog

**Windows:**
- Download from: https://www.swi-prolog.org/download/stable
- Run the installer (`.exe` file)
- Make sure to check "Add to PATH" during installation

**macOS:**
```bash
# Using Homebrew
brew install swi-prolog
```

**Linux (Ubuntu/Debian):**
```bash
sudo apt-get update
sudo apt-get install swi-prolog
```

#### 2. Install Python Dependencies
```bash
pip install pyswip
```

**Note for macOS users:** If you encounter issues with PySWIP, you may need to:
```bash
pip install pyswip --no-cache-dir
# Or use Python 3.9+ which has better compatibility
```

### Run the GUI Version (Recommended)
```bash
cd BA_files
python ba_expert_system_gui.py
```

### Run the Text-Based Version
```bash
cd BA_files
python ba_expert_system.py
```

### Troubleshooting

**"SWI-Prolog not found" error:**
- Windows: Ensure SWI-Prolog is in your PATH environment variable
- macOS/Linux: Try `which swipl` to verify installation

**"Module pyswip not found":**
- Run `pip install pyswip` again
- Try `pip3 install pyswip` if using Python 3

**GUI doesn't open:**
- Tkinter should be included with Python, but if missing:
  - Windows: Reinstall Python with "tcl/tk" option checked
  - macOS: `brew install python-tk`
  - Linux: `sudo apt-get install python3-tk`

## 📊 Knowledge Base Statistics

| Category | Count | Details |
|----------|-------|---------|
| **Restaurants** | 38 | Parrillas, pizza, pasta, burgers, gelato, cafes, vegetarian |
| **Pubs/Bars** | 15 | Classic bars, craft beer, rooftop, live music, dance clubs |
| **Chill Spots** | 12 | Parks, plazas, riverfront areas, cafes |
| **Sightseeing** | 16 | Museums, monuments, outdoor scenery, theaters |
| **Total Locations** | **81** | All with Google Maps integration |

### Neighborhoods Covered
- **Microcentro** (walkable) - 17 restaurants, historic cafes, monuments
- **Puerto Madero** (walkable) - 4 restaurants, modern waterfront, ecological reserve
- **San Telmo** (short ride) - 5 restaurants, tango culture, art museums
- **Recoleta** (short ride) - 4 restaurants, cemetery, fine arts museum
- **Palermo** (long ride) - 6 restaurants, parks, modern art (MALBA)
- **Belgrano** (long ride) - 4 restaurants, parks, quieter residential area

## 🎨 Extensions Implemented

### Extension 1: Numbered Menu Responses
Users can select options by typing numbers (1-7) instead of full words.

### Extension 2: Natural Language Questions
Questions are phrased in full sentences for better user experience.

### Extension 3: Chat-Style GUI with Google Maps
- **Tkinter chat interface** with bot/user message bubbles
- **Clickable Google Maps buttons** for every recommendation
- **Mouse wheel scrolling** throughout the chat area
- **Price and time ranges** displayed with actual values

## 📝 Restaurant Format

```prolog
restaurant(
    'Don Julio',           % Name
    palermo,               % Location (neighborhood)
    parrilla,              % Cuisine type
    luxury,                % Price tier (with ARS ranges shown to user)
    long_ride,             % Distance from Esmeralda 920
    [none, gluten_free],   % Dietary options
    [lunch, dinner],       % Times available
    fancy,                 % Vibe/atmosphere
    [couple, small_group, large_group],  % Group sizes
    yes                    % Serves alcohol (yes/no)
).
```

## 🗺️ Google Maps Integration

Each location has a clickable "📍 Google Maps" button that opens the location in your default browser. URLs are stored in `maps_urls.pl`:

```prolog
maps_url('Don Julio', 'https://maps.app.goo.gl/xyz123').
```

## 📝 Assignment Requirements Status

- [x] 8+ askables (we have 10)
- [x] Comprehensive knowledge base (81 total locations)
- [x] 3 Extensions (numbered menu, natural language, GUI with Maps)
- [ ] Logic visualization (flowchart/tree diagram)
- [ ] 3 documented test cases
- [ ] Real-world visit + selfie
- [ ] 5-page report

## 🔧 Tech Stack

- **Prolog**: SWI-Prolog for knowledge base and inference
- **Python**: PySWIP for Prolog-Python integration
- **Tkinter**: GUI framework for chat interface
- **webbrowser**: Opens Google Maps links
- **Git**: Version control

## 🏃 Quick Start Guide

1. Clone the repository
2. Install PySWIP: `pip install pyswip`
3. Navigate to BA_files: `cd BA_files`
4. Run the GUI: `python ba_expert_system_gui.py`
5. Answer questions in the chat interface
6. Click Google Maps buttons to view locations

## 💡 Special Features

- **Complete Budget System**: ALL 81 locations have pricing - restaurant meals, pub drink costs, free parks vs paid cafes, museum entry fees
- **Smart Location Filtering**: Distance preference determines which neighborhoods are shown (walkable → microcentro/puerto_madero, short ride → san_telmo/recoleta, long ride → palermo/belgrano)
- **All-time availability**: Cafes and gelato shops available at any time of day
- **Realistic pricing**: ARS ranges based on actual Buenos Aires costs (2025)
- **Distance-based**: All distances calculated from residence hall at Esmeralda 920
- **Alcohol filtering**: Option to exclude places that serve alcohol
- **Dietary filters**: Vegetarian, vegan, gluten-free options clearly marked
- **Free options**: Many parks, monuments, and plazas are completely free!

---

**CS152 - Logic-Based Agents | Queen Mary University of London**

**Deadline**: Friday, December 12, 2025 by 8:00pm
