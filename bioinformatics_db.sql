-- Crear la base de datos
CREATE DATABASE bioinformatics_db;

-- Usar la base de datos
USE bioinformatics_db;

-- Crear la tabla genes
CREATE TABLE genes (
    gene_id INT AUTO_INCREMENT PRIMARY KEY,
    gene_name VARCHAR(50) NOT NULL,
    organism VARCHAR(50) NOT NULL,
    sequence TEXT NOT NULL,
    sequence_length INT NOT NULL
);

-- Insertar registros de ejemplo en la tabla genes
INSERT INTO genes (gene_name, organism, sequence, sequence_length) VALUES
('BRCA1', 'Homo sapiens', 'ATGCGTACGTAGCTAGCTAGCGTAGCTAGTAC', 1500),
('BRCA2', 'Homo sapiens', 'CGTACGTAGCTAGTACGATCGATCGATCGATC', 900),
('TP53', 'Homo sapiens', 'TACGTAGCTAGTACGATCGTACGTACGTAGCT', 1200),
('EGFR', 'Mus musculus', 'CGTACGTAGCTAGTACGATCGTAGCTAGCTAA', 1050),
('VEGFA', 'Mus musculus', 'GCTAGCTAGCTACGTAGTACGATCGATCGTAG', 1400),
('MYC', 'Drosophila melanogaster', 'GTACGTACGATCGATCGTACGTAGCTAGCTA', 700),
('KRAS', 'Drosophila melanogaster', 'ACGTACGTACGTAGCTAGTACGATCGATCGTA', 1100),
('ABL1', 'Saccharomyces cerevisiae', 'CGTACGATCGTAGCTAGTACGATCGTAGCTAG', 1300),
('JAK2', 'Saccharomyces cerevisiae', 'ATCGATCGTAGCTAGTACGATCGTACGTACGA', 800),
('STAT3', 'Homo sapiens', 'GCTAGTACGTAGCTAGTACGATCGTAGCTAGT', 1600);

-- Verificar los datos insertados
SELECT * FROM genes;
