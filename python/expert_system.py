from pyswip import Prolog
import os

# Initialize Prolog engine and load knowledge bases
prolog = Prolog()

# Load all Prolog files
prolog_dir = os.path.join(os.path.dirname(__file__), '..', 'prolog')
kb_files = ['logic.pl', 'city_london.pl', 'city_ba.pl', 'city_tokyo.pl']

for kb_file in kb_files:
    kb_path = os.path.join(prolog_dir, kb_file)
    prolog.consult(kb_path)

def ask_question(question, options):
    """
    Display question with options and collect user's selection.
    
    Args:
        question: Question text to display
        options: List of possible answer options
        
    Returns:
        Selected option from the options list
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
    
    Args:
        None
        
    Returns:
        None
    """
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
        
        # Price needs quotes in Prolog due to hyphen character
        if attribute == 'price':
            prolog.assertz(f"known({attribute}, '{answer}', yes)")
        else:
            prolog.assertz(f"known({attribute}, {answer}, yes)")

    # Query Prolog for final recommendation
    recommendations = list(prolog.query("recommend(Name)"))
    
    if recommendations:
        recommendation = recommendations[0]
        name = recommendation['Name']
        
        # Retrieve user choices for display 
        activity_data = list(prolog.query("known(activity, Activity, yes)"))
        location_data = list(prolog.query("known(location, Location, yes)"))
        
        if activity_data and location_data:
            activity = activity_data[0]['Activity']
            location = location_data[0]['Location']
            
            print(f"\n{activity.capitalize()}: {name}")
            print(f"  Location: {location.capitalize()}")
            
            # Query Prolog for relevant details based on activity type
            details = list(prolog.query("get_detail(_, Label, Value)"))
            
            for detail in details:
                label = detail['Label']
                value = str(detail['Value'])
                formatted_value = value.replace('_', ' ').title()
                
                if label == 'Price Range':
                    formatted_value = f"£{value}"
                
                print(f"  {label}: {formatted_value}")
            
            print("\nFill this into Google Maps and enjoy London!")
    else:
        print("\nSorry, no recommendations found matching your criteria. Try different options or a different location.")

expert_system()
