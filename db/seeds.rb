ApplicationRecord.connection.execute(<<~SQL)
  DELETE FROM attacks;
  DELETE FROM monsters;
  DELETE FROM victims;

  ALTER SEQUENCE monsters_id_seq RESTART WITH 1;
  ALTER SEQUENCE victims_id_seq RESTART WITH 1;
  ALTER SEQUENCE attacks_id_seq RESTART WITH 1;

  INSERT INTO
    monsters (scare_level, name, description, created_at, updated_at)
  VALUES
    (8, 'Drácula', 'Chupa sange. Hincha del rojo. Libertario. ALA', now(), now()),
    (6, 'King Kong', 'Gorila gigante. #VamosAVolver. BocaJrs.', now(), now()),
    (4, 'Nahuelito', 'Vivo en el Nahuel Huapi. Soltero. Fanático del plancton.', now(), now()),
    (5, 'Hombre lobo', 'Mitad lobo - mitad humano', now(), now()),
    (1, 'James P. Sullivan', '#monstropolis #scareroftheyear', now(), now());

  INSERT INTO
    victims (name, birthdate, created_at, updated_at)
  VALUES
    ('Flor', '2001-02-27', now(), now()),
    ('Hugo', '1944-01-09', now(), now()),
    ('Lola', '1999-03-10', now(), now()),
    ('Paco', '1974-10-25', now(), now()),
    ('Pepe', '2009-07-12', now(), now()),
    ('Alma', '2008-03-23', now(), now());

  INSERT INTO
    attacks (monster_id, victim_id, created_at, updated_at)
  VALUES
    (1, 1, now(), now()),
    (3, 2, now(), now()),
    (3, 4, now(), now()),
    (3, 5, now(), now()),
    (5, 6, now(), now());
SQL

puts "Done."
