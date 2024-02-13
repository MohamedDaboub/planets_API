CREATE TABLE planets (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    diameter TEXT,
    distance_from_sun TEXT,
    number_of_moons TEXT,
    Population TEXT,
    Atmosphere TEXT,
    Climate TEXT
);
INSERT INTO planets (
        name,
        diameter,
        distance_from_sun,
        number_of_moons,
        Population,
        Atmosphere,
        Climate
    )
VALUES (
        'Xylor',
        'Approximately 12,000 kilometers',
        '100 million kilometers',
        '2 (Lunaris and Nocturna)',
        'Varied throughout history, reaching its peak at 10 billion inhabitants before the cataclysmic events.',
        'Previously composed of a breathable mix of oxygen and nitrogen, now heavily polluted and toxic.',
        'Once diverse with lush forests, vast oceans, and sprawling plains, now ravaged by extreme weather patterns and environmental degradation.'
    );