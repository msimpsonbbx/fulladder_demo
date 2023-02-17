-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
-- Date        : Fri Feb 17 15:34:55 2023
-- Host        : matt-VirtualBox running 64-bit Ubuntu 18.04.6 LTS
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               /tools/Xilinx/Vivado/2020.1/workspace/project_1/project_1.sim/sim_1/synth/func/xsim/full_adder_tb_func_synth.vhd
-- Design      : FULL_ADDER
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu7ev-ffvc1156-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity FULL_ADDER is
  port (
    A : in STD_LOGIC;
    B : in STD_LOGIC;
    clk : in STD_LOGIC;
    Cin : in STD_LOGIC;
    Sum : out STD_LOGIC;
    Cout : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of FULL_ADDER : entity is true;
end FULL_ADDER;

architecture STRUCTURE of FULL_ADDER is
  signal A_IBUF : STD_LOGIC;
  signal B_IBUF : STD_LOGIC;
  signal Cin_IBUF : STD_LOGIC;
  signal Cout_OBUF : STD_LOGIC;
  signal Cout_i_1_n_0 : STD_LOGIC;
  signal HA2_Sum : STD_LOGIC;
  signal Sum_OBUF : STD_LOGIC;
  signal clk_IBUF : STD_LOGIC;
  signal clk_IBUF_BUFG : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of Cout_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of Sum_i_1 : label is "soft_lutpair0";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of clk_IBUF_BUFG_inst : label is "BUFG";
begin
A_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => A,
      O => A_IBUF
    );
B_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => B,
      O => B_IBUF
    );
Cin_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => Cin,
      O => Cin_IBUF
    );
Cout_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => Cout_OBUF,
      O => Cout
    );
Cout_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => Cin_IBUF,
      I1 => B_IBUF,
      I2 => A_IBUF,
      O => Cout_i_1_n_0
    );
Cout_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => Cout_i_1_n_0,
      Q => Cout_OBUF,
      R => '0'
    );
Sum_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => Sum_OBUF,
      O => Sum
    );
Sum_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => Cin_IBUF,
      I1 => A_IBUF,
      I2 => B_IBUF,
      O => HA2_Sum
    );
Sum_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => HA2_Sum,
      Q => Sum_OBUF,
      R => '0'
    );
clk_IBUF_BUFG_inst: unisim.vcomponents.BUFGCE
    generic map(
      CE_TYPE => "ASYNC",
      SIM_DEVICE => "ULTRASCALE_PLUS",
      STARTUP_SYNC => "FALSE"
    )
        port map (
      CE => '1',
      I => clk_IBUF,
      O => clk_IBUF_BUFG
    );
clk_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => clk,
      O => clk_IBUF
    );
end STRUCTURE;
