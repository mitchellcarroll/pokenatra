DROP TABLE IF EXISTS pokemons;

CREATE TABLE pokemons(
  id SERIAL PRIMARY KEY,
  name TEXT,
  poke_type TEXT,
  cp INT,
  img_url TEXT
);
