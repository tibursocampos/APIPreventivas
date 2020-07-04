﻿// <auto-generated />
using System;
using APIPreventivas.Models;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Infrastructure;
using Microsoft.EntityFrameworkCore.Metadata;
using Microsoft.EntityFrameworkCore.Migrations;
using Microsoft.EntityFrameworkCore.Storage.ValueConversion;

namespace APIPreventivas.Migrations
{
    [DbContext(typeof(APIPreventivaContext))]
    [Migration("20200619225533_popula_DB")]
    partial class popula_DB
    {
        protected override void BuildTargetModel(ModelBuilder modelBuilder)
        {
#pragma warning disable 612, 618
            modelBuilder
                .HasAnnotation("ProductVersion", "3.1.5")
                .HasAnnotation("Relational:MaxIdentifierLength", 128)
                .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

            modelBuilder.Entity("APIPreventivas.Models.Alvo", b =>
                {
                    b.Property<int>("Id_alvo")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<DateTime?>("Data_conclusao")
                        .HasColumnType("datetime2");

                    b.Property<DateTime?>("Data_tecnico_exec_acesso")
                        .HasColumnType("datetime2");

                    b.Property<DateTime?>("Data_tecnico_exec_aterramento")
                        .HasColumnType("datetime2");

                    b.Property<DateTime?>("Data_tecnico_exec_bateria")
                        .HasColumnType("datetime2");

                    b.Property<DateTime?>("Data_tecnico_exec_infra")
                        .HasColumnType("datetime2");

                    b.Property<DateTime?>("Data_tecnico_exec_mw")
                        .HasColumnType("datetime2");

                    b.Property<DateTime?>("Data_tecnico_prog_acesso")
                        .HasColumnType("datetime2");

                    b.Property<DateTime?>("Data_tecnico_prog_aterramento")
                        .HasColumnType("datetime2");

                    b.Property<DateTime?>("Data_tecnico_prog_bateria")
                        .HasColumnType("datetime2");

                    b.Property<DateTime?>("Data_tecnico_prog_infra")
                        .HasColumnType("datetime2");

                    b.Property<DateTime?>("Data_tecnico_prog_mw")
                        .HasColumnType("datetime2");

                    b.Property<int>("Id_cronograma")
                        .HasColumnType("int");

                    b.Property<int>("Id_supervisor")
                        .HasColumnType("int");

                    b.Property<int?>("Id_tecnico_exec_acesso")
                        .HasColumnType("int");

                    b.Property<int?>("Id_tecnico_exec_aterramento")
                        .HasColumnType("int");

                    b.Property<int?>("Id_tecnico_exec_bateria")
                        .HasColumnType("int");

                    b.Property<int?>("Id_tecnico_exec_infra")
                        .HasColumnType("int");

                    b.Property<int?>("Id_tecnico_exec_mw")
                        .HasColumnType("int");

                    b.Property<int?>("Id_tecnico_prog_acesso")
                        .HasColumnType("int");

                    b.Property<int?>("Id_tecnico_prog_aterramento")
                        .HasColumnType("int");

                    b.Property<int?>("Id_tecnico_prog_bateria")
                        .HasColumnType("int");

                    b.Property<int?>("Id_tecnico_prog_infra")
                        .HasColumnType("int");

                    b.Property<int?>("Id_tecnico_prog_mw")
                        .HasColumnType("int");

                    b.Property<string>("Site_end_id")
                        .IsRequired()
                        .HasColumnType("nvarchar(450)");

                    b.Property<bool>("Status")
                        .HasColumnType("bit");

                    b.HasKey("Id_alvo");

                    b.HasIndex("Id_cronograma");

                    b.HasIndex("Site_end_id");

                    b.ToTable("Alvos");
                });

            modelBuilder.Entity("APIPreventivas.Models.Cronograma", b =>
                {
                    b.Property<int>("Id_cronograma")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<int>("Ano")
                        .HasColumnType("int");

                    b.Property<int>("Id_supervisor")
                        .HasColumnType("int");

                    b.Property<int>("Mes")
                        .HasColumnType("int");

                    b.Property<bool>("Status")
                        .HasColumnType("bit");

                    b.HasKey("Id_cronograma");

                    b.HasIndex("Id_supervisor");

                    b.ToTable("Cronogramas");
                });

            modelBuilder.Entity("APIPreventivas.Models.Site", b =>
                {
                    b.Property<string>("End_id")
                        .HasColumnType("nvarchar(450)");

                    b.Property<int>("ANF")
                        .HasColumnType("int");

                    b.Property<string>("Cidade")
                        .HasColumnType("nvarchar(max)");

                    b.Property<int>("Estado")
                        .HasColumnType("int");

                    b.Property<string>("Site_3g")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Site_gsm")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Site_lte")
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("End_id");

                    b.ToTable("Sites");
                });

            modelBuilder.Entity("APIPreventivas.Models.Supervisor", b =>
                {
                    b.Property<int>("Id_funcionario")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<int>("ANF")
                        .HasColumnType("int");

                    b.Property<string>("Email")
                        .HasColumnType("nvarchar(max)");

                    b.Property<int>("Permissao")
                        .HasColumnType("int");

                    b.Property<string>("Primeiro_nome")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Senha")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Ultimo_nome")
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("Id_funcionario");

                    b.ToTable("Supervisores");
                });

            modelBuilder.Entity("APIPreventivas.Models.Tecnico", b =>
                {
                    b.Property<int>("Id_funcionario")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int")
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<int>("Area")
                        .HasColumnType("int");

                    b.Property<string>("Email")
                        .HasColumnType("nvarchar(max)");

                    b.Property<int>("Permissao")
                        .HasColumnType("int");

                    b.Property<string>("Primeiro_nome")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Senha")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Ultimo_nome")
                        .HasColumnType("nvarchar(max)");

                    b.HasKey("Id_funcionario");

                    b.ToTable("Tecnicos");
                });

            modelBuilder.Entity("APIPreventivas.Models.TecnicoAlvo", b =>
                {
                    b.Property<int>("Id_alvo")
                        .HasColumnType("int");

                    b.Property<int>("Id_tecnico")
                        .HasColumnType("int");

                    b.HasKey("Id_alvo", "Id_tecnico");

                    b.HasIndex("Id_tecnico");

                    b.ToTable("TecnicosAlvos");
                });

            modelBuilder.Entity("APIPreventivas.Models.Alvo", b =>
                {
                    b.HasOne("APIPreventivas.Models.Cronograma", "Cronogramas")
                        .WithMany("Alvos")
                        .HasForeignKey("Id_cronograma")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.HasOne("APIPreventivas.Models.Site", "Sites")
                        .WithMany("Alvos")
                        .HasForeignKey("Site_end_id")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();
                });

            modelBuilder.Entity("APIPreventivas.Models.Cronograma", b =>
                {
                    b.HasOne("APIPreventivas.Models.Supervisor", "Supervisores")
                        .WithMany("Cronogramas")
                        .HasForeignKey("Id_supervisor")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();
                });

            modelBuilder.Entity("APIPreventivas.Models.TecnicoAlvo", b =>
                {
                    b.HasOne("APIPreventivas.Models.Alvo", "Alvo")
                        .WithMany("Tecnicos_alvos")
                        .HasForeignKey("Id_alvo")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.HasOne("APIPreventivas.Models.Tecnico", "Tecnico")
                        .WithMany("Tecnicos_alvos")
                        .HasForeignKey("Id_tecnico")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();
                });
#pragma warning restore 612, 618
        }
    }
}
