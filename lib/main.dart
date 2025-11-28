import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(QuoteApp());
}

class QuoteApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: QuoteScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class QuoteScreen extends StatefulWidget {
  @override
  _QuoteScreenState createState() => _QuoteScreenState();
}

class _QuoteScreenState extends State<QuoteScreen>
    with SingleTickerProviderStateMixin {
  
  final List<Map<String, String>> quotes = [
    {"quote": "Believe in yourself.", "author": "Anonymous"},
{"quote": "Hard work beats talent.", "author": "Tim Notke"},
{"quote": "Every day is a new chance.", "author": "Unknown"},
{"quote": "Success comes to those who persist.", "author": "Unknown"},
{"quote": "Small steps make big changes.", "author": "Unknown"},
{"quote": "The future depends on what you do today.", "author": "Mahatma Gandhi"},
{"quote": "Dream big and dare to fail.", "author": "Norman Vaughan"},
{"quote": "Act as if what you do makes a difference. It does.", "author": "William James"},
{"quote": "It always seems impossible until it is done.", "author": "Nelson Mandela"},
{"quote": "Start where you are. Use what you have. Do what you can.", "author": "Arthur Ashe"},
{"quote": "What you do today can improve all your tomorrows.", "author": "Ralph Marston"},
{"quote": "Do something today that your future self will thank you for.", "author": "Sean Patrick Flanery"},
{"quote": "Quality is not an act, it is a habit.", "author": "Aristotle"},
{"quote": "Well done is better than well said.", "author": "Benjamin Franklin"},
{"quote": "Either you run the day or the day runs you.", "author": "Jim Rohn"},
{"quote": "The key to success is to start before you are ready.", "author": "Marie Forleo"},
{"quote": "In the middle of difficulty lies opportunity.", "author": "Albert Einstein"},
{"quote": "Everything you can imagine is real.", "author": "Pablo Picasso"},
{"quote": "Turn your wounds into wisdom.", "author": "Oprah Winfrey"},
{"quote": "What we think, we become.", "author": "Buddha"},
{"quote": "Don't wait. The time will never be just right.", "author": "Napoleon Hill"},
{"quote": "Aim for the moon. If you miss, you may hit a star.", "author": "W. Clement Stone"},
{"quote": "Stay hungry, stay foolish.", "author": "Steve Jobs"},
{"quote": "Your time is limited, so don't waste it living someone else’s life.", "author": "Steve Jobs"},
{"quote": "Opportunities don't happen. You create them.", "author": "Chris Grosser"},
{"quote": "Success is not final; failure is not fatal: It is the courage to continue that counts.", "author": "Winston Churchill"},
{"quote": "Courage is one step ahead of fear.", "author": "Coleman Young"},
{"quote": "The best way out is always through.", "author": "Robert Frost"},
{"quote": "A year from now you will wish you had started today.", "author": "Karen Lamb"},
{"quote": "Failure is simply the opportunity to begin again.", "author": "Henry Ford"},
{"quote": "Don’t stop when you're tired. Stop when you're done.", "author": "Unknown"},
{"quote": "Doubt kills more dreams than failure ever will.", "author": "Suzy Kassem"},
{"quote": "Discipline is the bridge between goals and accomplishment.", "author": "Jim Rohn"},
{"quote": "Push yourself, because no one else is going to do it for you.", "author": "Unknown"},
{"quote": "Don’t limit your challenges. Challenge your limits.", "author": "Unknown"},
{"quote": "Wake up with determination. Go to bed with satisfaction.", "author": "Unknown"},
{"quote": "Your limitation—it's only your imagination.", "author": "Unknown"},
{"quote": "Sometimes later becomes never. Do it now.", "author": "Unknown"},
{"quote": "Great things never come from comfort zones.", "author": "Unknown"},
{"quote": "Dream it. Wish it. Do it.", "author": "Unknown"},
{"quote": "Success doesn’t just find you. You have to go out and get it.", "author": "Unknown"},
{"quote": "The harder you work for something, the greater you’ll feel when you achieve it.", "author": "Unknown"},
{"quote": "Don’t wait for opportunity. Create it.", "author": "Unknown"},
{"quote": "Little things make big days.", "author": "Unknown"},
{"quote": "It’s going to be hard, but hard does not mean impossible.", "author": "Unknown"},
{"quote": "Don't wish for it. Work for it.", "author": "Unknown"},
{"quote": "Sometimes we’re tested not to show our weaknesses, but to discover our strengths.", "author": "Unknown"},
{"quote": "The key to success is to focus on goals, not obstacles.", "author": "Unknown"},
{"quote": "Dream bigger. Do bigger.", "author": "Unknown"},
{"quote": "Don’t give up. Great things take time.", "author": "Unknown"},
{"quote": "Success is the sum of small efforts repeated day in and day out.", "author": "Robert Collier"},
{"quote": "Work hard in silence; let success make the noise.", "author": "Unknown"},
{"quote": "When you feel like quitting, think about why you started.", "author": "Unknown"},
{"quote": "Success is what comes after you stop making excuses.", "author": "Luis Galarza"},
{"quote": "The only way to do great work is to love what you do.", "author": "Steve Jobs"},
{"quote": "The secret of getting ahead is getting started.", "author": "Mark Twain"},
{"quote": "If you can dream it, you can do it.", "author": "Walt Disney"},
{"quote": "Everything has beauty, but not everyone sees it.", "author": "Confucius"},
{"quote": "We become what we think about.", "author": "Earl Nightingale"},
{"quote": "An unexamined life is not worth living.", "author": "Socrates"},
{"quote": "Life is really simple, but we insist on making it complicated.", "author": "Confucius"},
{"quote": "The journey of a thousand miles begins with one step.", "author": "Lao Tzu"},
{"quote": "To be the best, you must be able to handle the worst.", "author": "Wilson Kanadi"},
{"quote": "Act or accept.", "author": "Anonymous"},
{"quote": "To improve is to change; to be perfect is to change often.", "author": "Winston Churchill"},
{"quote": "What consumes your mind controls your life.", "author": "Unknown"},
{"quote": "Don’t fear failure. Fear being in the exact same place next year.", "author": "Unknown"},
{"quote": "Be stronger than your excuses.", "author": "Unknown"},
{"quote": "If you want it, work for it.", "author": "Unknown"},
{"quote": "Success starts with self-discipline.", "author": "Unknown"},
{"quote": "Great things take time.", "author": "Unknown"},
{"quote": "Doubt is a killer of dreams.", "author": "Unknown"},
{"quote": "Stay focused and never give up.", "author": "Unknown"},
{"quote": "Live as if you were to die tomorrow. Learn as if you were to live forever.", "author": "Mahatma Gandhi"},
{"quote": "Do not let making a living prevent you from making a life.", "author": "John Wooden"},
{"quote": "Life is 10% what happens to you and 90% how you react to it.", "author": "Charles Swindoll"},
{"quote": "The only impossible journey is the one you never begin.", "author": "Tony Robbins"},
{"quote": "In three words I can sum up everything I’ve learned about life: it goes on.", "author": "Robert Frost"},
{"quote": "Do what you can, with what you have, where you are.", "author": "Theodore Roosevelt"},
{"quote": "Happiness depends upon ourselves.", "author": "Aristotle"},
{"quote": "The purpose of our lives is to be happy.", "author": "Dalai Lama"},
{"quote": "Life is short, and it's up to you to make it sweet.", "author": "Sarah Louise Delany"},
{"quote": "Keep your face always toward the sunshine—and shadows will fall behind you.", "author": "Walt Whitman"},
{"quote": "Make each day your masterpiece.", "author": "John Wooden"},
{"quote": "To live is the rarest thing in the world. Most people exist, that is all.", "author": "Oscar Wilde"},
{"quote": "Be yourself; everyone else is already taken.", "author": "Oscar Wilde"},
{"quote": "Life is either a daring adventure or nothing at all.", "author": "Helen Keller"},
{"quote": "The best way to predict your future is to create it.", "author": "Peter Drucker"},
{"quote": "Whatever you are, be a good one.", "author": "Abraham Lincoln"},
{"quote": "Nothing will work unless you do.", "author": "Maya Angelou"},
{"quote": "Everything you’ve ever wanted is on the other side of fear.", "author": "George Addair"},
{"quote": "The only limit to our realization of tomorrow is our doubts of today.", "author": "Franklin D. Roosevelt"},
{"quote": "Do not wait to strike till the iron is hot; but make it hot by striking.", "author": "William Butler Yeats"},
{"quote": "Great minds think alike.", "author": "Anonymous"},
{"quote": "Success usually comes to those who are too busy to be looking for it.", "author": "Henry David Thoreau"},
{"quote": "Don’t be pushed by your problems. Be led by your dreams.", "author": "Ralph Waldo Emerson"},
{"quote": "Winning isn’t everything, but wanting to win is.", "author": "Vince Lombardi"},
{"quote": "Either write something worth reading or do something worth writing.", "author": "Benjamin Franklin"},
{"quote": "If you want to lift yourself up, lift up someone else.", "author": "Booker T. Washington"},
{"quote": "A goal is a dream with a deadline.", "author": "Napoleon Hill"},
{"quote": "The successful warrior is the average man, with laser-like focus.", "author": "Bruce Lee"},
{"quote": "If you want to succeed, focus on changing yourself, not others.", "author": "Anonymous"},
{"quote": "Failure defeats losers, failure inspires winners.", "author": "Robert T. Kiyosaki"},
{"quote": "You must expect great things of yourself before you can do them.", "author": "Michael Jordan"},
{"quote": "The man who has confidence in himself gains the confidence of others.", "author": "Hasidic Proverb"},
{"quote": "Do not wish for an easy life, wish for the strength to endure a difficult one.", "author": "Bruce Lee"},
{"quote": "You miss 100% of the shots you don’t take.", "author": "Wayne Gretzky"},
{"quote": "Believe you can and you're halfway there.", "author": "Theodore Roosevelt"},
{"quote": "Success is not in what you have, but who you are.", "author": "Bo Bennett"},
{"quote": "If you’re going through hell, keep going.", "author": "Winston Churchill"},
{"quote": "It does not matter how slowly you go, as long as you do not stop.", "author": "Confucius"},
{"quote": "Don’t count the days, make the days count.", "author": "Muhammad Ali"},
{"quote": "Nothing is impossible. The word itself says ‘I’m possible!’", "author": "Audrey Hepburn"},
{"quote": "Perseverance is failing 19 times and succeeding the 20th.", "author": "Julie Andrews"},
{"quote": "If opportunity doesn’t knock, build a door.", "author": "Milton Berle"},
{"quote": "Everything you do is a choice.", "author": "Mel Robbins"},
{"quote": "What lies behind us and what lies before us are tiny matters compared to what lies within us.", "author": "Ralph Waldo Emerson"},
{"quote": "Don’t be afraid to give up the good to go for the great.", "author": "John D. Rockefeller"},
{"quote": "Our greatest glory is not in never falling, but in rising every time we fall.", "author": "Confucius"},
{"quote": "A person who never made a mistake never tried anything new.", "author": "Albert Einstein"},
{"quote": "What you get by achieving your goals is not as important as what you become by achieving your goals.", "author": "Zig Ziglar"},
{"quote": "Success is getting what you want. Happiness is wanting what you get.", "author": "W. P. Kinsella"},
{"quote": "Don’t let yesterday take up too much of today.", "author": "Will Rogers"},
{"quote": "You are enough just as you are.", "author": "Meghan Markle"},
{"quote": "Be kind whenever possible. It is always possible.", "author": "Dalai Lama"},
{"quote": "Happiness is not by chance, but by choice.", "author": "Jim Rohn"},
{"quote": "Everything is figureoutable.", "author": "Marie Forleo"},
{"quote": "The best revenge is massive success.", "author": "Frank Sinatra"},
{"quote": "Action is the foundational key to all success.", "author": "Pablo Picasso"},
{"quote": "Skill is only developed by hours and hours of work.", "author": "Usain Bolt"},
{"quote": "The way to get started is to quit talking and begin doing.", "author": "Walt Disney"},
{"quote": "The best dreams happen when you’re awake.", "author": "Cherie Gilderbloom"},
{"quote": "Opportunities multiply as they are seized.", "author": "Sun Tzu"},
{"quote": "Where there is no vision, there is no hope.", "author": "George Washington Carver"},
{"quote": "Your life does not get better by chance, it gets better by change.", "author": "Jim Rohn"},
{"quote": "Success is never accidental.", "author": "Jack Dorsey"},
{"quote": "Failure is success in progress.", "author": "Albert Einstein"},
{"quote": "All our dreams can come true if we have the courage to pursue them.", "author": "Walt Disney"},
{"quote": "Done is better than perfect.", "author": "Sheryl Sandberg"},
{"quote": "If you can't stop thinking about it, don't stop working for it.", "author": "Unknown"},
{"quote": "Don't be afraid to start over. It's a chance to build something better.", "author": "Unknown"},
{"quote": "If you believe in yourself, anything is possible.", "author": "Unknown"},
{"quote": "Keep going. Everything you need will come at the perfect time.", "author": "Unknown"},
{"quote": "Success is built on persistence, not luck.", "author": "Unknown"},
{"quote": "If you want different results, make different choices.", "author": "Unknown"},
{"quote": "Your mindset determines your future.", "author": "Unknown"},
{"quote": "A comfort zone is a beautiful place, but nothing grows there.", "author": "Unknown"},
{"quote": "You are what you do, not what you say you'll do.", "author": "Carl Jung"},
{"quote": "Success is doing ordinary things extraordinarily well.", "author": "Jim Rohn"},
{"quote": "The pain you feel today will be the strength you feel tomorrow.", "author": "Unknown"},
{"quote": "Be so good they can’t ignore you.", "author": "Steve Martin"},
{"quote": "Consistency is more important than perfection.", "author": "Unknown"},
{"quote": "Small progress is still progress.", "author": "Unknown"},
{"quote": "Your only limit is you.", "author": "Unknown"},
{"quote": "Don’t let your fear decide your future.", "author": "Shalane Flanagan"},
{"quote": "Success requires replacement of bad habits with good habits.", "author": "Unknown"},
{"quote": "Fall seven times, stand up eight.", "author": "Japanese Proverb"},
{"quote": "Everything begins with a decision.", "author": "Unknown"},
{"quote": "Hustle until your haters ask if you’re hiring.", "author": "Unknown"},
{"quote": "The best preparation for tomorrow is doing your best today.", "author": "H. Jackson Brown Jr."},
{"quote": "Don't be busy. Be productive.", "author": "Unknown"},
{"quote": "If you want to be strong, learn how to fight alone.", "author": "Unknown"},
{"quote": "Silent moves. Loud results.", "author": "Unknown"},
{"quote": "A negative mind will never give you a positive life.", "author": "Unknown"},
{"quote": "Work until your idols become your rivals.", "author": "Drake"},
{"quote": "Be patient. Good things take time.", "author": "Unknown"},
{"quote": "You deserve the love you keep giving to everyone else.", "author": "Unknown"},
{"quote": "Success is a decision, not a gift.", "author": "Unknown"},
{"quote": "Your future is created by what you do today.", "author": "Robert Kiyosaki"},
{"quote": "The secret to getting ahead is getting started.", "author": "Mark Twain"},
{"quote": "Even the greatest were beginners.", "author": "Unknown"},
{"quote": "Growth is painful. Change is painful. But nothing is as painful as staying stuck.", "author": "N. R. Narayana Murthy"},
{"quote": "If you want to fly, give up everything that weighs you down.", "author": "Buddha"},
{"quote": "Don't stop until you're proud.", "author": "Unknown"},
{"quote": "Work hard. Stay humble.", "author": "Unknown"},
{"quote": "Nothing changes if nothing changes.", "author": "Unknown"},
{"quote": "You were born to be real, not to be perfect.", "author": "Unknown"},
{"quote": "Where focus goes, energy flows.", "author": "Tony Robbins"},
{"quote": "The expert in anything was once a beginner.", "author": "Helen Hayes"},
{"quote": "Don’t let small minds convince you that your dreams are too big.", "author": "Unknown"},
{"quote": "Difficult roads often lead to beautiful destinations.", "author": "Zig Ziglar"},
{"quote": "You did not come this far to only come this far.", "author": "Unknown"},
{"quote": "If you don’t build your dream, someone will hire you to help build theirs.", "author": "Tony Gaskins"},
{"quote": "Make yourself a priority.", "author": "Unknown"},
{"quote": "Don’t adapt to the energy in the room. Influence it.", "author": "Unknown"},
{"quote": "Life is tough, but so are you.", "author": "Unknown"},
{"quote": "Every accomplishment starts with the decision to try.", "author": "John F. Kennedy"},
{"quote": "Today is your opportunity to build the tomorrow you want.", "author": "Ken Poirot"},
{"quote": "Do the hard things.", "author": "Unknown"},
{"quote": "If you’re not willing to learn, no one can help you.", "author": "Zig Ziglar"},
{"quote": "If you're not willing to work, no one can help you either.", "author": "Zig Ziglar"},
{"quote": "You only fail when you stop trying.", "author": "Unknown"},
{"quote": "Work on you, for you.", "author": "Unknown"},
{"quote": "Success is not for the lazy.", "author": "Unknown"},
{"quote": "Comfort is the enemy of progress.", "author": "P. T. Barnum"},
{"quote": "You become unstoppable when you work on things people can't take away.", "author": "Unknown"},
{"quote": "Never apologize for being disciplined.", "author": "Unknown"},
{"quote": "Be the energy you want to attract.", "author": "Unknown"},
{"quote": "Stop doubting yourself. Work hard and make it happen.", "author": "Unknown"},
{"quote": "Suffer the pain of discipline or suffer the pain of regret.", "author": "Jim Rohn"},
{"quote": "A winner is a dreamer who never gives up.", "author": "Nelson Mandela"},
{"quote": "Success is a series of small wins.", "author": "Unknown"},
{"quote": "Strength grows in the moments when you think you can't go on but you keep going anyway.", "author": "Unknown"},
{"quote": "Great things never came from comfort zones.", "author": "Anonymous"},
    // Add more quotes
  ];

  String currentQuote = "";
  String currentAuthor = "";

  @override
  void initState() {
    super.initState();
    loadRandomQuote();
  }

  void loadRandomQuote() {
    final random = Random();
    var selected = quotes[random.nextInt(quotes.length)];
    setState(() {
      currentQuote = selected["quote"]!;
      currentAuthor = selected["author"]!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,

        // NEW DARKER BACKGROUND
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF0F0F0F),
              Color(0xFF1A1A1A),
              Color(0xFF2C2C2C),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),

        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AnimatedSwitcher(
                  duration: Duration(milliseconds: 400),
                  transitionBuilder: (widget, animation) =>
                      FadeTransition(opacity: animation, child: widget),
                  child: Container(
                    key: ValueKey(currentQuote),
                    padding: const EdgeInsets.all(25),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.white24, width: 1),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.4),
                          blurRadius: 15,
                          offset: Offset(0, 6),
                        )
                      ],
                    ),
                    child: Column(
                      children: [
                        Text(
                          currentQuote,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.w600,
                            height: 1.4,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 20),
                        Text(
                          "- $currentAuthor",
                          style: const TextStyle(
                            fontSize: 20,
                            fontStyle: FontStyle.italic,
                            color: Colors.white70,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                const SizedBox(height: 50),

                ElevatedButton(
                  onPressed: loadRandomQuote,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white.withOpacity(0.9),
                    foregroundColor: Colors.black87,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 40, vertical: 14),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    elevation: 8,
                  ),
                  child: const Text(
                    "New Quote",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
