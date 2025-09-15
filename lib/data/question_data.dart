import '../models/question.dart';

final List<Question> questionPool = [
  Question(
    question: "What is e-waste?",
    options: [
      "Plastic bottles and wrappers",
      "Old or discarded electronic devices",
      "Leftover food waste",
      "Paper and cardboard",
    ],
    correctIndex: 1,
    explanation:
        "E-waste refers only to electronic devices, not food or plastic waste.",
  ),
  Question(
    question: "Which of these is NOT e-waste?",
    options: ["Mobile phone", "Refrigerator", "Banana peel", "Laptop"],
    correctIndex: 2,
    explanation: "Only organic waste like banana peels is not e-waste.",
  ),
  Question(
    question: "Why is proper e-waste disposal important?",
    options: [
      "To save storage space at home",
      "Because electronics contain toxins and valuable metals",
      "To make gadgets last longer",
      "Because it’s illegal to throw away any trash",
    ],
    correctIndex: 1,
    explanation:
        "E-waste disposal matters because of toxic chemicals and recyclable precious metals.",
  ),
  Question(
    question: "Which of these materials can be recovered from e-waste?",
    options: ["Gold", "Sand", "Wood", "Oil"],
    correctIndex: 0,
    explanation:
        "E-waste contains valuable metals like gold, copper, and silver.",
  ),
  Question(
    question: "What is the safest way to deal with an old working phone?",
    options: [
      "Throw it in the trash",
      "Donate or resell it",
      "Burn it to save space",
      "Keep it buried in a drawer forever",
    ],
    correctIndex: 1,
    explanation:
        "Reuse is best—donate or sell working devices before recycling.",
  ),
  Question(
    question: "Which harmful substance is commonly found in e-waste?",
    options: ["Mercury", "Salt", "Vinegar", "Sugar"],
    correctIndex: 0,
    explanation:
        "Electronics often contain mercury, lead, and cadmium, which are toxic.",
  ),
  Question(
    question: "What does the “3R” approach mean?",
    options: [
      "Remove, Replace, Refuse",
      "Reduce, Reuse, Recycle",
      "Repair, Restore, Resell",
      "Return, Refuse, Report",
    ],
    correctIndex: 1,
    explanation:
        "The 3Rs are Reduce, Reuse, Recycle—core steps in managing waste.",
  ),
  Question(
    question: "Which of these is the best way to recycle e-waste?",
    options: [
      "Take it to a certified recycling center",
      "Throw it in regular trash",
      "Leave it on the street",
      "Break it into pieces yourself",
    ],
    correctIndex: 0,
    explanation:
        "Certified centers handle e-waste safely and extract useful materials.",
  ),
  Question(
    question: "What happens if e-waste is dumped in landfills?",
    options: [
      "It makes soil healthier",
      "Toxins can leak into soil and water",
      "It disappears quickly",
      "It becomes fertilizer",
    ],
    correctIndex: 1,
    explanation: "Toxic chemicals in e-waste contaminate soil and water.",
  ),
  Question(
    question: "What can households do to reduce e-waste?",
    options: [
      "Buy fewer, longer-lasting gadgets",
      "Replace gadgets often",
      "Ignore recycling programs",
      "Hoard unused devices",
    ],
    correctIndex: 0,
    explanation:
        "Reducing e-waste starts with mindful purchasing and using devices longer.",
  ),
  Question(
    question: "Which of these organizations often collect e-waste safely?",
    options: [
      "Certified recycling centers",
      "Supermarkets",
      "Clothing shops",
      "Movie theaters",
    ],
    correctIndex: 0,
    explanation:
        "Only certified recycling centers or collection drives handle e-waste responsibly.",
  ),
  Question(
    question: "What should you do before recycling an old laptop or phone?",
    options: [
      "Smash it with a hammer",
      "Remove personal data and batteries",
      "Throw it with household trash",
      "Paint it green",
    ],
    correctIndex: 1,
    explanation:
        "Always clear your data and safely remove batteries before recycling electronics.",
  ),
  Question(
    question: "Which type of e-waste is produced the MOST worldwide?",
    options: [
      "Mobile phones",
      "Small household appliances",
      "Kitchen waste",
      "Books and paper",
    ],
    correctIndex: 1,
    explanation:
        "Small appliances like toasters, irons, and toys make up a huge portion of global e-waste.",
  ),
  Question(
    question:
        "What symbol usually indicates that a device should not be thrown in regular trash?",
    options: [
      "A triangle with arrows (♻️)",
      "A crossed-out trash bin",
      "A green leaf",
      "A battery icon",
    ],
    correctIndex: 1,
    explanation:
        "Electronics often have a crossed-out bin logo, meaning they require special disposal.",
  ),
  Question(
    question: "How can schools help reduce e-waste?",
    options: [
      "By holding e-waste collection drives",
      "By banning electronic devices",
      "By ignoring broken gadgets",
      "By giving every student 10 phones",
    ],
    correctIndex: 0,
    explanation:
        "Schools can educate students and organize collection programs to recycle e-waste properly.",
  ),

  // NEW QUESTIONS TO REACH 100
  Question(
    question: "Which of the following is an example of hazardous e-waste?",
    options: ["Old TV", "Plastic bottle", "Banana peel", "Paper notebook"],
    correctIndex: 0,
    explanation: "Old TVs contain lead and other hazardous materials.",
  ),
  Question(
    question: "Which type of battery is commonly found in mobile phones?",
    options: ["Lithium-ion", "Alkaline", "Zinc-carbon", "Lead-acid"],
    correctIndex: 0,
    explanation: "Most mobile phones use lithium-ion batteries.",
  ),
  Question(
    question: "Which e-waste component can pollute water?",
    options: ["Lead", "Glass screen", "Plastic case", "Screws"],
    correctIndex: 0,
    explanation: "Lead from electronics can seep into soil and water.",
  ),
  Question(
    question: "What does e-waste recycling prevent?",
    options: [
      "Air pollution",
      "Toxic exposure and resource loss",
      "More gadgets",
      "Noise pollution",
    ],
    correctIndex: 1,
    explanation:
        "Recycling reduces toxins in the environment and recovers valuable materials.",
  ),
  Question(
    question: "Which country generates the most e-waste per year?",
    options: ["USA", "India", "Germany", "Brazil"],
    correctIndex: 0,
    explanation: "The USA has the highest per-capita e-waste generation.",
  ),
  Question(
    question: "Which of the following is a rare metal found in e-waste?",
    options: ["Tantalum", "Iron", "Sand", "Water"],
    correctIndex: 0,
    explanation: "Tantalum is used in electronics like capacitors.",
  ),
  Question(
    question: "Which of these is a safe way to dispose of old batteries?",
    options: [
      "Certified collection centers",
      "Throw in trash",
      "Burn them",
      "Dump in river",
    ],
    correctIndex: 0,
    explanation: "Certified collection centers handle batteries safely.",
  ),
  Question(
    question: "What is a common toxin in CRT monitors?",
    options: ["Lead", "Aluminum", "Wood", "Paper"],
    correctIndex: 0,
    explanation: "CRT monitors contain lead in the glass.",
  ),
  Question(
    question: "Why should personal data be removed before recycling devices?",
    options: [
      "To prevent identity theft",
      "To make recycling faster",
      "To reduce size",
      "No need",
    ],
    correctIndex: 0,
    explanation: "Clearing personal data protects privacy.",
  ),
  Question(
    question: "Which of these is a benefit of reusing electronics?",
    options: [
      "Reduces e-waste",
      "Takes more space",
      "Generates pollution",
      "Consumes resources",
    ],
    correctIndex: 0,
    explanation: "Reusing electronics reduces waste and environmental impact.",
  ),

  Question(
    question: "Which of the following devices contains mercury?",
    options: ["Thermostats", "Plastic bottles", "Books", "Shoes"],
    correctIndex: 0,
    explanation:
        "Mercury is found in some electronic devices like thermostats and switches.",
  ),
  Question(
    question: "What is a common consequence of informal e-waste recycling?",
    options: [
      "Soil and water contamination",
      "Better gadget performance",
      "Free electricity",
      "Faster internet",
    ],
    correctIndex: 0,
    explanation:
        "Informal recycling without safety precautions releases toxins into the environment.",
  ),
  Question(
    question: "Which organization often provides e-waste recycling guidelines?",
    options: ["EPA", "Local bakery", "Movie studio", "Sports club"],
    correctIndex: 0,
    explanation:
        "The Environmental Protection Agency (EPA) provides safe recycling guidance.",
  ),
  Question(
    question: "Which metal in old phones is considered valuable for recovery?",
    options: ["Gold", "Sand", "Iron ore", "Plastic"],
    correctIndex: 0,
    explanation: "Gold is commonly recovered from old phones and electronics.",
  ),
  Question(
    question: "Why are lithium batteries considered dangerous in landfills?",
    options: [
      "They can leak or catch fire",
      "They make gadgets last longer",
      "They absorb water",
      "They attract birds",
    ],
    correctIndex: 0,
    explanation:
        "Lithium batteries can short-circuit and ignite if damaged or improperly disposed.",
  ),
  Question(
    question: "What should you do with broken cords or chargers?",
    options: [
      "Recycle at e-waste centers",
      "Throw in regular trash",
      "Burn them",
      "Keep in water",
    ],
    correctIndex: 0,
    explanation:
        "Electronic accessories should be recycled properly to prevent hazards.",
  ),
  Question(
    question: "Which of these is a component of e-waste that is toxic?",
    options: ["Cadmium", "Sand", "Paper", "Cotton"],
    correctIndex: 0,
    explanation:
        "Cadmium is a heavy metal found in batteries and other electronics.",
  ),
  Question(
    question: "Which type of e-waste is most common in households?",
    options: [
      "Small appliances",
      "Industrial machinery",
      "Plastic containers",
      "Glass bottles",
    ],
    correctIndex: 0,
    explanation:
        "Small household electronics like toasters, irons, and phones are common e-waste.",
  ),
  Question(
    question: "What is the main goal of e-waste recycling?",
    options: [
      "Recover valuable materials and reduce pollution",
      "Increase landfill size",
      "Burn trash",
      "Store devices in basements",
    ],
    correctIndex: 0,
    explanation:
        "Recycling prevents environmental damage and recovers metals like gold and copper.",
  ),
  Question(
    question: "Why should old CRT TVs not be thrown in regular trash?",
    options: [
      "They contain lead and other toxins",
      "They are too big",
      "They are heavy",
      "They have plastic",
    ],
    correctIndex: 0,
    explanation: "CRT TVs contain leaded glass which is hazardous.",
  ),
  Question(
    question: "Which of the following is a benefit of reusing old electronics?",
    options: [
      "Reduces demand for new resources",
      "Increases pollution",
      "Consumes more energy",
      "Requires burning waste",
    ],
    correctIndex: 0,
    explanation:
        "Reusing electronics reduces resource extraction and energy use.",
  ),
  Question(
    question:
        "Which type of e-waste is most frequently generated by businesses?",
    options: [
      "Computers and office equipment",
      "Banana peels",
      "Plastic bottles",
      "Glass jars",
    ],
    correctIndex: 0,
    explanation:
        "Businesses often generate computers, printers, and office devices as e-waste.",
  ),
  Question(
    question: "Which of the following is NOT a 3R principle?",
    options: ["Reduce", "Reuse", "Recycle", "Refuse electricity"],
    correctIndex: 3,
    explanation:
        "Refuse electricity is not part of the Reduce, Reuse, Recycle principles.",
  ),
  Question(
    question: "Which of these is considered a small e-waste item?",
    options: [
      "Smartphone",
      "Refrigerator",
      "Washing machine",
      "Microwave oven",
    ],
    correctIndex: 0,
    explanation: "Smartphones are small, portable electronic devices.",
  ),
  Question(
    question: "What is one way communities can help manage e-waste?",
    options: [
      "Organize e-waste collection drives",
      "Burn trash in yards",
      "Throw electronics in rivers",
      "Ignore old devices",
    ],
    correctIndex: 0,
    explanation:
        "Community collection programs help safely recycle electronics.",
  ),
  Question(
    question: "Why are e-waste landfills dangerous?",
    options: [
      "Toxins can leach into soil and water",
      "They smell nice",
      "They help plants grow",
      "They generate electricity",
    ],
    correctIndex: 0,
    explanation:
        "Heavy metals and chemicals from electronics pollute soil and groundwater.",
  ),
  Question(
    question: "What should be removed from electronics before recycling?",
    options: [
      "Batteries and personal data",
      "Plastic casings only",
      "Metal screws only",
      "Nothing needs removal",
    ],
    correctIndex: 0,
    explanation:
        "Batteries and personal data should always be removed for safety and privacy.",
  ),
  Question(
    question: "Which device contains the most precious metals?",
    options: [
      "Smartphone",
      "Plastic keyboard",
      "Rubber mouse",
      "Paper shredder",
    ],
    correctIndex: 0,
    explanation:
        "Smartphones have small amounts of gold, silver, and palladium.",
  ),
  Question(
    question: "What is a green approach to e-waste?",
    options: [
      "Reuse and recycle electronics",
      "Burn them",
      "Throw in rivers",
      "Hide them in basements",
    ],
    correctIndex: 0,
    explanation:
        "Reusing and recycling reduces pollution and conserves resources.",
  ),
  Question(
    question: "Which type of battery is found in laptops?",
    options: ["Lithium-ion", "Alkaline", "Zinc-carbon", "Lead-acid"],
    correctIndex: 0,
    explanation: "Most laptops use lithium-ion batteries.",
  ),
  Question(
    question: "Why is informal e-waste processing risky?",
    options: [
      "Exposure to toxic chemicals",
      "It is faster",
      "It makes devices last longer",
      "It is cheaper",
    ],
    correctIndex: 0,
    explanation:
        "Informal recycling exposes workers and communities to dangerous substances.",
  ),
  Question(
    question: "What is one environmental benefit of proper e-waste management?",
    options: [
      "Reduced soil and water contamination",
      "Increased garbage",
      "More landfill space",
      "Higher pollution",
    ],
    correctIndex: 0,
    explanation:
        "Proper management prevents toxic substances from contaminating the environment.",
  ),
  Question(
    question: "Which of these is NOT e-waste?",
    options: ["Plastic bottle", "Laptop", "Tablet", "Keyboard"],
    correctIndex: 0,
    explanation: "Plastic bottles are not electronic and thus not e-waste.",
  ),
  Question(
    question: "Which organization can provide e-waste collection info?",
    options: ["Local municipality", "Fast food chain", "Cinema", "Pet store"],
    correctIndex: 0,
    explanation: "Municipalities often organize e-waste collection programs.",
  ),
  Question(
    question: "Why is reusing electronics important?",
    options: [
      "Reduces new product demand",
      "Consumes more energy",
      "Generates more pollution",
      "Clogs landfills faster",
    ],
    correctIndex: 0,
    explanation: "Reusing devices conserves materials and energy.",
  ),
  Question(
    question: "Which of these metals is recovered from circuit boards?",
    options: ["Copper", "Wood", "Glass", "Plastic"],
    correctIndex: 0,
    explanation: "Copper is widely recovered from electronic circuit boards.",
  ),
  Question(
    question: "What is one major e-waste challenge?",
    options: [
      "Rapid obsolescence of electronics",
      "Too many trees",
      "Excess water supply",
      "Lack of electricity",
    ],
    correctIndex: 0,
    explanation:
        "Electronics become obsolete quickly, generating more e-waste.",
  ),
  Question(
    question: "Which device commonly contains lead?",
    options: ["CRT monitor", "Smartwatch", "Plastic bag", "Rubber band"],
    correctIndex: 0,
    explanation: "CRT monitors and older electronics contain leaded glass.",
  ),
  Question(
    question: "Why is recycling laptops important?",
    options: [
      "Recover metals and prevent toxins",
      "To make them heavier",
      "To increase landfill use",
      "To pollute soil",
    ],
    correctIndex: 0,
    explanation:
        "Recycling recovers valuable metals and prevents toxic contamination.",
  ),
  Question(
    question: "Which is the safest way to dispose of old phones?",
    options: [
      "Donate or recycle",
      "Burn them",
      "Throw in rivers",
      "Bury in backyard",
    ],
    correctIndex: 0,
    explanation: "Donation or certified recycling ensures safety and reuse.",
  ),
  Question(
    question: "Which device produces high amounts of e-waste globally?",
    options: [
      "Mobile phones",
      "Paper books",
      "Plastic straws",
      "Glass bottles",
    ],
    correctIndex: 0,
    explanation:
        "Mobile phones are produced and discarded in massive quantities worldwide.",
  ),
  Question(
    question: "Which of these is a key step in e-waste management?",
    options: [
      "Sorting devices for recycling",
      "Leaving devices in drawers",
      "Dumping electronics in rivers",
      "Burning electronics",
    ],
    correctIndex: 0,
    explanation: "Sorting ensures safe recycling and resource recovery.",
  ),
  Question(
    question:
        "What is a common sign that a device should not be thrown in trash?",
    options: [
      "Crossed-out trash bin",
      "Recycling triangle",
      "Green leaf",
      "Battery icon",
    ],
    correctIndex: 0,
    explanation:
        "A crossed-out bin symbol indicates special disposal is needed.",
  ),
  Question(
    question: "Which of these items is considered large e-waste?",
    options: ["Refrigerator", "Smartphone", "Mouse", "Headphones"],
    correctIndex: 0,
    explanation:
        "Large appliances like refrigerators are classified as large e-waste.",
  ),
  Question(
    question: "What is a benefit of reducing electronics purchase?",
    options: [
      "Less e-waste",
      "More pollution",
      "Higher landfill use",
      "Faster device obsolescence",
    ],
    correctIndex: 0,
    explanation: "Buying fewer devices helps reduce electronic waste.",
  ),
  Question(
    question: "Which type of lamp contains mercury?",
    options: ["Fluorescent lamp", "LED lamp", "Incandescent bulb", "Candle"],
    correctIndex: 0,
    explanation:
        "Fluorescent lamps contain mercury and must be recycled carefully.",
  ),
  Question(
    question: "Which of these actions contributes to e-waste reduction?",
    options: [
      "Repairing gadgets",
      "Throwing away gadgets",
      "Buying new devices quickly",
      "Burning devices",
    ],
    correctIndex: 0,
    explanation: "Repairing extends life and reduces e-waste.",
  ),
  Question(
    question: "Which country has strict e-waste disposal regulations?",
    options: ["Germany", "India", "Mexico", "Nigeria"],
    correctIndex: 0,
    explanation:
        "Germany has advanced e-waste laws and recycling infrastructure.",
  ),
  Question(
    question: "Which is a recyclable component of electronics?",
    options: ["Metals", "Banana peels", "Cardboard", "Grass"],
    correctIndex: 0,
    explanation:
        "Metals like copper, gold, and aluminum can be recovered from e-waste.",
  ),
  Question(
    question: "Why should electronic devices be refurbished?",
    options: [
      "To extend life and reduce e-waste",
      "To make them heavier",
      "To pollute landfills",
      "To burn faster",
    ],
    correctIndex: 0,
    explanation:
        "Refurbishing allows devices to be reused instead of discarded.",
  ),
  Question(
    question: "Which of these is considered hazardous in laptops?",
    options: [
      "Lithium battery",
      "Plastic keycaps",
      "Aluminum case",
      "Silicon chip",
    ],
    correctIndex: 0,
    explanation: "Lithium batteries are hazardous if not disposed properly.",
  ),
  Question(
    question: "Which approach is best for managing e-waste at home?",
    options: [
      "Separate, store, and recycle properly",
      "Mix with kitchen waste",
      "Burn at home",
      "Dump in rivers",
    ],
    correctIndex: 0,
    explanation:
        "Proper separation and recycling ensures safe e-waste management.",
  ),
  Question(
    question: "Which type of e-waste can be reused?",
    options: [
      "Functional old devices",
      "Broken devices with missing parts",
      "Batteries only",
      "Plastic wrappers",
    ],
    correctIndex: 0,
    explanation:
        "Functional electronics can be donated or sold to extend their life.",
  ),
  Question(
    question: "Which is a common heavy metal in e-waste?",
    options: ["Lead", "Iron nails", "Aluminum foil", "Cardboard"],
    correctIndex: 0,
    explanation: "Lead is present in CRTs, batteries, and solder.",
  ),
  Question(
    question: "What is one way to encourage e-waste recycling?",
    options: [
      "Community collection drives",
      "Burning devices",
      "Throw in rivers",
      "Ignoring electronics",
    ],
    correctIndex: 0,
    explanation: "Community programs promote safe collection and awareness.",
  ),
  Question(
    question: "Why are LCD screens safer than CRTs?",
    options: [
      "They contain no lead",
      "They are heavier",
      "They are larger",
      "They are bulkier",
    ],
    correctIndex: 0,
    explanation:
        "LCD screens do not contain leaded glass, making them safer to recycle.",
  ),
  Question(
    question: "Which of these is an electronic accessory that can be recycled?",
    options: [
      "Chargers and cables",
      "Paper notebook",
      "Plastic wrapper",
      "Wooden frame",
    ],
    correctIndex: 0,
    explanation:
        "Electronic accessories contain recoverable metals and plastics.",
  ),
  Question(
    question: "Which of these steps reduces e-waste?",
    options: [
      "Repairing gadgets",
      "Throwing away working devices",
      "Buying unnecessarily",
      "Ignoring recycling",
    ],
    correctIndex: 0,
    explanation:
        "Repairing and maintaining devices extends their life and reduces waste.",
  ),
  Question(
    question: "Which is NOT an e-waste recycling step?",
    options: [
      "Mixing with organic waste",
      "Sorting",
      "Processing",
      "Recovering metals",
    ],
    correctIndex: 0,
    explanation:
        "Mixing electronics with organic waste is unsafe and incorrect.",
  ),
  Question(
    question: "What is a benefit of donating electronics?",
    options: [
      "Extends device use and helps others",
      "Generates pollution",
      "Fills landfills",
      "Wastes resources",
    ],
    correctIndex: 0,
    explanation: "Donation allows devices to be reused instead of discarded.",
  ),
  Question(
    question: "Which is a key component in printed circuit boards?",
    options: ["Copper", "Cotton", "Glass bottle", "Paper"],
    correctIndex: 0,
    explanation:
        "Copper conducts electricity and is widely recovered in recycling.",
  ),
  Question(
    question: "Why is reducing e-waste important for the planet?",
    options: [
      "Prevents pollution and conserves resources",
      "Increases landfill size",
      "Burns resources",
      "Creates more gadgets",
    ],
    correctIndex: 0,
    explanation:
        "Reducing e-waste protects the environment and recovers materials.",
  ),
  Question(
    question: "Which of these can be a community solution to e-waste?",
    options: [
      "Organize recycling drives",
      "Ignore old devices",
      "Dump electronics in rivers",
      "Burn electronics at home",
    ],
    correctIndex: 0,
    explanation:
        "Community recycling programs ensure safe collection and reuse.",
  ),
];
