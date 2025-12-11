# Student Expert System - CS152 LBA

An expert system to help international students find restaurants, cafes, sightseeing spots, and nightlife in **London**, **Buenos Aires**, and **Tokyo**.

## 🎯 Project Overview

This expert system uses **Prolog** for the knowledge base and **Python** (PySWIP) for the user interface. It asks students about their preferences and recommends the best places to visit.

### Askables (9 total)
1. **City** - london, ba, tokyo
2. **Distance** - walkable, short_transit, far
3. **Cuisine** - argentinian, asian, italian, other
4. **Budget** - low, medium, high
5. **Diet** - none, vegetarian, vegan, halal, glutenfree
6. **Time of Day** - breakfast, lunch, dinner, late_night
7. **Vibe** - quiet, social, fancy, casual
8. **Group Size** - solo, couple, group
9. **Alcohol** - yes, no

## 📁 Project Structure

```
CS152 LBA/
├── python/
│   └── expert_system.py      # Main Python interface
├── prolog/
│   ├── logic.pl              # Shared reasoning rules
│   ├── city_london.pl        # London facts (95+ items)
│   ├── city_ba.pl            # Buenos Aires facts (38+ items)
│   └── city_tokyo.pl         # Tokyo facts (TODO)
├── .gitignore
└── README.md
```

## 🚀 How to Run

### Prerequisites
```bash
pip install pyswip
```

### Run the Expert System
```bash
cd python
python expert_system.py
```

## 📊 Knowledge Base Status

| City | Restaurants | Snacks | Sightseeing | Nightlife | Total |
|------|-------------|--------|-------------|-----------|-------|
| **London** | 60 | 8 | 17 | 10 | **95** |
| **Buenos Aires** | 6 | 9 | 17 | 6 | **38** |
| **Tokyo** | 0 | 0 | 0 | 0 | **0** |

## 👥 Team Collaboration

### Adding Facts to a City

1. **Pull latest changes**: `git pull`
2. **Edit the city file**: `prolog/city_london.pl`, `prolog/city_ba.pl`, or `prolog/city_tokyo.pl`
3. **Follow the format**:
   ```prolog
   restaurant_london('Name',
       walkable,              % distance
       asian,                 % cuisine
       medium,                % budget
       [none, vegetarian],    % diets
       [lunch, dinner],       % times
       casual,                % vibe
       [solo, couple, group], % group sizes
       yes).                  % alcohol
   ```
4. **Test locally**: Run `python python/expert_system.py`
5. **Commit**: `git add . && git commit -m "Added restaurants for XYZ"`
6. **Push**: `git push`

### Editing Logic

The shared reasoning rules are in `prolog/logic.pl`. Only edit if changing the question flow or recommendation logic.

## 📝 Assignment Requirements

- [x] 8+ askables (we have 9)
- [x] Multiple cities supported
- [ ] Logic visualization
- [ ] Test cases
- [ ] Real-world visit report
- [ ] 5-page documentation

## 🔧 Tech Stack

- **Prolog**: SWI-Prolog for knowledge base
- **Python**: PySWIP for interface
- **Git**: Version control for team collaboration

## 📖 Documentation

Each city file has detailed comments explaining:
- Parameter meanings
- Distance categories (from residence halls)
- Budget ranges
- Available options for each askable

---

**CS152 - Logic-Based Agents | Queen Mary University of London**

---

**Deadline**: Friday, December 12, 2025 by 8:00pm
