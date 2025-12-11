from pyswip import Prolog

# Initialize Prolog engine and load knowledge base
prolog = Prolog()
prolog.consult("kb_ba.pl")

def ask_question(question, options):
    """
    Display question with options and collect user's selection.
    """
    print(f"\n{question}")
    
    # Format options for display (e.g., new_modern_bar -> New Modern Bar)
    for i, option in enumerate(options, 1):
        formatted_option = str(option).replace('_', ' ').title()
        print(f"{i}. {formatted_option}")
    
    while True:
        try:
            choice = int(input("Enter the option you prefer: "))
            if 1 <= choice <= len(options):
                return options[choice - 1]
            else:
                print(f"Please enter a number between 1 and {len(options)} corresponding to the option you prefer")
        except ValueError:
            print("Please enter a valid number corresponding to the option you prefer")

def expert_system():
    """
    Main expert system loop that gathers preferences and provides recommendations.
    """
    # Clear any previous answers
    list(prolog.query("clear_known"))
    
    # Question loop
    while True:
        questions = list(prolog.query("next_question(Attribute, Question, Options)"))
        
        # No more questions means Prolog has enough info to make recommendation
        if not questions:
            break
        
        question_data = questions[0]
        attribute = question_data['Attribute']
        question = question_data['Question']
        options = question_data['Options']
        
        answer = ask_question(question, options)
        
        # All our BA values are simple atoms (no hyphens needed), so we can assert directly
        prolog.assertz(f"known({attribute}, {answer}, yes)")

    # Query Prolog for ALL matching recommendations
    recommendations = list(prolog.query("recommend(Name)"))
    
    if recommendations:
        # Retrieve user choices for display 
        activity_data = list(prolog.query("known(activity, Activity, yes)"))
        location_data = list(prolog.query("known(location, Location, yes)"))
        
        if activity_data and location_data:
            activity = activity_data[0]['Activity']
            location = location_data[0]['Location']
            
            # Show count of recommendations
            count = len(recommendations)
            if count == 1:
                print(f"\n✨ Found 1 recommendation for you:")
            else:
                print(f"\n✨ Found {count} recommendations for you:")
            
            # Display all recommendations
            for i, rec in enumerate(recommendations, 1):
                name = rec['Name']
                
                if count > 1:
                    print(f"\n{i}. {name}")
                else:
                    print(f"\n{name}")
                
                print(f"   Area: {str(location).replace('_', ' ').title()}")
                
                # Query Prolog for relevant details based on activity type
                details = list(prolog.query("get_detail(_, Label, Value)"))
                
                for detail in details:
                    label = detail['Label']
                    value = str(detail['Value'])
                    formatted_value = value.replace('_', ' ').title()
                    
                    print(f"   {label}: {formatted_value}")
            
            print("\n🎯 Pick your favorite and put it into Google Maps - enjoy Buenos Aires!")
    else:
        print("\nSorry, no recommendations found matching your criteria. Try different options or a different area.")

expert_system()
