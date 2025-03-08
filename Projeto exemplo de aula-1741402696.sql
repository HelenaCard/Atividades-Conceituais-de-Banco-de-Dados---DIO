CREATE TABLE [Paciente] (
	[IdPaciente] int IDENTITY(1,1) NOT NULL,
	PRIMARY KEY ([IdPaciente])
);

CREATE TABLE [Medico] (
	[idMédico] int IDENTITY(1,1) NOT NULL,
	PRIMARY KEY ([idMédico])
);

CREATE TABLE [Exame] (
	[idExame] int IDENTITY(1,1) NOT NULL,
	PRIMARY KEY ([idExame])
);

CREATE TABLE [Consultas] (
	[idConsultas] int IDENTITY(1,1) NOT NULL,
	[idMédico] int IDENTITY(1,1) NOT NULL,
	[idPaciente] int IDENTITY(1,1) NOT NULL,
	[idExames] int IDENTITY(1,1) NOT NULL,
	PRIMARY KEY ([idConsultas], [idMédico], [idPaciente], [idExames])
);




ALTER TABLE [Consultas] ADD CONSTRAINT [Consultas_fk1] FOREIGN KEY ([idMédico]) REFERENCES [Medico]([idMédico]);

ALTER TABLE [Consultas] ADD CONSTRAINT [Consultas_fk2] FOREIGN KEY ([idPaciente]) REFERENCES [Paciente]([IdPaciente]);

ALTER TABLE [Consultas] ADD CONSTRAINT [Consultas_fk3] FOREIGN KEY ([idExames]) REFERENCES [Exame]([idExame]);