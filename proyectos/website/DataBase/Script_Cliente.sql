CREATE TABLE [dbo].[Cliente](
	[Persona_Id] [int] NOT NULL,
	[Nombres] [varchar](60) NOT NULL,
	[apellido_paterno] [varchar](50) NOT NULL,
	[apellido_materno] [varchar](50) NOT NULL,
	[email] [varchar](60) NOT NULL,
	[telefono] [varchar](15) NOT NULL,
	[tipo_persona] [char](1) NOT NULL,
	[direccion] [varchar](200) NOT NULL,
	[imagen] [varchar](200) NOT NULL,
	[celular] [varchar](15) NOT NULL,
	estado char(1) not null,
 CONSTRAINT [PK_Persona] PRIMARY KEY CLUSTERED 
(
	[Persona_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]