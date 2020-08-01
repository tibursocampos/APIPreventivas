﻿using APIPreventivas.Domain.Enum;
using APIPreventivas.Models;
using System;
using System.Collections.Generic;
using System.Text;
using static APIPreventivas.Domain.Enum.TipoAtividadeEnum;

namespace APIPreventivas.Domain.Models
{
    public class Atividade
    {
        public int IdAtividade { get; set; }
        public int IdAlvo { get; set; }
        public int IdTecnico { get; set; }
        public TipoAtividade TipoAtividade { get; set; }
        public DateTime DataProgramacao { get; set; }
        public DateTime? DataConclusao { get; set; }
        public virtual Tecnico Tecnicos { get; set; }
        public virtual Alvo Alvos { get; set; }
    }
}
