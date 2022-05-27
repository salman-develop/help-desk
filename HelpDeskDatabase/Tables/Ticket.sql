﻿CREATE TABLE [dbo].[Ticket]
(
	[Id] INT NOT NULL IDENTITY(1,1), 
    [Email] NVARCHAR(250) NOT NULL, 
    [Subject] NVARCHAR(100) NOT NULL, 
    [GroupId] INT NULL, 
    [TypeId] INT NULL, 
    [SourceId] INT NULL, 
    [StateId] INT NOT NULL, 
    [AgentId] INT NULL, 
    [PriorityId] INT NOT NULL, 
    [Description] NVARCHAR(500) NULL, 
    CONSTRAINT [PK_Ticket] PRIMARY KEY (Id),
    CONSTRAINT [FK_Ticket_TicketGroup] FOREIGN KEY (GroupId) REFERENCES TicketGroup(Id),
    CONSTRAINT [FK_Ticket_TicketType] FOREIGN KEY (TypeId) REFERENCES TicketType(Id),
    CONSTRAINT [FK_Ticket_TicketSource] FOREIGN KEY (SourceId) REFERENCES TicketSource(Id),
    CONSTRAINT [FK_Ticket_TicketState] FOREIGN KEY (StateId) REFERENCES TicketState(Id),
    CONSTRAINT [FK_Ticket_TicketPriority] FOREIGN KEY (PriorityId) REFERENCES TicketPriority(Id),
    CONSTRAINT [FK_Ticket_Users] FOREIGN KEY (AgentId) REFERENCES Users(Id),
)