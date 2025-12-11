import tkinter as tk
from tkinter import ttk, scrolledtext
from pyswip import Prolog
import threading

class BAExpertSystemGUI:
    def __init__(self, root):
        self.root = root
        self.root.title("Buenos Aires Expert System")
        self.root.geometry("800x700")
        self.root.configure(bg='#e8f4f8')
        
        # Initialize Prolog engine
        self.prolog = Prolog()
        self.prolog.consult("kb_ba.pl")
        
        # Store user's answers for back button functionality
        self.answer_history = []
        self.conversation_history = []
        
        # Main container with gradient-like background
        self.main_frame = tk.Frame(root, bg='#e8f4f8')
        self.main_frame.pack(fill=tk.BOTH, expand=True)
        
        # Header
        header_frame = tk.Frame(self.main_frame, bg='#0078d4', height=80)
        header_frame.pack(fill=tk.X)
        header_frame.pack_propagate(False)
        
        title_label = tk.Label(
            header_frame,
            text="🌎 Buenos Aires Expert System",
            font=("Segoe UI", 22, "bold"),
            bg='#0078d4',
            fg='white'
        )
        title_label.pack(expand=True)
        
        subtitle_label = tk.Label(
            header_frame,
            text="Your personal guide to Buenos Aires",
            font=("Segoe UI", 10),
            bg='#0078d4',
            fg='#e0e0e0'
        )
        subtitle_label.pack()
        
        # Chat container with canvas for scrolling
        chat_container = tk.Frame(self.main_frame, bg='#e8f4f8')
        chat_container.pack(fill=tk.BOTH, expand=True, padx=20, pady=20)
        
        # Create canvas and scrollbar for chat
        self.chat_canvas = tk.Canvas(chat_container, bg='#e8f4f8', highlightthickness=0)
        chat_scrollbar = ttk.Scrollbar(chat_container, orient="vertical", command=self.chat_canvas.yview)
        
        self.chat_frame = tk.Frame(self.chat_canvas, bg='#e8f4f8')
        self.chat_frame.bind(
            "<Configure>",
            lambda e: self.chat_canvas.configure(scrollregion=self.chat_canvas.bbox("all"))
        )
        
        self.chat_canvas.create_window((0, 0), window=self.chat_frame, anchor="nw", width=750)
        self.chat_canvas.configure(yscrollcommand=chat_scrollbar.set)
        
        self.chat_canvas.pack(side=tk.LEFT, fill=tk.BOTH, expand=True)
        chat_scrollbar.pack(side=tk.RIGHT, fill=tk.Y)
        
        # Options frame at bottom
        self.options_container = tk.Frame(self.main_frame, bg='#e8f4f8')
        self.options_container.pack(fill=tk.X, padx=20, pady=(0, 20))
        
        # Back button
        self.back_button = tk.Button(
            self.main_frame,
            text="← Back",
            font=("Segoe UI", 10),
            bg='#6c757d',
            fg='white',
            relief=tk.FLAT,
            padx=20,
            pady=8,
            command=self.go_back,
            state=tk.DISABLED,
            cursor="hand2",
            borderwidth=0
        )
        self.back_button.pack(pady=(0, 10))
        
        # Start with welcome message
        self.add_bot_message("👋 Welcome! I'll help you discover the best places in Buenos Aires.\nLet's get started!")
        
        # Start the expert system
        self.start_system()
    
    def add_bot_message(self, message):
        """Add a bot message to the chat"""
        message_frame = tk.Frame(self.chat_frame, bg='#e8f4f8')
        message_frame.pack(fill=tk.X, pady=5, anchor='w')
        
        # Bot bubble
        bubble = tk.Frame(message_frame, bg='#ffffff', relief=tk.FLAT, borderwidth=1)
        bubble.pack(anchor='w', padx=(10, 200))
        
        # Bot icon
        icon_label = tk.Label(
            bubble,
            text="🤖",
            font=("Segoe UI", 14),
            bg='#ffffff',
            fg='#0078d4'
        )
        icon_label.pack(side=tk.LEFT, padx=(10, 5), pady=8)
        
        # Message text
        msg_label = tk.Label(
            bubble,
            text=message,
            font=("Segoe UI", 11),
            bg='#ffffff',
            fg='#2c3e50',
            wraplength=450,
            justify=tk.LEFT,
            padx=10,
            pady=8
        )
        msg_label.pack(side=tk.LEFT, padx=(5, 10))
        
        # Auto-scroll to bottom
        self.chat_canvas.update_idletasks()
        self.chat_canvas.yview_moveto(1.0)
    
    def add_user_message(self, message):
        """Add a user message to the chat"""
        message_frame = tk.Frame(self.chat_frame, bg='#e8f4f8')
        message_frame.pack(fill=tk.X, pady=5, anchor='e')
        
        # User bubble
        bubble = tk.Frame(message_frame, bg='#d4f4dd', relief=tk.FLAT)
        bubble.pack(anchor='e', padx=(200, 10))
        
        # Message text
        msg_label = tk.Label(
            bubble,
            text=message,
            font=("Segoe UI", 11),
            bg='#d4f4dd',
            fg='#2c3e50',
            wraplength=450,
            justify=tk.RIGHT,
            padx=15,
            pady=10
        )
        msg_label.pack()
        
        # Auto-scroll to bottom
        self.chat_canvas.update_idletasks()
        self.chat_canvas.yview_moveto(1.0)
    
    def start_system(self):
        """Initialize the expert system"""
        # Clear previous knowledge
        list(self.prolog.query("clear_known"))
        self.answer_history = []
        self.back_button.config(state=tk.DISABLED)
        
        # Show first question
        self.show_next_question()
    
    def show_next_question(self):
        """Query Prolog for the next question and display it"""
        # Clear previous options
        for widget in self.options_container.winfo_children():
            widget.destroy()
        
        # Get next question from Prolog
        questions = list(self.prolog.query("next_question(Attribute, Question, Options)"))
        
        if not questions:
            # No more questions - show recommendations
            self.show_recommendations()
            return
        
        question_data = questions[0]
        self.current_attribute = question_data['Attribute']
        question_text = question_data['Question']
        options = question_data['Options']
        
        # Add bot question to chat
        self.add_bot_message(question_text)
        
        # Enable back button if we have history
        if self.answer_history:
            self.back_button.config(state=tk.NORMAL, bg='#0078d4')
        
        # Create option buttons
        options_frame = tk.Frame(self.options_container, bg='#e8f4f8')
        options_frame.pack(fill=tk.X)
        
        # Arrange buttons in grid
        max_cols = 3 if len(options) > 6 else 2 if len(options) > 3 else 1
        
        for i, option in enumerate(options):
            row = i // max_cols
            col = i % max_cols
            
            formatted_option = str(option).replace('_', ' ').title()
            
            btn = tk.Button(
                options_frame,
                text=formatted_option,
                font=("Segoe UI", 11),
                bg='white',
                fg='#0078d4',
                relief=tk.FLAT,
                padx=20,
                pady=12,
                command=lambda opt=option, txt=formatted_option: self.select_option(opt, txt),
                cursor="hand2",
                borderwidth=1,
                highlightbackground='#0078d4',
                highlightthickness=1,
                activebackground='#0078d4',
                activeforeground='white'
            )
            btn.grid(row=row, column=col, padx=8, pady=8, sticky="ew")
            
            # Hover effects
            btn.bind("<Enter>", lambda e, b=btn: b.config(bg='#0078d4', fg='white'))
            btn.bind("<Leave>", lambda e, b=btn: b.config(bg='white', fg='#0078d4'))
        
        # Configure grid weights
        for col in range(max_cols):
            options_frame.columnconfigure(col, weight=1)
    
    def select_option(self, option, formatted_text):
        """Handle option selection"""
        # Add user's choice to chat
        self.add_user_message(formatted_text)
        
        # Store answer in history
        self.answer_history.append((self.current_attribute, option))
        
        # Assert knowledge in Prolog
        self.prolog.assertz(f"known({self.current_attribute}, {option}, yes)")
        
        # Clear options
        for widget in self.options_container.winfo_children():
            widget.destroy()
        
        # Show next question
        self.show_next_question()
    
    def go_back(self):
        """Go back to previous question"""
        if not self.answer_history:
            return
        
        # Remove last answer
        last_attribute, last_option = self.answer_history.pop()
        
        # Retract from Prolog
        list(self.prolog.query(f"retract(known({last_attribute}, {last_option}, yes))"))
        
        # Remove last 2 messages from chat (bot question + user answer)
        children = self.chat_frame.winfo_children()
        if len(children) >= 2:
            children[-1].destroy()  # User answer
            children[-2].destroy()  # Bot question
        
        # Show previous question again
        self.show_next_question()
    
    def show_recommendations(self):
        """Query and display all recommendations"""
        # Clear options
        for widget in self.options_container.winfo_children():
            widget.destroy()
        
        # Hide back button
        self.back_button.config(state=tk.DISABLED)
        
        # Query for recommendations
        recommendations = list(self.prolog.query("recommend(Name)"))
        
        if recommendations:
            count = len(recommendations)
            if count == 1:
                self.add_bot_message(f"✨ Perfect! I found 1 recommendation for you:")
            else:
                self.add_bot_message(f"✨ Great! I found {count} recommendations for you:")
            
            # Display each recommendation in chat
            for i, rec in enumerate(recommendations, 1):
                name = rec['Name']
                
                # Build recommendation details
                details = [f"📍 {name}"]
                
                # Get location
                location_data = list(self.prolog.query("known(location, Location, yes)"))
                if location_data:
                    location = str(location_data[0]['Location']).replace('_', ' ').title()
                    details.append(f"  Area: {location}")
                
                # Get other details
                detail_list = list(self.prolog.query("get_detail(_, Label, Value)"))
                for detail in detail_list:
                    label = detail['Label']
                    value = str(detail['Value']).replace('_', ' ').title()
                    details.append(f"  {label}: {value}")
                
                # Add recommendation as bot message
                rec_text = "\n".join(details)
                self.add_bot_message(rec_text)
            
            self.add_bot_message("🎯 Pick your favorite and open it in Google Maps.\nEnjoy Buenos Aires! 🇦🇷")
        else:
            self.add_bot_message("😕 Sorry, I couldn't find any recommendations matching your criteria.\nWould you like to try again with different options?")
        
        # Add control buttons
        button_frame = tk.Frame(self.options_container, bg='#e8f4f8')
        button_frame.pack(pady=20)
        
        start_over_btn = tk.Button(
            button_frame,
            text="🔄 Start Over",
            font=("Segoe UI", 12, "bold"),
            bg='#28a745',
            fg='white',
            relief=tk.FLAT,
            padx=30,
            pady=12,
            command=self.restart_system,
            cursor="hand2",
            borderwidth=0
        )
        start_over_btn.pack(side=tk.LEFT, padx=10)
        
        # Hover effect
        start_over_btn.bind("<Enter>", lambda e: start_over_btn.config(bg='#218838'))
        start_over_btn.bind("<Leave>", lambda e: start_over_btn.config(bg='#28a745'))
        
        exit_btn = tk.Button(
            button_frame,
            text="❌ Exit",
            font=("Segoe UI", 12, "bold"),
            bg='#dc3545',
            fg='white',
            relief=tk.FLAT,
            padx=30,
            pady=12,
            command=self.root.quit,
            cursor="hand2",
            borderwidth=0
        )
        exit_btn.pack(side=tk.LEFT, padx=10)
        
        # Hover effect
        exit_btn.bind("<Enter>", lambda e: exit_btn.config(bg='#c82333'))
        exit_btn.bind("<Leave>", lambda e: exit_btn.config(bg='#dc3545'))
    
    def restart_system(self):
        """Clear chat and restart"""
        # Clear chat
        for widget in self.chat_frame.winfo_children():
            widget.destroy()
        
        # Clear options
        for widget in self.options_container.winfo_children():
            widget.destroy()
        
        # Add welcome message
        self.add_bot_message("👋 Welcome back! Let's find another great place in Buenos Aires!")
        
        # Restart
        self.start_system()

def main():
    root = tk.Tk()
    app = BAExpertSystemGUI(root)
    root.mainloop()

if __name__ == "__main__":
    main()
