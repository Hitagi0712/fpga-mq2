-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "06/16/2024 15:55:47"

-- 
-- Device: Altera EPM240T100C5 Package TQFP100
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAXII;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAXII.MAXII_COMPONENTS.ALL;

ENTITY 	final_project IS
    PORT (
	RW : OUT std_logic;
	RS : OUT std_logic;
	EN : OUT std_logic;
	data_or_command : OUT std_logic_vector(7 DOWNTO 0);
	data_in : IN std_logic_vector(7 DOWNTO 0);
	clk_in : IN std_logic;
	clk_adc : OUT std_logic;
	ALE : OUT std_logic;
	START : OUT std_logic;
	OE : OUT std_logic;
	BUZZER : OUT std_logic
	);
END final_project;

-- Design Ports Information
-- RW	=>  Location: PIN_70,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- RS	=>  Location: PIN_68,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- EN	=>  Location: PIN_72,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- data_or_command[0]	=>  Location: PIN_74,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- data_or_command[1]	=>  Location: PIN_76,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- data_or_command[2]	=>  Location: PIN_78,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- data_or_command[3]	=>  Location: PIN_77,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- data_or_command[4]	=>  Location: PIN_82,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- data_or_command[5]	=>  Location: PIN_81,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- data_or_command[6]	=>  Location: PIN_84,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- data_or_command[7]	=>  Location: PIN_83,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- clk_adc	=>  Location: PIN_12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- ALE	=>  Location: PIN_37,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- START	=>  Location: PIN_33,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- OE	=>  Location: PIN_35,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- BUZZER	=>  Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- clk_in	=>  Location: PIN_14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_in[7]	=>  Location: PIN_54,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_in[2]	=>  Location: PIN_49,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_in[0]	=>  Location: PIN_47,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_in[1]	=>  Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_in[3]	=>  Location: PIN_50,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_in[4]	=>  Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_in[5]	=>  Location: PIN_52,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_in[6]	=>  Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF final_project IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_RW : std_logic;
SIGNAL ww_RS : std_logic;
SIGNAL ww_EN : std_logic;
SIGNAL ww_data_or_command : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_data_in : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_clk_in : std_logic;
SIGNAL ww_clk_adc : std_logic;
SIGNAL ww_ALE : std_logic;
SIGNAL ww_START : std_logic;
SIGNAL ww_OE : std_logic;
SIGNAL ww_BUZZER : std_logic;
SIGNAL \clk_in~combout\ : std_logic;
SIGNAL \Add0~95_combout\ : std_logic;
SIGNAL \Add0~97\ : std_logic;
SIGNAL \Add0~97COUT1_146\ : std_logic;
SIGNAL \Add0~65_combout\ : std_logic;
SIGNAL \Add0~67\ : std_logic;
SIGNAL \Add0~100_combout\ : std_logic;
SIGNAL \Add0~102\ : std_logic;
SIGNAL \Add0~102COUT1_148\ : std_logic;
SIGNAL \Add0~115_combout\ : std_logic;
SIGNAL \Add0~117\ : std_logic;
SIGNAL \Add0~117COUT1_150\ : std_logic;
SIGNAL \Add0~85_combout\ : std_logic;
SIGNAL \Add0~87\ : std_logic;
SIGNAL \Add0~87COUT1_152\ : std_logic;
SIGNAL \Add0~105_combout\ : std_logic;
SIGNAL \Add0~107\ : std_logic;
SIGNAL \Add0~107COUT1_154\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~110_combout\ : std_logic;
SIGNAL \Add0~112\ : std_logic;
SIGNAL \Add0~112COUT1_156\ : std_logic;
SIGNAL \Add0~120_combout\ : std_logic;
SIGNAL \Add0~122\ : std_logic;
SIGNAL \Add0~122COUT1_158\ : std_logic;
SIGNAL \Add0~90_combout\ : std_logic;
SIGNAL \Add0~92\ : std_logic;
SIGNAL \Add0~92COUT1_160\ : std_logic;
SIGNAL \Add0~55_combout\ : std_logic;
SIGNAL \Add0~57\ : std_logic;
SIGNAL \Add0~57COUT1_162\ : std_logic;
SIGNAL \Add0~60_combout\ : std_logic;
SIGNAL \Add0~62\ : std_logic;
SIGNAL \Add0~70_combout\ : std_logic;
SIGNAL \Add0~72\ : std_logic;
SIGNAL \Add0~72COUT1_164\ : std_logic;
SIGNAL \Add0~75_combout\ : std_logic;
SIGNAL \Add0~77\ : std_logic;
SIGNAL \Add0~77COUT1_166\ : std_logic;
SIGNAL \Add0~45_combout\ : std_logic;
SIGNAL \Add0~47\ : std_logic;
SIGNAL \Add0~47COUT1_168\ : std_logic;
SIGNAL \Add0~50_combout\ : std_logic;
SIGNAL \Add0~52\ : std_logic;
SIGNAL \Add0~52COUT1_170\ : std_logic;
SIGNAL \Add0~35_combout\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \Add0~42\ : std_logic;
SIGNAL \Add0~42COUT1_172\ : std_logic;
SIGNAL \Add0~80_combout\ : std_logic;
SIGNAL \Add0~82\ : std_logic;
SIGNAL \Add0~82COUT1_174\ : std_logic;
SIGNAL \Add0~25_combout\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~27COUT1_176\ : std_logic;
SIGNAL \Add0~5_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~7COUT1_178\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add0~12\ : std_logic;
SIGNAL \Add0~15_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~17COUT1_180\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~22COUT1_182\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~5_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \current_state.lcd_delay~regout\ : std_logic;
SIGNAL \count_time[3]~0_combout\ : std_logic;
SIGNAL \Equal14~2_combout\ : std_logic;
SIGNAL \count_command[1]~7\ : std_logic;
SIGNAL \count_command[1]~7COUT1_15\ : std_logic;
SIGNAL \count_command[2]~5\ : std_logic;
SIGNAL \count_command[2]~5COUT1_17\ : std_logic;
SIGNAL \WideNor0~0_combout\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \process_0~0_combout\ : std_logic;
SIGNAL \WideNor0~combout\ : std_logic;
SIGNAL \Selector37~0_combout\ : std_logic;
SIGNAL \current_state.receive_data~regout\ : std_logic;
SIGNAL \Equal49~7_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Equal49~0_combout\ : std_logic;
SIGNAL \Equal49~4_combout\ : std_logic;
SIGNAL \Equal49~1_combout\ : std_logic;
SIGNAL \Equal49~5_combout\ : std_logic;
SIGNAL \Equal49~2_combout\ : std_logic;
SIGNAL \Equal49~3_combout\ : std_logic;
SIGNAL \Equal49~6_combout\ : std_logic;
SIGNAL \Equal49~8_combout\ : std_logic;
SIGNAL \Selector38~0_combout\ : std_logic;
SIGNAL \Selector38~1_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \Selector38~2_combout\ : std_logic;
SIGNAL \Selector38~3_combout\ : std_logic;
SIGNAL \Selector38~4_combout\ : std_logic;
SIGNAL \Selector38~5_combout\ : std_logic;
SIGNAL \Selector38~6_combout\ : std_logic;
SIGNAL \current_state.init_lcd~regout\ : std_logic;
SIGNAL \count_command[3]~3\ : std_logic;
SIGNAL \count_command[3]~3COUT1_19\ : std_logic;
SIGNAL \Equal14~1_combout\ : std_logic;
SIGNAL \count_command~8_combout\ : std_logic;
SIGNAL \Selector8~1_combout\ : std_logic;
SIGNAL \Selector8~2_combout\ : std_logic;
SIGNAL \Equal14~0_combout\ : std_logic;
SIGNAL \Equal14~4_combout\ : std_logic;
SIGNAL \Selector3~10_combout\ : std_logic;
SIGNAL \Equal14~3_combout\ : std_logic;
SIGNAL \Selector3~8_combout\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \RS~reg0_regout\ : std_logic;
SIGNAL \Selector9~1_combout\ : std_logic;
SIGNAL \Selector9~0_combout\ : std_logic;
SIGNAL \current_state.lcd_clock_en~regout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Equal0~9_combout\ : std_logic;
SIGNAL \Equal0~10_combout\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \Equal1~3_combout\ : std_logic;
SIGNAL \EN~reg0_regout\ : std_logic;
SIGNAL \ten_digit~0_combout\ : std_logic;
SIGNAL \ten_digit~7_combout\ : std_logic;
SIGNAL \ten_digit~4_combout\ : std_logic;
SIGNAL \ten_digit~5_combout\ : std_logic;
SIGNAL \ten_digit~6_combout\ : std_logic;
SIGNAL \ten_digit~2_combout\ : std_logic;
SIGNAL \ten_digit~1_combout\ : std_logic;
SIGNAL \ten_digit~3_combout\ : std_logic;
SIGNAL \BUZZER~0_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \BUZZER~1_combout\ : std_logic;
SIGNAL \Selector7~2_combout\ : std_logic;
SIGNAL \Selector7~3_combout\ : std_logic;
SIGNAL \WideOr15~0_combout\ : std_logic;
SIGNAL \Selector7~1_combout\ : std_logic;
SIGNAL \LessThan5~1_combout\ : std_logic;
SIGNAL \LessThan6~0_combout\ : std_logic;
SIGNAL \Selector7~4\ : std_logic;
SIGNAL \data_or_command[0]~reg0_regout\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \WideOr13~0_combout\ : std_logic;
SIGNAL \ten_digit~8_combout\ : std_logic;
SIGNAL \ten_digit~9_combout\ : std_logic;
SIGNAL \ten_digit~17_combout\ : std_logic;
SIGNAL \unit_digit~0_combout\ : std_logic;
SIGNAL \unit_digit~4_combout\ : std_logic;
SIGNAL \unit_digit~5_combout\ : std_logic;
SIGNAL \unit_digit~6_combout\ : std_logic;
SIGNAL \unit_digit~1_combout\ : std_logic;
SIGNAL \unit_digit~2_combout\ : std_logic;
SIGNAL \unit_digit~3_combout\ : std_logic;
SIGNAL \LessThan5~0_combout\ : std_logic;
SIGNAL \Selector6~1_combout\ : std_logic;
SIGNAL \Selector6~2_combout\ : std_logic;
SIGNAL \data_or_command[1]~reg0_regout\ : std_logic;
SIGNAL \unit_digit~8_combout\ : std_logic;
SIGNAL \unit_digit~7_combout\ : std_logic;
SIGNAL \unit_digit~9_combout\ : std_logic;
SIGNAL \unit_digit~10_combout\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \Selector5~2_combout\ : std_logic;
SIGNAL \Selector5~3_combout\ : std_logic;
SIGNAL \ten_digit~11_combout\ : std_logic;
SIGNAL \ten_digit~10_combout\ : std_logic;
SIGNAL \ten_digit~15_combout\ : std_logic;
SIGNAL \data_or_command[2]~reg0_regout\ : std_logic;
SIGNAL \unit_digit~13_combout\ : std_logic;
SIGNAL \unit_digit~12_combout\ : std_logic;
SIGNAL \unit_digit~14_combout\ : std_logic;
SIGNAL \unit_digit~15_combout\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \ten_digit~12_combout\ : std_logic;
SIGNAL \ten_digit~13_combout\ : std_logic;
SIGNAL \Selector4~2_combout\ : std_logic;
SIGNAL \Selector4~3_combout\ : std_logic;
SIGNAL \data_or_command[3]~reg0_regout\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \Selector2~1_combout\ : std_logic;
SIGNAL \Selector2~2_combout\ : std_logic;
SIGNAL \data_or_command[4]~reg0_regout\ : std_logic;
SIGNAL \Equal14~5_combout\ : std_logic;
SIGNAL \Equal14~6_combout\ : std_logic;
SIGNAL \data_or_command[5]~reg0_regout\ : std_logic;
SIGNAL \Selector1~4_combout\ : std_logic;
SIGNAL \Selector1~2_combout\ : std_logic;
SIGNAL \data_or_command[6]~reg0_regout\ : std_logic;
SIGNAL \WideOr1~0_combout\ : std_logic;
SIGNAL \data_or_command[7]~reg0_regout\ : std_logic;
SIGNAL \U1|count[0]~13\ : std_logic;
SIGNAL \U1|count[0]~13COUT1_21\ : std_logic;
SIGNAL \U1|count[1]~1\ : std_logic;
SIGNAL \U1|count[1]~1COUT1_23\ : std_logic;
SIGNAL \U1|count[2]~3\ : std_logic;
SIGNAL \U1|count[2]~3COUT1_25\ : std_logic;
SIGNAL \U1|count[3]~5\ : std_logic;
SIGNAL \U1|count[4]~9\ : std_logic;
SIGNAL \U1|count[4]~9COUT1_27\ : std_logic;
SIGNAL \U1|count[5]~7\ : std_logic;
SIGNAL \U1|count[5]~7COUT1_29\ : std_logic;
SIGNAL \U1|LessThan0~0_combout\ : std_logic;
SIGNAL \U1|LessThan0~1_combout\ : std_logic;
SIGNAL \U1|term~regout\ : std_logic;
SIGNAL \ALE~0_combout\ : std_logic;
SIGNAL \ALE~1_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Equal26~0_combout\ : std_logic;
SIGNAL \ALE~reg0_regout\ : std_logic;
SIGNAL \START~reg0_regout\ : std_logic;
SIGNAL \OE~0_combout\ : std_logic;
SIGNAL \OE~reg0_regout\ : std_logic;
SIGNAL \LessThan4~0_combout\ : std_logic;
SIGNAL \BUZZER~reg0_regout\ : std_logic;
SIGNAL unit_digit : std_logic_vector(7 DOWNTO 0);
SIGNAL ten_digit : std_logic_vector(7 DOWNTO 0);
SIGNAL hundred_digit : std_logic_vector(7 DOWNTO 0);
SIGNAL \data_in~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL count_time : std_logic_vector(24 DOWNTO 0);
SIGNAL count_command : std_logic_vector(4 DOWNTO 0);
SIGNAL \U1|count\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \ALT_INV_data_in~combout\ : std_logic_vector(6 DOWNTO 1);
SIGNAL \U1|ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \ALT_INV_current_state.init_lcd~regout\ : std_logic;
SIGNAL \ALT_INV_clk_in~combout\ : std_logic;

BEGIN

RW <= ww_RW;
RS <= ww_RS;
EN <= ww_EN;
data_or_command <= ww_data_or_command;
ww_data_in <= data_in;
ww_clk_in <= clk_in;
clk_adc <= ww_clk_adc;
ALE <= ww_ALE;
START <= ww_START;
OE <= ww_OE;
BUZZER <= ww_BUZZER;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_data_in~combout\(6) <= NOT \data_in~combout\(6);
\ALT_INV_data_in~combout\(1) <= NOT \data_in~combout\(1);
\U1|ALT_INV_LessThan0~1_combout\ <= NOT \U1|LessThan0~1_combout\;
\ALT_INV_current_state.init_lcd~regout\ <= NOT \current_state.init_lcd~regout\;
\ALT_INV_clk_in~combout\ <= NOT \clk_in~combout\;

-- Location: PIN_14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk_in~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_clk_in,
	combout => \clk_in~combout\);

-- Location: LC_X7_Y1_N6
\count_time[24]\ : maxii_lcell
-- Equation(s):
-- count_time(24) = DFFEAS(((!\current_state.init_lcd~regout\ & (\Add0~30_combout\ & !\count_time[3]~0_combout\))), GLOBAL(\clk_in~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0030",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~combout\,
	datab => \current_state.init_lcd~regout\,
	datac => \Add0~30_combout\,
	datad => \count_time[3]~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count_time(24));

-- Location: LC_X5_Y2_N3
\Add0~95\ : maxii_lcell
-- Equation(s):
-- \Add0~95_combout\ = ((!count_time(0)))
-- \Add0~97\ = CARRY(((count_time(0))))
-- \Add0~97COUT1_146\ = CARRY(((count_time(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33cc",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => count_time(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~95_combout\,
	cout0 => \Add0~97\,
	cout1 => \Add0~97COUT1_146\);

-- Location: LC_X4_Y2_N7
\count_time[0]\ : maxii_lcell
-- Equation(s):
-- count_time(0) = DFFEAS(((!\current_state.init_lcd~regout\ & (\Add0~95_combout\ & !\count_time[3]~0_combout\))), GLOBAL(\clk_in~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0030",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~combout\,
	datab => \current_state.init_lcd~regout\,
	datac => \Add0~95_combout\,
	datad => \count_time[3]~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count_time(0));

-- Location: LC_X5_Y2_N4
\Add0~65\ : maxii_lcell
-- Equation(s):
-- \Add0~65_combout\ = count_time(1) $ ((((\Add0~97\))))
-- \Add0~67\ = CARRY(((!\Add0~97COUT1_146\)) # (!count_time(1)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => count_time(1),
	cin0 => \Add0~97\,
	cin1 => \Add0~97COUT1_146\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~65_combout\,
	cout => \Add0~67\);

-- Location: LC_X4_Y2_N8
\count_time[1]\ : maxii_lcell
-- Equation(s):
-- count_time(1) = DFFEAS((!\current_state.init_lcd~regout\ & (((\Add0~65_combout\ & !\count_time[3]~0_combout\)))), GLOBAL(\clk_in~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0050",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~combout\,
	dataa => \current_state.init_lcd~regout\,
	datac => \Add0~65_combout\,
	datad => \count_time[3]~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count_time(1));

-- Location: LC_X5_Y2_N5
\Add0~100\ : maxii_lcell
-- Equation(s):
-- \Add0~100_combout\ = (count_time(2) $ ((!\Add0~67\)))
-- \Add0~102\ = CARRY(((count_time(2) & !\Add0~67\)))
-- \Add0~102COUT1_148\ = CARRY(((count_time(2) & !\Add0~67\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => count_time(2),
	cin => \Add0~67\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~100_combout\,
	cout0 => \Add0~102\,
	cout1 => \Add0~102COUT1_148\);

-- Location: LC_X4_Y2_N3
\count_time[2]\ : maxii_lcell
-- Equation(s):
-- count_time(2) = DFFEAS(((\Add0~100_combout\ & (!\current_state.init_lcd~regout\ & !\count_time[3]~0_combout\))), GLOBAL(\clk_in~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~combout\,
	datab => \Add0~100_combout\,
	datac => \current_state.init_lcd~regout\,
	datad => \count_time[3]~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count_time(2));

-- Location: LC_X5_Y2_N6
\Add0~115\ : maxii_lcell
-- Equation(s):
-- \Add0~115_combout\ = (count_time(3) $ (((!\Add0~67\ & \Add0~102\) # (\Add0~67\ & \Add0~102COUT1_148\))))
-- \Add0~117\ = CARRY(((!\Add0~102\) # (!count_time(3))))
-- \Add0~117COUT1_150\ = CARRY(((!\Add0~102COUT1_148\) # (!count_time(3))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => count_time(3),
	cin => \Add0~67\,
	cin0 => \Add0~102\,
	cin1 => \Add0~102COUT1_148\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~115_combout\,
	cout0 => \Add0~117\,
	cout1 => \Add0~117COUT1_150\);

-- Location: LC_X5_Y2_N1
\count_time[3]\ : maxii_lcell
-- Equation(s):
-- count_time(3) = DFFEAS(((!\current_state.init_lcd~regout\ & (\Add0~115_combout\ & !\count_time[3]~0_combout\))), GLOBAL(\clk_in~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0030",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~combout\,
	datab => \current_state.init_lcd~regout\,
	datac => \Add0~115_combout\,
	datad => \count_time[3]~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count_time(3));

-- Location: LC_X5_Y2_N7
\Add0~85\ : maxii_lcell
-- Equation(s):
-- \Add0~85_combout\ = (count_time(4) $ ((!(!\Add0~67\ & \Add0~117\) # (\Add0~67\ & \Add0~117COUT1_150\))))
-- \Add0~87\ = CARRY(((count_time(4) & !\Add0~117\)))
-- \Add0~87COUT1_152\ = CARRY(((count_time(4) & !\Add0~117COUT1_150\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => count_time(4),
	cin => \Add0~67\,
	cin0 => \Add0~117\,
	cin1 => \Add0~117COUT1_150\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~85_combout\,
	cout0 => \Add0~87\,
	cout1 => \Add0~87COUT1_152\);

-- Location: LC_X5_Y2_N0
\count_time[4]\ : maxii_lcell
-- Equation(s):
-- count_time(4) = DFFEAS(((!\current_state.init_lcd~regout\ & (\Add0~85_combout\ & !\count_time[3]~0_combout\))), GLOBAL(\clk_in~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0030",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~combout\,
	datab => \current_state.init_lcd~regout\,
	datac => \Add0~85_combout\,
	datad => \count_time[3]~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count_time(4));

-- Location: LC_X5_Y2_N8
\Add0~105\ : maxii_lcell
-- Equation(s):
-- \Add0~105_combout\ = (count_time(5) $ (((!\Add0~67\ & \Add0~87\) # (\Add0~67\ & \Add0~87COUT1_152\))))
-- \Add0~107\ = CARRY(((!\Add0~87\) # (!count_time(5))))
-- \Add0~107COUT1_154\ = CARRY(((!\Add0~87COUT1_152\) # (!count_time(5))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => count_time(5),
	cin => \Add0~67\,
	cin0 => \Add0~87\,
	cin1 => \Add0~87COUT1_152\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~105_combout\,
	cout0 => \Add0~107\,
	cout1 => \Add0~107COUT1_154\);

-- Location: LC_X4_Y2_N2
\count_time[5]\ : maxii_lcell
-- Equation(s):
-- count_time(5) = DFFEAS(((\Add0~105_combout\ & (!\current_state.init_lcd~regout\ & !\count_time[3]~0_combout\))), GLOBAL(\clk_in~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~combout\,
	datab => \Add0~105_combout\,
	datac => \current_state.init_lcd~regout\,
	datad => \count_time[3]~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count_time(5));

-- Location: LC_X5_Y2_N9
\Add0~0\ : maxii_lcell
-- Equation(s):
-- \Add0~0_combout\ = count_time(6) $ ((((!(!\Add0~67\ & \Add0~107\) # (\Add0~67\ & \Add0~107COUT1_154\)))))
-- \Add0~2\ = CARRY((count_time(6) & ((!\Add0~107COUT1_154\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => count_time(6),
	cin => \Add0~67\,
	cin0 => \Add0~107\,
	cin1 => \Add0~107COUT1_154\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~0_combout\,
	cout => \Add0~2\);

-- Location: LC_X4_Y2_N5
\count_time[6]\ : maxii_lcell
-- Equation(s):
-- count_time(6) = DFFEAS(((!\current_state.init_lcd~regout\ & (\Add0~0_combout\ & !\count_time[3]~0_combout\))), GLOBAL(\clk_in~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0030",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~combout\,
	datab => \current_state.init_lcd~regout\,
	datac => \Add0~0_combout\,
	datad => \count_time[3]~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count_time(6));

-- Location: LC_X6_Y2_N0
\Add0~110\ : maxii_lcell
-- Equation(s):
-- \Add0~110_combout\ = (count_time(7) $ ((\Add0~2\)))
-- \Add0~112\ = CARRY(((!\Add0~2\) # (!count_time(7))))
-- \Add0~112COUT1_156\ = CARRY(((!\Add0~2\) # (!count_time(7))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => count_time(7),
	cin => \Add0~2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~110_combout\,
	cout0 => \Add0~112\,
	cout1 => \Add0~112COUT1_156\);

-- Location: LC_X4_Y2_N1
\count_time[7]\ : maxii_lcell
-- Equation(s):
-- count_time(7) = DFFEAS(((!\current_state.init_lcd~regout\ & (\Add0~110_combout\ & !\count_time[3]~0_combout\))), GLOBAL(\clk_in~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0030",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~combout\,
	datab => \current_state.init_lcd~regout\,
	datac => \Add0~110_combout\,
	datad => \count_time[3]~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count_time(7));

-- Location: LC_X6_Y2_N1
\Add0~120\ : maxii_lcell
-- Equation(s):
-- \Add0~120_combout\ = (count_time(8) $ ((!(!\Add0~2\ & \Add0~112\) # (\Add0~2\ & \Add0~112COUT1_156\))))
-- \Add0~122\ = CARRY(((count_time(8) & !\Add0~112\)))
-- \Add0~122COUT1_158\ = CARRY(((count_time(8) & !\Add0~112COUT1_156\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => count_time(8),
	cin => \Add0~2\,
	cin0 => \Add0~112\,
	cin1 => \Add0~112COUT1_156\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~120_combout\,
	cout0 => \Add0~122\,
	cout1 => \Add0~122COUT1_158\);

-- Location: LC_X4_Y2_N6
\count_time[8]\ : maxii_lcell
-- Equation(s):
-- count_time(8) = DFFEAS(((!\current_state.init_lcd~regout\ & (\Add0~120_combout\ & !\count_time[3]~0_combout\))), GLOBAL(\clk_in~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0030",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~combout\,
	datab => \current_state.init_lcd~regout\,
	datac => \Add0~120_combout\,
	datad => \count_time[3]~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count_time(8));

-- Location: LC_X6_Y2_N2
\Add0~90\ : maxii_lcell
-- Equation(s):
-- \Add0~90_combout\ = (count_time(9) $ (((!\Add0~2\ & \Add0~122\) # (\Add0~2\ & \Add0~122COUT1_158\))))
-- \Add0~92\ = CARRY(((!\Add0~122\) # (!count_time(9))))
-- \Add0~92COUT1_160\ = CARRY(((!\Add0~122COUT1_158\) # (!count_time(9))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => count_time(9),
	cin => \Add0~2\,
	cin0 => \Add0~122\,
	cin1 => \Add0~122COUT1_158\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~90_combout\,
	cout0 => \Add0~92\,
	cout1 => \Add0~92COUT1_160\);

-- Location: LC_X4_Y2_N9
\count_time[9]\ : maxii_lcell
-- Equation(s):
-- count_time(9) = DFFEAS(((!\current_state.init_lcd~regout\ & (\Add0~90_combout\ & !\count_time[3]~0_combout\))), GLOBAL(\clk_in~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0030",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~combout\,
	datab => \current_state.init_lcd~regout\,
	datac => \Add0~90_combout\,
	datad => \count_time[3]~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count_time(9));

-- Location: LC_X6_Y2_N3
\Add0~55\ : maxii_lcell
-- Equation(s):
-- \Add0~55_combout\ = count_time(10) $ ((((!(!\Add0~2\ & \Add0~92\) # (\Add0~2\ & \Add0~92COUT1_160\)))))
-- \Add0~57\ = CARRY((count_time(10) & ((!\Add0~92\))))
-- \Add0~57COUT1_162\ = CARRY((count_time(10) & ((!\Add0~92COUT1_160\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => count_time(10),
	cin => \Add0~2\,
	cin0 => \Add0~92\,
	cin1 => \Add0~92COUT1_160\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~55_combout\,
	cout0 => \Add0~57\,
	cout1 => \Add0~57COUT1_162\);

-- Location: LC_X6_Y3_N2
\count_time[10]\ : maxii_lcell
-- Equation(s):
-- count_time(10) = DFFEAS((\Add0~55_combout\ & (!\count_time[3]~0_combout\ & (!\current_state.init_lcd~regout\))), GLOBAL(\clk_in~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0202",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~combout\,
	dataa => \Add0~55_combout\,
	datab => \count_time[3]~0_combout\,
	datac => \current_state.init_lcd~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count_time(10));

-- Location: LC_X6_Y2_N4
\Add0~60\ : maxii_lcell
-- Equation(s):
-- \Add0~60_combout\ = (count_time(11) $ (((!\Add0~2\ & \Add0~57\) # (\Add0~2\ & \Add0~57COUT1_162\))))
-- \Add0~62\ = CARRY(((!\Add0~57COUT1_162\) # (!count_time(11))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => count_time(11),
	cin => \Add0~2\,
	cin0 => \Add0~57\,
	cin1 => \Add0~57COUT1_162\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~60_combout\,
	cout => \Add0~62\);

-- Location: LC_X7_Y3_N3
\count_time[11]\ : maxii_lcell
-- Equation(s):
-- count_time(11) = DFFEAS((\Add0~60_combout\ & (((!\current_state.init_lcd~regout\ & !\count_time[3]~0_combout\)))), GLOBAL(\clk_in~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~combout\,
	dataa => \Add0~60_combout\,
	datac => \current_state.init_lcd~regout\,
	datad => \count_time[3]~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count_time(11));

-- Location: LC_X6_Y2_N5
\Add0~70\ : maxii_lcell
-- Equation(s):
-- \Add0~70_combout\ = (count_time(12) $ ((!\Add0~62\)))
-- \Add0~72\ = CARRY(((count_time(12) & !\Add0~62\)))
-- \Add0~72COUT1_164\ = CARRY(((count_time(12) & !\Add0~62\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => count_time(12),
	cin => \Add0~62\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~70_combout\,
	cout0 => \Add0~72\,
	cout1 => \Add0~72COUT1_164\);

-- Location: LC_X5_Y2_N2
\count_time[12]\ : maxii_lcell
-- Equation(s):
-- count_time(12) = DFFEAS(((!\current_state.init_lcd~regout\ & (\Add0~70_combout\ & !\count_time[3]~0_combout\))), GLOBAL(\clk_in~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0030",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~combout\,
	datab => \current_state.init_lcd~regout\,
	datac => \Add0~70_combout\,
	datad => \count_time[3]~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count_time(12));

-- Location: LC_X6_Y2_N6
\Add0~75\ : maxii_lcell
-- Equation(s):
-- \Add0~75_combout\ = count_time(13) $ (((((!\Add0~62\ & \Add0~72\) # (\Add0~62\ & \Add0~72COUT1_164\)))))
-- \Add0~77\ = CARRY(((!\Add0~72\)) # (!count_time(13)))
-- \Add0~77COUT1_166\ = CARRY(((!\Add0~72COUT1_164\)) # (!count_time(13)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => count_time(13),
	cin => \Add0~62\,
	cin0 => \Add0~72\,
	cin1 => \Add0~72COUT1_164\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~75_combout\,
	cout0 => \Add0~77\,
	cout1 => \Add0~77COUT1_166\);

-- Location: LC_X6_Y3_N1
\count_time[13]\ : maxii_lcell
-- Equation(s):
-- count_time(13) = DFFEAS((!\current_state.init_lcd~regout\ & (!\count_time[3]~0_combout\ & (\Add0~75_combout\))), GLOBAL(\clk_in~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~combout\,
	dataa => \current_state.init_lcd~regout\,
	datab => \count_time[3]~0_combout\,
	datac => \Add0~75_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count_time(13));

-- Location: LC_X6_Y2_N7
\Add0~45\ : maxii_lcell
-- Equation(s):
-- \Add0~45_combout\ = (count_time(14) $ ((!(!\Add0~62\ & \Add0~77\) # (\Add0~62\ & \Add0~77COUT1_166\))))
-- \Add0~47\ = CARRY(((count_time(14) & !\Add0~77\)))
-- \Add0~47COUT1_168\ = CARRY(((count_time(14) & !\Add0~77COUT1_166\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => count_time(14),
	cin => \Add0~62\,
	cin0 => \Add0~77\,
	cin1 => \Add0~77COUT1_166\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~45_combout\,
	cout0 => \Add0~47\,
	cout1 => \Add0~47COUT1_168\);

-- Location: LC_X6_Y1_N8
\count_time[14]\ : maxii_lcell
-- Equation(s):
-- count_time(14) = DFFEAS(((!\current_state.init_lcd~regout\ & (\Add0~45_combout\ & !\count_time[3]~0_combout\))), GLOBAL(\clk_in~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0030",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~combout\,
	datab => \current_state.init_lcd~regout\,
	datac => \Add0~45_combout\,
	datad => \count_time[3]~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count_time(14));

-- Location: LC_X6_Y2_N8
\Add0~50\ : maxii_lcell
-- Equation(s):
-- \Add0~50_combout\ = count_time(15) $ (((((!\Add0~62\ & \Add0~47\) # (\Add0~62\ & \Add0~47COUT1_168\)))))
-- \Add0~52\ = CARRY(((!\Add0~47\)) # (!count_time(15)))
-- \Add0~52COUT1_170\ = CARRY(((!\Add0~47COUT1_168\)) # (!count_time(15)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => count_time(15),
	cin => \Add0~62\,
	cin0 => \Add0~47\,
	cin1 => \Add0~47COUT1_168\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~50_combout\,
	cout0 => \Add0~52\,
	cout1 => \Add0~52COUT1_170\);

-- Location: LC_X6_Y1_N5
\count_time[15]\ : maxii_lcell
-- Equation(s):
-- count_time(15) = DFFEAS(((!\current_state.init_lcd~regout\ & (\Add0~50_combout\ & !\count_time[3]~0_combout\))), GLOBAL(\clk_in~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0030",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~combout\,
	datab => \current_state.init_lcd~regout\,
	datac => \Add0~50_combout\,
	datad => \count_time[3]~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count_time(15));

-- Location: LC_X6_Y2_N9
\Add0~35\ : maxii_lcell
-- Equation(s):
-- \Add0~35_combout\ = (count_time(16) $ ((!(!\Add0~62\ & \Add0~52\) # (\Add0~62\ & \Add0~52COUT1_170\))))
-- \Add0~37\ = CARRY(((count_time(16) & !\Add0~52COUT1_170\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => count_time(16),
	cin => \Add0~62\,
	cin0 => \Add0~52\,
	cin1 => \Add0~52COUT1_170\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~35_combout\,
	cout => \Add0~37\);

-- Location: LC_X7_Y3_N6
\count_time[16]\ : maxii_lcell
-- Equation(s):
-- count_time(16) = DFFEAS((!\current_state.init_lcd~regout\ & (((\Add0~35_combout\ & !\count_time[3]~0_combout\)))), GLOBAL(\clk_in~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0050",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~combout\,
	dataa => \current_state.init_lcd~regout\,
	datac => \Add0~35_combout\,
	datad => \count_time[3]~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count_time(16));

-- Location: LC_X7_Y2_N0
\Add0~40\ : maxii_lcell
-- Equation(s):
-- \Add0~40_combout\ = count_time(17) $ ((((\Add0~37\))))
-- \Add0~42\ = CARRY(((!\Add0~37\)) # (!count_time(17)))
-- \Add0~42COUT1_172\ = CARRY(((!\Add0~37\)) # (!count_time(17)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => count_time(17),
	cin => \Add0~37\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~40_combout\,
	cout0 => \Add0~42\,
	cout1 => \Add0~42COUT1_172\);

-- Location: LC_X7_Y1_N0
\count_time[17]\ : maxii_lcell
-- Equation(s):
-- count_time(17) = DFFEAS((\Add0~40_combout\ & (!\current_state.init_lcd~regout\ & (!\count_time[3]~0_combout\))), GLOBAL(\clk_in~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0202",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~combout\,
	dataa => \Add0~40_combout\,
	datab => \current_state.init_lcd~regout\,
	datac => \count_time[3]~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count_time(17));

-- Location: LC_X7_Y2_N1
\Add0~80\ : maxii_lcell
-- Equation(s):
-- \Add0~80_combout\ = (count_time(18) $ ((!(!\Add0~37\ & \Add0~42\) # (\Add0~37\ & \Add0~42COUT1_172\))))
-- \Add0~82\ = CARRY(((count_time(18) & !\Add0~42\)))
-- \Add0~82COUT1_174\ = CARRY(((count_time(18) & !\Add0~42COUT1_172\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => count_time(18),
	cin => \Add0~37\,
	cin0 => \Add0~42\,
	cin1 => \Add0~42COUT1_172\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~80_combout\,
	cout0 => \Add0~82\,
	cout1 => \Add0~82COUT1_174\);

-- Location: LC_X6_Y1_N0
\count_time[18]\ : maxii_lcell
-- Equation(s):
-- count_time(18) = DFFEAS(((!\current_state.init_lcd~regout\ & (\Add0~80_combout\ & !\count_time[3]~0_combout\))), GLOBAL(\clk_in~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0030",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~combout\,
	datab => \current_state.init_lcd~regout\,
	datac => \Add0~80_combout\,
	datad => \count_time[3]~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count_time(18));

-- Location: LC_X7_Y2_N2
\Add0~25\ : maxii_lcell
-- Equation(s):
-- \Add0~25_combout\ = count_time(19) $ (((((!\Add0~37\ & \Add0~82\) # (\Add0~37\ & \Add0~82COUT1_174\)))))
-- \Add0~27\ = CARRY(((!\Add0~82\)) # (!count_time(19)))
-- \Add0~27COUT1_176\ = CARRY(((!\Add0~82COUT1_174\)) # (!count_time(19)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => count_time(19),
	cin => \Add0~37\,
	cin0 => \Add0~82\,
	cin1 => \Add0~82COUT1_174\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~25_combout\,
	cout0 => \Add0~27\,
	cout1 => \Add0~27COUT1_176\);

-- Location: LC_X7_Y3_N7
\count_time[19]\ : maxii_lcell
-- Equation(s):
-- count_time(19) = DFFEAS((!\current_state.init_lcd~regout\ & (((\Add0~25_combout\ & !\count_time[3]~0_combout\)))), GLOBAL(\clk_in~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0050",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~combout\,
	dataa => \current_state.init_lcd~regout\,
	datac => \Add0~25_combout\,
	datad => \count_time[3]~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count_time(19));

-- Location: LC_X7_Y2_N3
\Add0~5\ : maxii_lcell
-- Equation(s):
-- \Add0~5_combout\ = (count_time(20) $ ((!(!\Add0~37\ & \Add0~27\) # (\Add0~37\ & \Add0~27COUT1_176\))))
-- \Add0~7\ = CARRY(((count_time(20) & !\Add0~27\)))
-- \Add0~7COUT1_178\ = CARRY(((count_time(20) & !\Add0~27COUT1_176\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => count_time(20),
	cin => \Add0~37\,
	cin0 => \Add0~27\,
	cin1 => \Add0~27COUT1_176\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~5_combout\,
	cout0 => \Add0~7\,
	cout1 => \Add0~7COUT1_178\);

-- Location: LC_X7_Y3_N5
\count_time[20]\ : maxii_lcell
-- Equation(s):
-- count_time(20) = DFFEAS((!\current_state.init_lcd~regout\ & (((\Add0~5_combout\ & !\count_time[3]~0_combout\)))), GLOBAL(\clk_in~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0050",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~combout\,
	dataa => \current_state.init_lcd~regout\,
	datac => \Add0~5_combout\,
	datad => \count_time[3]~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count_time(20));

-- Location: LC_X7_Y2_N4
\Add0~10\ : maxii_lcell
-- Equation(s):
-- \Add0~10_combout\ = (count_time(21) $ (((!\Add0~37\ & \Add0~7\) # (\Add0~37\ & \Add0~7COUT1_178\))))
-- \Add0~12\ = CARRY(((!\Add0~7COUT1_178\) # (!count_time(21))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => count_time(21),
	cin => \Add0~37\,
	cin0 => \Add0~7\,
	cin1 => \Add0~7COUT1_178\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~10_combout\,
	cout => \Add0~12\);

-- Location: LC_X7_Y3_N2
\count_time[21]\ : maxii_lcell
-- Equation(s):
-- count_time(21) = DFFEAS((!\current_state.init_lcd~regout\ & (\Add0~10_combout\ & ((!\count_time[3]~0_combout\)))), GLOBAL(\clk_in~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0044",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~combout\,
	dataa => \current_state.init_lcd~regout\,
	datab => \Add0~10_combout\,
	datad => \count_time[3]~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count_time(21));

-- Location: LC_X7_Y2_N5
\Add0~15\ : maxii_lcell
-- Equation(s):
-- \Add0~15_combout\ = (count_time(22) $ ((!\Add0~12\)))
-- \Add0~17\ = CARRY(((count_time(22) & !\Add0~12\)))
-- \Add0~17COUT1_180\ = CARRY(((count_time(22) & !\Add0~12\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => count_time(22),
	cin => \Add0~12\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~15_combout\,
	cout0 => \Add0~17\,
	cout1 => \Add0~17COUT1_180\);

-- Location: LC_X6_Y1_N2
\count_time[22]\ : maxii_lcell
-- Equation(s):
-- count_time(22) = DFFEAS(((!\current_state.init_lcd~regout\ & (\Add0~15_combout\ & !\count_time[3]~0_combout\))), GLOBAL(\clk_in~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0030",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~combout\,
	datab => \current_state.init_lcd~regout\,
	datac => \Add0~15_combout\,
	datad => \count_time[3]~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count_time(22));

-- Location: LC_X7_Y2_N6
\Add0~20\ : maxii_lcell
-- Equation(s):
-- \Add0~20_combout\ = (count_time(23) $ (((!\Add0~12\ & \Add0~17\) # (\Add0~12\ & \Add0~17COUT1_180\))))
-- \Add0~22\ = CARRY(((!\Add0~17\) # (!count_time(23))))
-- \Add0~22COUT1_182\ = CARRY(((!\Add0~17COUT1_180\) # (!count_time(23))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => count_time(23),
	cin => \Add0~12\,
	cin0 => \Add0~17\,
	cin1 => \Add0~17COUT1_180\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~20_combout\,
	cout0 => \Add0~22\,
	cout1 => \Add0~22COUT1_182\);

-- Location: LC_X7_Y1_N7
\count_time[23]\ : maxii_lcell
-- Equation(s):
-- count_time(23) = DFFEAS(((!\current_state.init_lcd~regout\ & (\Add0~20_combout\ & !\count_time[3]~0_combout\))), GLOBAL(\clk_in~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0030",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~combout\,
	datab => \current_state.init_lcd~regout\,
	datac => \Add0~20_combout\,
	datad => \count_time[3]~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count_time(23));

-- Location: LC_X7_Y2_N7
\Add0~30\ : maxii_lcell
-- Equation(s):
-- \Add0~30_combout\ = (((!\Add0~12\ & \Add0~22\) # (\Add0~12\ & \Add0~22COUT1_182\) $ (!count_time(24))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "f00f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datad => count_time(24),
	cin => \Add0~12\,
	cin0 => \Add0~22\,
	cin1 => \Add0~22COUT1_182\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~30_combout\);

-- Location: LC_X7_Y3_N8
\LessThan0~4\ : maxii_lcell
-- Equation(s):
-- \LessThan0~4_combout\ = (!\Add0~60_combout\ & (((!\Add0~120_combout\ & !\Add0~90_combout\)) # (!\Add0~55_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0515",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~60_combout\,
	datab => \Add0~120_combout\,
	datac => \Add0~55_combout\,
	datad => \Add0~90_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan0~4_combout\);

-- Location: LC_X7_Y3_N9
\LessThan0~3\ : maxii_lcell
-- Equation(s):
-- \LessThan0~3_combout\ = (((\Add0~70_combout\ & \Add0~75_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \Add0~70_combout\,
	datad => \Add0~75_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan0~3_combout\);

-- Location: LC_X6_Y3_N6
\LessThan0~2\ : maxii_lcell
-- Equation(s):
-- \LessThan0~2_combout\ = (((\Add0~80_combout\ & \Add0~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \Add0~80_combout\,
	datad => \Add0~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan0~2_combout\);

-- Location: LC_X6_Y3_N5
\LessThan0~1\ : maxii_lcell
-- Equation(s):
-- \LessThan0~1_combout\ = (!\Add0~50_combout\ & (!\Add0~45_combout\ & (!\Add0~35_combout\ & !\Add0~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~50_combout\,
	datab => \Add0~45_combout\,
	datac => \Add0~35_combout\,
	datad => \Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan0~1_combout\);

-- Location: LC_X7_Y3_N0
\LessThan0~5\ : maxii_lcell
-- Equation(s):
-- \LessThan0~5_combout\ = (\LessThan0~2_combout\ & (((!\LessThan0~4_combout\ & \LessThan0~3_combout\)) # (!\LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "40f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~4_combout\,
	datab => \LessThan0~3_combout\,
	datac => \LessThan0~2_combout\,
	datad => \LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan0~5_combout\);

-- Location: LC_X7_Y2_N8
\LessThan0~0\ : maxii_lcell
-- Equation(s):
-- \LessThan0~0_combout\ = (!\Add0~15_combout\ & (!\Add0~10_combout\ & (!\Add0~20_combout\ & !\Add0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~15_combout\,
	datab => \Add0~10_combout\,
	datac => \Add0~20_combout\,
	datad => \Add0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan0~0_combout\);

-- Location: LC_X7_Y3_N4
\current_state.lcd_delay\ : maxii_lcell
-- Equation(s):
-- \current_state.lcd_delay~regout\ = DFFEAS((\Add0~30_combout\) # ((\LessThan0~5_combout\) # ((\current_state.lcd_delay~regout\) # (!\LessThan0~0_combout\))), GLOBAL(\clk_in~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "feff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~combout\,
	dataa => \Add0~30_combout\,
	datab => \LessThan0~5_combout\,
	datac => \current_state.lcd_delay~regout\,
	datad => \LessThan0~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \current_state.lcd_delay~regout\);

-- Location: LC_X7_Y3_N1
\count_time[3]~0\ : maxii_lcell
-- Equation(s):
-- \count_time[3]~0_combout\ = (!\current_state.lcd_delay~regout\ & ((\Add0~30_combout\) # ((\LessThan0~5_combout\) # (!\LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3323",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~30_combout\,
	datab => \current_state.lcd_delay~regout\,
	datac => \LessThan0~0_combout\,
	datad => \LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \count_time[3]~0_combout\);

-- Location: LC_X4_Y1_N5
\Equal14~2\ : maxii_lcell
-- Equation(s):
-- \Equal14~2_combout\ = (((count_command(0) & \Equal14~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => count_command(0),
	datad => \Equal14~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal14~2_combout\);

-- Location: LC_X4_Y1_N6
\count_command[1]\ : maxii_lcell
-- Equation(s):
-- count_command(1) = DFFEAS(count_command(1) $ ((\count_command~8_combout\)), GLOBAL(\clk_in~combout\), VCC, , \current_state.init_lcd~regout\, , , , )
-- \count_command[1]~7\ = CARRY((count_command(1) & (\count_command~8_combout\)))
-- \count_command[1]~7COUT1_15\ = CARRY((count_command(1) & (\count_command~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6688",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~combout\,
	dataa => count_command(1),
	datab => \count_command~8_combout\,
	aclr => GND,
	ena => \current_state.init_lcd~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count_command(1),
	cout0 => \count_command[1]~7\,
	cout1 => \count_command[1]~7COUT1_15\);

-- Location: LC_X4_Y1_N7
\count_command[2]\ : maxii_lcell
-- Equation(s):
-- count_command(2) = DFFEAS(\count_command[1]~7\ $ (((\Equal14~2_combout\) # ((count_command(2))))), GLOBAL(\clk_in~combout\), VCC, , \current_state.init_lcd~regout\, , , , )
-- \count_command[2]~5\ = CARRY(((!\Equal14~2_combout\ & !count_command(2))) # (!\count_command[1]~7\))
-- \count_command[2]~5COUT1_17\ = CARRY(((!\Equal14~2_combout\ & !count_command(2))) # (!\count_command[1]~7COUT1_15\))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "1e1f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~combout\,
	dataa => \Equal14~2_combout\,
	datab => count_command(2),
	aclr => GND,
	ena => \current_state.init_lcd~regout\,
	cin0 => \count_command[1]~7\,
	cin1 => \count_command[1]~7COUT1_15\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count_command(2),
	cout0 => \count_command[2]~5\,
	cout1 => \count_command[2]~5COUT1_17\);

-- Location: LC_X4_Y1_N8
\count_command[3]\ : maxii_lcell
-- Equation(s):
-- count_command(3) = DFFEAS(\count_command[2]~5\ $ (((\Equal14~2_combout\) # ((!count_command(3))))), GLOBAL(\clk_in~combout\), VCC, , \current_state.init_lcd~regout\, , , , )
-- \count_command[3]~3\ = CARRY((!\Equal14~2_combout\ & (count_command(3) & !\count_command[2]~5\)))
-- \count_command[3]~3COUT1_19\ = CARRY((!\Equal14~2_combout\ & (count_command(3) & !\count_command[2]~5COUT1_17\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "4b04",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~combout\,
	dataa => \Equal14~2_combout\,
	datab => count_command(3),
	aclr => GND,
	ena => \current_state.init_lcd~regout\,
	cin0 => \count_command[2]~5\,
	cin1 => \count_command[2]~5COUT1_17\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count_command(3),
	cout0 => \count_command[3]~3\,
	cout1 => \count_command[3]~3COUT1_19\);

-- Location: LC_X4_Y1_N2
\WideNor0~0\ : maxii_lcell
-- Equation(s):
-- \WideNor0~0_combout\ = (count_command(3) & (((!count_command(2) & !count_command(1))) # (!count_command(4)))) # (!count_command(3) & ((count_command(2)) # ((count_command(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "57ee",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => count_command(3),
	datab => count_command(2),
	datac => count_command(1),
	datad => count_command(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideNor0~0_combout\);

-- Location: LC_X3_Y1_N2
\Selector7~0\ : maxii_lcell
-- Equation(s):
-- \Selector7~0_combout\ = (((!count_command(4) & !count_command(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => count_command(4),
	datad => count_command(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector7~0_combout\);

-- Location: LC_X3_Y1_N0
\process_0~0\ : maxii_lcell
-- Equation(s):
-- \process_0~0_combout\ = (count_command(3)) # (((!count_command(0) & !count_command(1))) # (!\Selector7~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cdff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => count_command(0),
	datab => count_command(3),
	datac => count_command(1),
	datad => \Selector7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process_0~0_combout\);

-- Location: LC_X3_Y1_N1
WideNor0 : maxii_lcell
-- Equation(s):
-- \WideNor0~combout\ = (((!\WideNor0~0_combout\ & \process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \WideNor0~0_combout\,
	datad => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideNor0~combout\);

-- Location: LC_X4_Y3_N9
\Selector37~0\ : maxii_lcell
-- Equation(s):
-- \Selector37~0_combout\ = ((\current_state.init_lcd~regout\) # ((\count_time[3]~0_combout\) # (\Selector38~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \current_state.init_lcd~regout\,
	datac => \count_time[3]~0_combout\,
	datad => \Selector38~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector37~0_combout\);

-- Location: LC_X4_Y3_N1
\current_state.receive_data\ : maxii_lcell
-- Equation(s):
-- \current_state.receive_data~regout\ = DFFEAS(((\current_state.init_lcd~regout\ & (count_command(0) & \Equal14~1_combout\))), GLOBAL(\clk_in~combout\), VCC, , \Selector37~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~combout\,
	datab => \current_state.init_lcd~regout\,
	datac => count_command(0),
	datad => \Equal14~1_combout\,
	aclr => GND,
	ena => \Selector37~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \current_state.receive_data~regout\);

-- Location: LC_X5_Y3_N3
\Equal49~7\ : maxii_lcell
-- Equation(s):
-- \Equal49~7_combout\ = (!\Add0~0_combout\ & (((\Add0~90_combout\ & \Add0~85_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datac => \Add0~90_combout\,
	datad => \Add0~85_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal49~7_combout\);

-- Location: LC_X5_Y3_N1
\Equal0~6\ : maxii_lcell
-- Equation(s):
-- \Equal0~6_combout\ = (((!\Add0~120_combout\ & !\Add0~115_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \Add0~120_combout\,
	datad => \Add0~115_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~6_combout\);

-- Location: LC_X4_Y2_N0
\Equal49~0\ : maxii_lcell
-- Equation(s):
-- \Equal49~0_combout\ = ((\Add0~105_combout\ & ((\Add0~100_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Add0~105_combout\,
	datad => \Add0~100_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal49~0_combout\);

-- Location: LC_X6_Y3_N3
\Equal49~4\ : maxii_lcell
-- Equation(s):
-- \Equal49~4_combout\ = (!\Add0~50_combout\ & (\Add0~60_combout\ & (\Add0~35_combout\ & \Add0~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~50_combout\,
	datab => \Add0~60_combout\,
	datac => \Add0~35_combout\,
	datad => \Add0~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal49~4_combout\);

-- Location: LC_X6_Y3_N9
\Equal49~1\ : maxii_lcell
-- Equation(s):
-- \Equal49~1_combout\ = (((\Add0~30_combout\ & !\Add0~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \Add0~30_combout\,
	datad => \Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal49~1_combout\);

-- Location: LC_X6_Y3_N0
\Equal49~5\ : maxii_lcell
-- Equation(s):
-- \Equal49~5_combout\ = (\Add0~10_combout\ & (\Add0~15_combout\ & (!\Add0~40_combout\ & \Add0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0800",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~10_combout\,
	datab => \Add0~15_combout\,
	datac => \Add0~40_combout\,
	datad => \Add0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal49~5_combout\);

-- Location: LC_X6_Y3_N4
\Equal49~2\ : maxii_lcell
-- Equation(s):
-- \Equal49~2_combout\ = (!\Add0~65_combout\ & (!\Add0~95_combout\ & (!\Add0~55_combout\ & !\Add0~110_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~65_combout\,
	datab => \Add0~95_combout\,
	datac => \Add0~55_combout\,
	datad => \Add0~110_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal49~2_combout\);

-- Location: LC_X6_Y3_N7
\Equal49~3\ : maxii_lcell
-- Equation(s):
-- \Equal49~3_combout\ = (\Add0~75_combout\ & (\Add0~70_combout\ & (\Equal49~2_combout\ & \LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~75_combout\,
	datab => \Add0~70_combout\,
	datac => \Equal49~2_combout\,
	datad => \LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal49~3_combout\);

-- Location: LC_X6_Y3_N8
\Equal49~6\ : maxii_lcell
-- Equation(s):
-- \Equal49~6_combout\ = (\Equal49~4_combout\ & (\Equal49~1_combout\ & (\Equal49~5_combout\ & \Equal49~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Equal49~4_combout\,
	datab => \Equal49~1_combout\,
	datac => \Equal49~5_combout\,
	datad => \Equal49~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal49~6_combout\);

-- Location: LC_X5_Y3_N2
\Equal49~8\ : maxii_lcell
-- Equation(s):
-- \Equal49~8_combout\ = (\Equal49~7_combout\ & (\Equal0~6_combout\ & (\Equal49~0_combout\ & \Equal49~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Equal49~7_combout\,
	datab => \Equal0~6_combout\,
	datac => \Equal49~0_combout\,
	datad => \Equal49~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal49~8_combout\);

-- Location: LC_X7_Y2_N9
\Selector38~0\ : maxii_lcell
-- Equation(s):
-- \Selector38~0_combout\ = ((!\Add0~25_combout\ & (!\Add0~30_combout\ & \LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0300",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Add0~25_combout\,
	datac => \Add0~30_combout\,
	datad => \LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector38~0_combout\);

-- Location: LC_X5_Y3_N4
\Selector38~1\ : maxii_lcell
-- Equation(s):
-- \Selector38~1_combout\ = (((!\Add0~60_combout\ & !\Add0~55_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \Add0~60_combout\,
	datad => \Add0~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector38~1_combout\);

-- Location: LC_X5_Y3_N5
\Equal1~1\ : maxii_lcell
-- Equation(s):
-- \Equal1~1_combout\ = (((\Add0~0_combout\ & \Add0~110_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \Add0~0_combout\,
	datad => \Add0~110_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal1~1_combout\);

-- Location: LC_X5_Y3_N6
\Selector38~2\ : maxii_lcell
-- Equation(s):
-- \Selector38~2_combout\ = (\Add0~120_combout\ & (\Add0~105_combout\ & (\Add0~90_combout\ & \Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~120_combout\,
	datab => \Add0~105_combout\,
	datac => \Add0~90_combout\,
	datad => \Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector38~2_combout\);

-- Location: LC_X5_Y3_N7
\Selector38~3\ : maxii_lcell
-- Equation(s):
-- \Selector38~3_combout\ = (\Add0~75_combout\) # ((\Add0~70_combout\ & ((\Selector38~2_combout\) # (!\Selector38~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eece",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~70_combout\,
	datab => \Add0~75_combout\,
	datac => \Selector38~1_combout\,
	datad => \Selector38~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector38~3_combout\);

-- Location: LC_X4_Y3_N6
\Selector38~4\ : maxii_lcell
-- Equation(s):
-- \Selector38~4_combout\ = (\Add0~35_combout\) # ((\Add0~50_combout\ & ((\Add0~45_combout\) # (\Selector38~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "faea",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~35_combout\,
	datab => \Add0~45_combout\,
	datac => \Add0~50_combout\,
	datad => \Selector38~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector38~4_combout\);

-- Location: LC_X4_Y3_N7
\Selector38~5\ : maxii_lcell
-- Equation(s):
-- \Selector38~5_combout\ = ((\Add0~80_combout\ & ((\Add0~40_combout\) # (\Selector38~4_combout\)))) # (!\Selector38~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "af8f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~80_combout\,
	datab => \Add0~40_combout\,
	datac => \Selector38~0_combout\,
	datad => \Selector38~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector38~5_combout\);

-- Location: LC_X4_Y3_N8
\Selector38~6\ : maxii_lcell
-- Equation(s):
-- \Selector38~6_combout\ = (\current_state.lcd_delay~regout\ & ((\current_state.receive_data~regout\ & (\Equal49~8_combout\)) # (!\current_state.receive_data~regout\ & ((\Selector38~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a280",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.lcd_delay~regout\,
	datab => \current_state.receive_data~regout\,
	datac => \Equal49~8_combout\,
	datad => \Selector38~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector38~6_combout\);

-- Location: LC_X4_Y3_N4
\current_state.init_lcd\ : maxii_lcell
-- Equation(s):
-- \current_state.init_lcd~regout\ = DFFEAS((\current_state.init_lcd~regout\ & (((\WideNor0~combout\)))) # (!\current_state.init_lcd~regout\ & ((\count_time[3]~0_combout\) # ((\Selector38~6_combout\)))), GLOBAL(\clk_in~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3e2",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~combout\,
	dataa => \count_time[3]~0_combout\,
	datab => \current_state.init_lcd~regout\,
	datac => \WideNor0~combout\,
	datad => \Selector38~6_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \current_state.init_lcd~regout\);

-- Location: LC_X4_Y1_N9
\count_command[4]\ : maxii_lcell
-- Equation(s):
-- count_command(4) = DFFEAS(((\count_command[3]~3\ $ (count_command(4)))), GLOBAL(\clk_in~combout\), VCC, , \current_state.init_lcd~regout\, , , , )

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~combout\,
	datad => count_command(4),
	aclr => GND,
	ena => \current_state.init_lcd~regout\,
	cin0 => \count_command[3]~3\,
	cin1 => \count_command[3]~3COUT1_19\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count_command(4));

-- Location: LC_X7_Y4_N5
\Equal14~1\ : maxii_lcell
-- Equation(s):
-- \Equal14~1_combout\ = (count_command(4) & (!count_command(2) & (!count_command(1) & count_command(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0200",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => count_command(4),
	datab => count_command(2),
	datac => count_command(1),
	datad => count_command(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal14~1_combout\);

-- Location: LC_X4_Y1_N1
\count_command~8\ : maxii_lcell
-- Equation(s):
-- \count_command~8_combout\ = (((count_command(0) & !\Equal14~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => count_command(0),
	datad => \Equal14~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \count_command~8_combout\);

-- Location: LC_X4_Y1_N0
\count_command[0]\ : maxii_lcell
-- Equation(s):
-- count_command(0) = DFFEAS((((!\count_command~8_combout\))), GLOBAL(\clk_in~combout\), VCC, , \current_state.init_lcd~regout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~combout\,
	datad => \count_command~8_combout\,
	aclr => GND,
	ena => \current_state.init_lcd~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count_command(0));

-- Location: LC_X3_Y2_N6
\Selector8~1\ : maxii_lcell
-- Equation(s):
-- \Selector8~1_combout\ = (count_command(2) & (((!count_command(4) & count_command(3))))) # (!count_command(2) & (((count_command(4) & !count_command(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0a50",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => count_command(2),
	datac => count_command(4),
	datad => count_command(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector8~1_combout\);

-- Location: LC_X3_Y2_N5
\Selector8~2\ : maxii_lcell
-- Equation(s):
-- \Selector8~2_combout\ = (count_command(0) & (count_command(1) & (\Selector8~1_combout\))) # (!count_command(0) & ((\Equal14~1_combout\) # ((count_command(1) & \Selector8~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d5c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => count_command(0),
	datab => count_command(1),
	datac => \Selector8~1_combout\,
	datad => \Equal14~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector8~2_combout\);

-- Location: LC_X3_Y2_N0
\Equal14~0\ : maxii_lcell
-- Equation(s):
-- \Equal14~0_combout\ = (count_command(2) & (count_command(1) & (count_command(4) & !count_command(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0080",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => count_command(2),
	datab => count_command(1),
	datac => count_command(4),
	datad => count_command(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal14~0_combout\);

-- Location: LC_X7_Y1_N2
\Equal14~4\ : maxii_lcell
-- Equation(s):
-- \Equal14~4_combout\ = (!count_command(3) & (!count_command(1) & (count_command(4) & count_command(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => count_command(3),
	datab => count_command(1),
	datac => count_command(4),
	datad => count_command(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal14~4_combout\);

-- Location: LC_X7_Y1_N5
\Selector3~10\ : maxii_lcell
-- Equation(s):
-- \Selector3~10_combout\ = (count_command(3) & (!count_command(4) & ((!count_command(2)) # (!count_command(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "020a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => count_command(3),
	datab => count_command(1),
	datac => count_command(4),
	datad => count_command(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector3~10_combout\);

-- Location: LC_X7_Y1_N9
\Equal14~3\ : maxii_lcell
-- Equation(s):
-- \Equal14~3_combout\ = (!count_command(3) & (!count_command(1) & (count_command(4) & !count_command(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => count_command(3),
	datab => count_command(1),
	datac => count_command(4),
	datad => count_command(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal14~3_combout\);

-- Location: LC_X7_Y1_N8
\Selector3~8\ : maxii_lcell
-- Equation(s):
-- \Selector3~8_combout\ = (!\Selector3~10_combout\ & ((count_command(0)) # ((!\Equal14~4_combout\ & !\Equal14~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0a0b",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => count_command(0),
	datab => \Equal14~4_combout\,
	datac => \Selector3~10_combout\,
	datad => \Equal14~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector3~8_combout\);

-- Location: LC_X3_Y1_N3
\Selector8~0\ : maxii_lcell
-- Equation(s):
-- \Selector8~0_combout\ = (\RS~reg0_regout\ & ((\Equal14~2_combout\) # ((\process_0~0_combout\ & !\WideNor0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa08",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RS~reg0_regout\,
	datab => \process_0~0_combout\,
	datac => \WideNor0~0_combout\,
	datad => \Equal14~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector8~0_combout\);

-- Location: LC_X3_Y1_N4
\RS~reg0\ : maxii_lcell
-- Equation(s):
-- \RS~reg0_regout\ = DFFEAS((\Selector8~2_combout\) # ((\Equal14~0_combout\) # ((\Selector8~0_combout\) # (!\Selector3~8_combout\))), GLOBAL(\clk_in~combout\), VCC, , \current_state.init_lcd~regout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffef",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~combout\,
	dataa => \Selector8~2_combout\,
	datab => \Equal14~0_combout\,
	datac => \Selector3~8_combout\,
	datad => \Selector8~0_combout\,
	aclr => GND,
	ena => \current_state.init_lcd~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RS~reg0_regout\);

-- Location: LC_X4_Y3_N5
\Selector9~1\ : maxii_lcell
-- Equation(s):
-- \Selector9~1_combout\ = ((count_command(4) & (count_command(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => count_command(4),
	datac => count_command(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector9~1_combout\);

-- Location: LC_X4_Y3_N3
\Selector9~0\ : maxii_lcell
-- Equation(s):
-- \Selector9~0_combout\ = (count_command(3) & (((!count_command(1) & !count_command(0))) # (!count_command(4)))) # (!count_command(3) & (((count_command(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "37cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => count_command(1),
	datab => count_command(3),
	datac => count_command(0),
	datad => count_command(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector9~0_combout\);

-- Location: LC_X4_Y3_N2
\current_state.lcd_clock_en\ : maxii_lcell
-- Equation(s):
-- \current_state.lcd_clock_en~regout\ = DFFEAS(((count_command(2) & (!\Selector9~1_combout\)) # (!count_command(2) & ((\Selector9~0_combout\)))) # (!\process_0~0_combout\), GLOBAL(\clk_in~combout\), VCC, , \Selector37~0_combout\, , , 
-- !\current_state.init_lcd~regout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7f4f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~combout\,
	dataa => \Selector9~1_combout\,
	datab => count_command(2),
	datac => \process_0~0_combout\,
	datad => \Selector9~0_combout\,
	aclr => GND,
	sclr => \ALT_INV_current_state.init_lcd~regout\,
	ena => \Selector37~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \current_state.lcd_clock_en~regout\);

-- Location: LC_X5_Y3_N8
\Equal0~4\ : maxii_lcell
-- Equation(s):
-- \Equal0~4_combout\ = (!\Add0~65_combout\ & (!\Add0~75_combout\ & (!\Add0~70_combout\ & !\Add0~80_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~65_combout\,
	datab => \Add0~75_combout\,
	datac => \Add0~70_combout\,
	datad => \Add0~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~4_combout\);

-- Location: LC_X5_Y3_N0
\Equal0~5\ : maxii_lcell
-- Equation(s):
-- \Equal0~5_combout\ = (!\Add0~90_combout\ & (!\Add0~85_combout\ & (\Selector38~1_combout\ & \Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~90_combout\,
	datab => \Add0~85_combout\,
	datac => \Selector38~1_combout\,
	datad => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~5_combout\);

-- Location: LC_X5_Y1_N1
\Equal1~0\ : maxii_lcell
-- Equation(s):
-- \Equal1~0_combout\ = (!\Add0~95_combout\ & (\Selector38~0_combout\ & (\Equal0~5_combout\ & \LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~95_combout\,
	datab => \Selector38~0_combout\,
	datac => \Equal0~5_combout\,
	datad => \LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal1~0_combout\);

-- Location: LC_X5_Y1_N2
\Equal0~9\ : maxii_lcell
-- Equation(s):
-- \Equal0~9_combout\ = (\Add0~100_combout\ & (\Add0~105_combout\ & (!\Add0~110_combout\ & \Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0800",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~100_combout\,
	datab => \Add0~105_combout\,
	datac => \Add0~110_combout\,
	datad => \Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~9_combout\);

-- Location: LC_X5_Y1_N6
\Equal0~10\ : maxii_lcell
-- Equation(s):
-- \Equal0~10_combout\ = (!\Add0~120_combout\ & (\Add0~0_combout\ & (!\Add0~115_combout\ & \Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0400",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~120_combout\,
	datab => \Add0~0_combout\,
	datac => \Add0~115_combout\,
	datad => \Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~10_combout\);

-- Location: LC_X6_Y1_N7
\Equal1~2\ : maxii_lcell
-- Equation(s):
-- \Equal1~2_combout\ = (!\Add0~100_combout\ & (((!\Add0~105_combout\ & !\Add0~120_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0005",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~100_combout\,
	datac => \Add0~105_combout\,
	datad => \Add0~120_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal1~2_combout\);

-- Location: LC_X5_Y1_N0
\Equal1~3\ : maxii_lcell
-- Equation(s):
-- \Equal1~3_combout\ = (\Equal1~2_combout\ & (\Equal1~1_combout\ & (\Add0~115_combout\ & \Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~2_combout\,
	datab => \Equal1~1_combout\,
	datac => \Add0~115_combout\,
	datad => \Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal1~3_combout\);

-- Location: LC_X5_Y1_N4
\EN~reg0\ : maxii_lcell
-- Equation(s):
-- \EN~reg0_regout\ = DFFEAS((\current_state.lcd_clock_en~regout\ & (!\Equal1~3_combout\ & ((\EN~reg0_regout\) # (\Equal0~10_combout\)))) # (!\current_state.lcd_clock_en~regout\ & (\EN~reg0_regout\)), GLOBAL(\clk_in~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "44ec",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~combout\,
	dataa => \current_state.lcd_clock_en~regout\,
	datab => \EN~reg0_regout\,
	datac => \Equal0~10_combout\,
	datad => \Equal1~3_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \EN~reg0_regout\);

-- Location: PIN_54,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_in[7]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_data_in(7),
	combout => \data_in~combout\(7));

-- Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_in[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_data_in(4),
	combout => \data_in~combout\(4));

-- Location: PIN_49,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_in[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_data_in(2),
	combout => \data_in~combout\(2));

-- Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_in[6]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_data_in(6),
	combout => \data_in~combout\(6));

-- Location: LC_X2_Y3_N8
\ten_digit~0\ : maxii_lcell
-- Equation(s):
-- \ten_digit~0_combout\ = (\data_in~combout\(4) & (\data_in~combout\(7) $ (((!\data_in~combout\(2) & !\data_in~combout\(6)))))) # (!\data_in~combout\(4) & ((\data_in~combout\(7)) # ((\data_in~combout\(2) & \data_in~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "baa6",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \data_in~combout\(7),
	datab => \data_in~combout\(4),
	datac => \data_in~combout\(2),
	datad => \data_in~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ten_digit~0_combout\);

-- Location: PIN_50,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_in[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_data_in(3),
	combout => \data_in~combout\(3));

-- Location: PIN_52,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_in[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_data_in(5),
	combout => \data_in~combout\(5));

-- Location: LC_X3_Y4_N9
\ten_digit~7\ : maxii_lcell
-- Equation(s):
-- \ten_digit~7_combout\ = \data_in~combout\(3) $ ((((\data_in~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "55aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \data_in~combout\(3),
	datad => \data_in~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ten_digit~7_combout\);

-- Location: LC_X5_Y4_N9
\ten_digit~4\ : maxii_lcell
-- Equation(s):
-- \ten_digit~4_combout\ = \data_in~combout\(5) $ (((\data_in~combout\(2) & ((\data_in~combout\(6)) # (!\data_in~combout\(4)))) # (!\data_in~combout\(2) & (!\data_in~combout\(4) & \data_in~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "65a6",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \data_in~combout\(5),
	datab => \data_in~combout\(2),
	datac => \data_in~combout\(4),
	datad => \data_in~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ten_digit~4_combout\);

-- Location: LC_X5_Y4_N4
\ten_digit~5\ : maxii_lcell
-- Equation(s):
-- \ten_digit~5_combout\ = (\data_in~combout\(2) & (\data_in~combout\(5) & ((\data_in~combout\(4)) # (!\data_in~combout\(6))))) # (!\data_in~combout\(2) & (\data_in~combout\(5) $ (((\data_in~combout\(4) & !\data_in~combout\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a29a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \data_in~combout\(5),
	datab => \data_in~combout\(2),
	datac => \data_in~combout\(4),
	datad => \data_in~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ten_digit~5_combout\);

-- Location: LC_X5_Y4_N6
\ten_digit~6\ : maxii_lcell
-- Equation(s):
-- \ten_digit~6_combout\ = (\data_in~combout\(3) & ((\ten_digit~4_combout\ & (!\data_in~combout\(7) & !\ten_digit~5_combout\)) # (!\ten_digit~4_combout\ & (\data_in~combout\(7))))) # (!\data_in~combout\(3) & ((\data_in~combout\(7) & (\ten_digit~4_combout\ & 
-- !\ten_digit~5_combout\)) # (!\data_in~combout\(7) & ((\ten_digit~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2568",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \data_in~combout\(3),
	datab => \ten_digit~4_combout\,
	datac => \data_in~combout\(7),
	datad => \ten_digit~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ten_digit~6_combout\);

-- Location: LC_X2_Y3_N2
\ten_digit~2\ : maxii_lcell
-- Equation(s):
-- \ten_digit~2_combout\ = (\data_in~combout\(7) & ((\data_in~combout\(4) & (\data_in~combout\(2) & \data_in~combout\(6))) # (!\data_in~combout\(4) & ((\data_in~combout\(2)) # (\data_in~combout\(6)))))) # (!\data_in~combout\(7) & (\data_in~combout\(4) & 
-- (!\data_in~combout\(2) & !\data_in~combout\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a224",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \data_in~combout\(7),
	datab => \data_in~combout\(4),
	datac => \data_in~combout\(2),
	datad => \data_in~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ten_digit~2_combout\);

-- Location: LC_X2_Y3_N4
\ten_digit~1\ : maxii_lcell
-- Equation(s):
-- \ten_digit~1_combout\ = (\data_in~combout\(4) & (\data_in~combout\(7) & ((\data_in~combout\(2)) # (\data_in~combout\(6))))) # (!\data_in~combout\(4) & (\data_in~combout\(7) $ (((\data_in~combout\(2) & \data_in~combout\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9aa2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \data_in~combout\(7),
	datab => \data_in~combout\(4),
	datac => \data_in~combout\(2),
	datad => \data_in~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ten_digit~1_combout\);

-- Location: LC_X2_Y3_N3
\ten_digit~3\ : maxii_lcell
-- Equation(s):
-- \ten_digit~3_combout\ = ((\data_in~combout\(5) & ((\ten_digit~1_combout\))) # (!\data_in~combout\(5) & (\ten_digit~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \ten_digit~2_combout\,
	datac => \ten_digit~1_combout\,
	datad => \data_in~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ten_digit~3_combout\);

-- Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_in[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_data_in(1),
	combout => \data_in~combout\(1));

-- Location: LC_X4_Y2_N4
\BUZZER~0\ : maxii_lcell
-- Equation(s):
-- \BUZZER~0_combout\ = (\Add0~115_combout\ & (\Equal49~0_combout\ & (\Add0~120_combout\ & \current_state.receive_data~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~115_combout\,
	datab => \Equal49~0_combout\,
	datac => \Add0~120_combout\,
	datad => \current_state.receive_data~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \BUZZER~0_combout\);

-- Location: LC_X5_Y3_N9
\Equal0~8\ : maxii_lcell
-- Equation(s):
-- \Equal0~8_combout\ = (((!\Add0~90_combout\ & !\Add0~85_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \Add0~90_combout\,
	datad => \Add0~85_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~8_combout\);

-- Location: LC_X3_Y3_N2
\BUZZER~1\ : maxii_lcell
-- Equation(s):
-- \BUZZER~1_combout\ = (\Add0~0_combout\ & (\BUZZER~0_combout\ & (\Equal0~8_combout\ & \Equal49~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \BUZZER~0_combout\,
	datac => \Equal0~8_combout\,
	datad => \Equal49~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \BUZZER~1_combout\);

-- Location: LC_X2_Y3_N6
\ten_digit[0]\ : maxii_lcell
-- Equation(s):
-- ten_digit(0) = DFFEAS((\ten_digit~7_combout\ & (((!\ten_digit~3_combout\)))) # (!\ten_digit~7_combout\ & (\ten_digit~0_combout\)), GLOBAL(\clk_in~combout\), VCC, , \BUZZER~1_combout\, \ten_digit~6_combout\, , , !\data_in~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "22ee",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~combout\,
	dataa => \ten_digit~0_combout\,
	datab => \ten_digit~7_combout\,
	datac => \ten_digit~6_combout\,
	datad => \ten_digit~3_combout\,
	aclr => GND,
	sload => \ALT_INV_data_in~combout\(1),
	ena => \BUZZER~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => ten_digit(0));

-- Location: LC_X3_Y1_N5
\Selector7~2\ : maxii_lcell
-- Equation(s):
-- \Selector7~2_combout\ = (((count_command(1) & count_command(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => count_command(1),
	datad => count_command(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector7~2_combout\);

-- Location: LC_X3_Y1_N7
\Selector7~3\ : maxii_lcell
-- Equation(s):
-- \Selector7~3_combout\ = (ten_digit(0) & ((\Equal14~0_combout\) # ((\Selector7~2_combout\ & \Selector7~0_combout\)))) # (!ten_digit(0) & (((\Selector7~2_combout\ & \Selector7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f888",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => ten_digit(0),
	datab => \Equal14~0_combout\,
	datac => \Selector7~2_combout\,
	datad => \Selector7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector7~3_combout\);

-- Location: LC_X3_Y1_N8
\WideOr15~0\ : maxii_lcell
-- Equation(s):
-- \WideOr15~0_combout\ = (count_command(4) & (!count_command(3) & ((count_command(2)) # (count_command(0))))) # (!count_command(4) & (count_command(3) $ (((count_command(2) & count_command(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "13e8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => count_command(2),
	datab => count_command(4),
	datac => count_command(0),
	datad => count_command(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideOr15~0_combout\);

-- Location: LC_X3_Y1_N6
\Selector7~1\ : maxii_lcell
-- Equation(s):
-- \Selector7~1_combout\ = (\WideOr15~0_combout\ & (((\data_or_command[0]~reg0_regout\ & \Equal14~2_combout\)) # (!count_command(1)))) # (!\WideOr15~0_combout\ & (\data_or_command[0]~reg0_regout\ & ((\Equal14~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ce0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr15~0_combout\,
	datab => \data_or_command[0]~reg0_regout\,
	datac => count_command(1),
	datad => \Equal14~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector7~1_combout\);

-- Location: LC_X3_Y3_N9
\LessThan5~1\ : maxii_lcell
-- Equation(s):
-- \LessThan5~1_combout\ = (\data_in~combout\(4)) # (((\data_in~combout\(5)) # (\data_in~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \data_in~combout\(4),
	datac => \data_in~combout\(5),
	datad => \data_in~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan5~1_combout\);

-- Location: LC_X4_Y4_N8
\LessThan6~0\ : maxii_lcell
-- Equation(s):
-- \LessThan6~0_combout\ = (\data_in~combout\(3)) # (((\data_in~combout\(4)) # (\data_in~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \data_in~combout\(3),
	datac => \data_in~combout\(4),
	datad => \data_in~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan6~0_combout\);

-- Location: LC_X3_Y3_N5
\hundred_digit[0]\ : maxii_lcell
-- Equation(s):
-- hundred_digit(0) = DFFEAS((\data_in~combout\(7) & (((!\LessThan5~1_combout\)))) # (!\data_in~combout\(7) & (\data_in~combout\(5) & ((\LessThan6~0_combout\)))), GLOBAL(\clk_in~combout\), VCC, , \BUZZER~1_combout\, \data_in~combout\(7), , , 
-- !\data_in~combout\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3a30",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~combout\,
	dataa => \data_in~combout\(5),
	datab => \LessThan5~1_combout\,
	datac => \data_in~combout\(7),
	datad => \LessThan6~0_combout\,
	aclr => GND,
	sload => \ALT_INV_data_in~combout\(6),
	ena => \BUZZER~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => hundred_digit(0));

-- Location: PIN_47,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_in[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_data_in(0),
	combout => \data_in~combout\(0));

-- Location: LC_X3_Y2_N8
\unit_digit[0]\ : maxii_lcell
-- Equation(s):
-- \Selector7~4\ = (hundred_digit(0) & ((\Equal14~0_combout\) # ((unit_digit[0] & \Equal14~1_combout\)))) # (!hundred_digit(0) & (((unit_digit[0] & \Equal14~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f888",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~combout\,
	dataa => hundred_digit(0),
	datab => \Equal14~0_combout\,
	datac => \data_in~combout\(0),
	datad => \Equal14~1_combout\,
	aclr => GND,
	sload => VCC,
	ena => \BUZZER~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector7~4\,
	regout => unit_digit(0));

-- Location: LC_X3_Y1_N9
\data_or_command[0]~reg0\ : maxii_lcell
-- Equation(s):
-- \data_or_command[0]~reg0_regout\ = DFFEAS((\Selector7~1_combout\) # ((count_command(0) & (\Selector7~3_combout\)) # (!count_command(0) & ((\Selector7~4\)))), GLOBAL(\clk_in~combout\), VCC, , \current_state.init_lcd~regout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fdf8",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~combout\,
	dataa => count_command(0),
	datab => \Selector7~3_combout\,
	datac => \Selector7~1_combout\,
	datad => \Selector7~4\,
	aclr => GND,
	ena => \current_state.init_lcd~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_or_command[0]~reg0_regout\);

-- Location: LC_X6_Y4_N4
\Selector6~0\ : maxii_lcell
-- Equation(s):
-- \Selector6~0_combout\ = (((count_command(0) & \Equal14~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => count_command(0),
	datad => \Equal14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector6~0_combout\);

-- Location: LC_X6_Y4_N7
\WideOr13~0\ : maxii_lcell
-- Equation(s):
-- \WideOr13~0_combout\ = (!count_command(4) & (count_command(3) & ((count_command(0)) # (!count_command(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5100",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => count_command(4),
	datab => count_command(2),
	datac => count_command(0),
	datad => count_command(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideOr13~0_combout\);

-- Location: LC_X3_Y4_N5
\ten_digit~8\ : maxii_lcell
-- Equation(s):
-- \ten_digit~8_combout\ = (\data_in~combout\(5) & ((\data_in~combout\(7) & (!\data_in~combout\(3))) # (!\data_in~combout\(7) & ((!\data_in~combout\(6)))))) # (!\data_in~combout\(5) & (\data_in~combout\(7) $ (((!\data_in~combout\(3) & 
-- \data_in~combout\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "497c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \data_in~combout\(3),
	datab => \data_in~combout\(7),
	datac => \data_in~combout\(5),
	datad => \data_in~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ten_digit~8_combout\);

-- Location: LC_X3_Y4_N2
\ten_digit~9\ : maxii_lcell
-- Equation(s):
-- \ten_digit~9_combout\ = (\data_in~combout\(5) & ((\data_in~combout\(3) & ((\data_in~combout\(7)) # (!\data_in~combout\(6)))) # (!\data_in~combout\(3) & (\data_in~combout\(7) $ (\data_in~combout\(6)))))) # (!\data_in~combout\(5) & (\data_in~combout\(6) & 
-- ((\data_in~combout\(3)) # (\data_in~combout\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9ee0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \data_in~combout\(3),
	datab => \data_in~combout\(7),
	datac => \data_in~combout\(5),
	datad => \data_in~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ten_digit~9_combout\);

-- Location: LC_X3_Y3_N1
\ten_digit~17\ : maxii_lcell
-- Equation(s):
-- \ten_digit~17_combout\ = (\data_in~combout\(3) & ((\data_in~combout\(4) & ((\data_in~combout\(2)) # (!\ten_digit~9_combout\))) # (!\data_in~combout\(4) & ((\ten_digit~9_combout\) # (!\data_in~combout\(2)))))) # (!\data_in~combout\(3) & 
-- (\ten_digit~9_combout\ $ (((\data_in~combout\(2)) # (!\data_in~combout\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cb6d",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \data_in~combout\(4),
	datab => \data_in~combout\(3),
	datac => \ten_digit~9_combout\,
	datad => \data_in~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ten_digit~17_combout\);

-- Location: LC_X3_Y3_N0
\ten_digit[1]\ : maxii_lcell
-- Equation(s):
-- ten_digit(1) = DFFEAS((\ten_digit~17_combout\ & (\ten_digit~8_combout\ $ (\ten_digit~9_combout\ $ (\data_in~combout\(4))))) # (!\ten_digit~17_combout\ & (\ten_digit~8_combout\ & (\ten_digit~9_combout\ & !\data_in~combout\(4)))), GLOBAL(\clk_in~combout\), 
-- VCC, , \BUZZER~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8468",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~combout\,
	dataa => \ten_digit~8_combout\,
	datab => \ten_digit~17_combout\,
	datac => \ten_digit~9_combout\,
	datad => \data_in~combout\(4),
	aclr => GND,
	ena => \BUZZER~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => ten_digit(1));

-- Location: LC_X4_Y4_N7
\unit_digit~0\ : maxii_lcell
-- Equation(s):
-- \unit_digit~0_combout\ = (\data_in~combout\(6) & ((\data_in~combout\(7)) # ((\data_in~combout\(2) & !\data_in~combout\(4))))) # (!\data_in~combout\(6) & (\data_in~combout\(7) $ (((!\data_in~combout\(2) & \data_in~combout\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ef18",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \data_in~combout\(6),
	datab => \data_in~combout\(2),
	datac => \data_in~combout\(4),
	datad => \data_in~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \unit_digit~0_combout\);

-- Location: LC_X5_Y4_N2
\unit_digit~4\ : maxii_lcell
-- Equation(s):
-- \unit_digit~4_combout\ = (\data_in~combout\(2) & ((\data_in~combout\(4) & ((\data_in~combout\(6)))) # (!\data_in~combout\(4) & ((!\data_in~combout\(6)) # (!\data_in~combout\(5)))))) # (!\data_in~combout\(2) & ((\data_in~combout\(4) $ 
-- (\data_in~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c73c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \data_in~combout\(5),
	datab => \data_in~combout\(2),
	datac => \data_in~combout\(4),
	datad => \data_in~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \unit_digit~4_combout\);

-- Location: LC_X5_Y4_N7
\unit_digit~5\ : maxii_lcell
-- Equation(s):
-- \unit_digit~5_combout\ = (\data_in~combout\(2) & (\data_in~combout\(5) & ((\data_in~combout\(4)) # (!\data_in~combout\(6))))) # (!\data_in~combout\(2) & (\data_in~combout\(5) $ (((\data_in~combout\(4) & !\data_in~combout\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a29a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \data_in~combout\(5),
	datab => \data_in~combout\(2),
	datac => \data_in~combout\(4),
	datad => \data_in~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \unit_digit~5_combout\);

-- Location: LC_X5_Y4_N3
\unit_digit~6\ : maxii_lcell
-- Equation(s):
-- \unit_digit~6_combout\ = (\unit_digit~4_combout\ & (\data_in~combout\(3) $ (\data_in~combout\(7) $ (\unit_digit~5_combout\)))) # (!\unit_digit~4_combout\ & ((\data_in~combout\(3) & (\data_in~combout\(7) & !\unit_digit~5_combout\)) # (!\data_in~combout\(3) 
-- & (!\data_in~combout\(7) & \unit_digit~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8568",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \data_in~combout\(3),
	datab => \unit_digit~4_combout\,
	datac => \data_in~combout\(7),
	datad => \unit_digit~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \unit_digit~6_combout\);

-- Location: LC_X5_Y4_N5
\unit_digit~1\ : maxii_lcell
-- Equation(s):
-- \unit_digit~1_combout\ = (\data_in~combout\(7) & ((\data_in~combout\(2) & ((\data_in~combout\(6)) # (!\data_in~combout\(4)))) # (!\data_in~combout\(2) & (!\data_in~combout\(4) & \data_in~combout\(6))))) # (!\data_in~combout\(7) & (!\data_in~combout\(2) & 
-- (\data_in~combout\(4) & !\data_in~combout\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8a18",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \data_in~combout\(7),
	datab => \data_in~combout\(2),
	datac => \data_in~combout\(4),
	datad => \data_in~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \unit_digit~1_combout\);

-- Location: LC_X5_Y4_N1
\unit_digit~2\ : maxii_lcell
-- Equation(s):
-- \unit_digit~2_combout\ = (\data_in~combout\(2) & (\data_in~combout\(7) $ (((!\data_in~combout\(4) & \data_in~combout\(6)))))) # (!\data_in~combout\(2) & (\data_in~combout\(7) & ((\data_in~combout\(6)) # (!\data_in~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a68a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \data_in~combout\(7),
	datab => \data_in~combout\(2),
	datac => \data_in~combout\(4),
	datad => \data_in~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \unit_digit~2_combout\);

-- Location: LC_X5_Y4_N8
\unit_digit~3\ : maxii_lcell
-- Equation(s):
-- \unit_digit~3_combout\ = (\data_in~combout\(3) & (((\unit_digit~1_combout\)))) # (!\data_in~combout\(3) & (((\unit_digit~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f5a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \data_in~combout\(3),
	datac => \unit_digit~1_combout\,
	datad => \unit_digit~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \unit_digit~3_combout\);

-- Location: LC_X2_Y3_N1
\unit_digit[1]\ : maxii_lcell
-- Equation(s):
-- unit_digit(1) = DFFEAS((\ten_digit~7_combout\ & (((\unit_digit~3_combout\)))) # (!\ten_digit~7_combout\ & (!\unit_digit~0_combout\)), GLOBAL(\clk_in~combout\), VCC, , \BUZZER~1_combout\, \unit_digit~6_combout\, , , !\data_in~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dd11",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~combout\,
	dataa => \unit_digit~0_combout\,
	datab => \ten_digit~7_combout\,
	datac => \unit_digit~6_combout\,
	datad => \unit_digit~3_combout\,
	aclr => GND,
	sload => \ALT_INV_data_in~combout\(1),
	ena => \BUZZER~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => unit_digit(1));

-- Location: LC_X4_Y4_N3
\LessThan5~0\ : maxii_lcell
-- Equation(s):
-- \LessThan5~0_combout\ = (!\data_in~combout\(3) & (((!\data_in~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0505",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \data_in~combout\(3),
	datac => \data_in~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan5~0_combout\);

-- Location: LC_X3_Y3_N3
\hundred_digit[1]\ : maxii_lcell
-- Equation(s):
-- hundred_digit(1) = DFFEAS((\data_in~combout\(6) & (\data_in~combout\(7) & ((\data_in~combout\(5)) # (!\LessThan5~0_combout\)))), GLOBAL(\clk_in~combout\), VCC, , \BUZZER~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8088",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~combout\,
	dataa => \data_in~combout\(6),
	datab => \data_in~combout\(7),
	datac => \data_in~combout\(5),
	datad => \LessThan5~0_combout\,
	aclr => GND,
	ena => \BUZZER~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => hundred_digit(1));

-- Location: LC_X6_Y4_N1
\Selector6~1\ : maxii_lcell
-- Equation(s):
-- \Selector6~1_combout\ = (count_command(0) & (\data_or_command[1]~reg0_regout\)) # (!count_command(0) & (((hundred_digit(1) & \Equal14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aca0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \data_or_command[1]~reg0_regout\,
	datab => hundred_digit(1),
	datac => count_command(0),
	datad => \Equal14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector6~1_combout\);

-- Location: LC_X6_Y4_N2
\Selector6~2\ : maxii_lcell
-- Equation(s):
-- \Selector6~2_combout\ = (count_command(0) & (\Equal14~1_combout\ & ((\Selector6~1_combout\)))) # (!count_command(0) & ((\Selector6~1_combout\) # ((\Equal14~1_combout\ & unit_digit(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dd40",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => count_command(0),
	datab => \Equal14~1_combout\,
	datac => unit_digit(1),
	datad => \Selector6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector6~2_combout\);

-- Location: LC_X6_Y4_N3
\data_or_command[1]~reg0\ : maxii_lcell
-- Equation(s):
-- \data_or_command[1]~reg0_regout\ = DFFEAS((\WideOr13~0_combout\) # ((\Selector6~2_combout\) # ((\Selector6~0_combout\ & ten_digit(1)))), GLOBAL(\clk_in~combout\), VCC, , \current_state.init_lcd~regout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffec",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~combout\,
	dataa => \Selector6~0_combout\,
	datab => \WideOr13~0_combout\,
	datac => ten_digit(1),
	datad => \Selector6~2_combout\,
	aclr => GND,
	ena => \current_state.init_lcd~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_or_command[1]~reg0_regout\);

-- Location: LC_X3_Y4_N3
\unit_digit~8\ : maxii_lcell
-- Equation(s):
-- \unit_digit~8_combout\ = (\data_in~combout\(5) & (((\data_in~combout\(1))) # (!\data_in~combout\(7)))) # (!\data_in~combout\(5) & (!\data_in~combout\(7) & ((\data_in~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bb22",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \data_in~combout\(5),
	datab => \data_in~combout\(7),
	datad => \data_in~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \unit_digit~8_combout\);

-- Location: LC_X3_Y4_N7
\unit_digit~7\ : maxii_lcell
-- Equation(s):
-- \unit_digit~7_combout\ = (\data_in~combout\(5) & (!\data_in~combout\(7) & ((\data_in~combout\(1))))) # (!\data_in~combout\(5) & (\data_in~combout\(7) & ((!\data_in~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2244",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \data_in~combout\(5),
	datab => \data_in~combout\(7),
	datad => \data_in~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \unit_digit~7_combout\);

-- Location: LC_X3_Y4_N6
\unit_digit~9\ : maxii_lcell
-- Equation(s):
-- \unit_digit~9_combout\ = (\unit_digit~8_combout\ & ((\unit_digit~7_combout\ & (\data_in~combout\(3) $ (\data_in~combout\(6)))) # (!\unit_digit~7_combout\ & (!\data_in~combout\(3) & !\data_in~combout\(6))))) # (!\unit_digit~8_combout\ & 
-- (\unit_digit~7_combout\ $ ((\data_in~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1c96",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \unit_digit~8_combout\,
	datab => \unit_digit~7_combout\,
	datac => \data_in~combout\(3),
	datad => \data_in~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \unit_digit~9_combout\);

-- Location: LC_X3_Y4_N8
\unit_digit~10\ : maxii_lcell
-- Equation(s):
-- \unit_digit~10_combout\ = (\data_in~combout\(6) & ((\unit_digit~8_combout\ $ (!\data_in~combout\(3))) # (!\unit_digit~7_combout\))) # (!\data_in~combout\(6) & ((\data_in~combout\(3) & ((\unit_digit~7_combout\))) # (!\data_in~combout\(3) & 
-- (\unit_digit~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b7ca",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \unit_digit~8_combout\,
	datab => \unit_digit~7_combout\,
	datac => \data_in~combout\(3),
	datad => \data_in~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \unit_digit~10_combout\);

-- Location: LC_X3_Y3_N4
\unit_digit[2]\ : maxii_lcell
-- Equation(s):
-- unit_digit(2) = DFFEAS((\unit_digit~9_combout\ & ((\data_in~combout\(4) & (!\unit_digit~10_combout\ & !\data_in~combout\(2))) # (!\data_in~combout\(4) & (\unit_digit~10_combout\ & \data_in~combout\(2))))) # (!\unit_digit~9_combout\ & (\data_in~combout\(4) 
-- $ (\unit_digit~10_combout\ $ (\data_in~combout\(2))))), GLOBAL(\clk_in~combout\), VCC, , \BUZZER~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "611a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~combout\,
	dataa => \data_in~combout\(4),
	datab => \unit_digit~9_combout\,
	datac => \unit_digit~10_combout\,
	datad => \data_in~combout\(2),
	aclr => GND,
	ena => \BUZZER~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => unit_digit(2));

-- Location: LC_X6_Y4_N6
\Selector5~0\ : maxii_lcell
-- Equation(s):
-- \Selector5~0_combout\ = (\Equal14~1_combout\ & ((count_command(0) & ((\data_or_command[2]~reg0_regout\))) # (!count_command(0) & (unit_digit(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e400",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => count_command(0),
	datab => unit_digit(2),
	datac => \data_or_command[2]~reg0_regout\,
	datad => \Equal14~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector5~0_combout\);

-- Location: LC_X6_Y4_N8
\Selector5~2\ : maxii_lcell
-- Equation(s):
-- \Selector5~2_combout\ = (count_command(0) & (!count_command(1) & ((count_command(3)) # (!count_command(2))))) # (!count_command(0) & ((count_command(2)) # ((count_command(3) & count_command(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2f38",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => count_command(3),
	datab => count_command(1),
	datac => count_command(0),
	datad => count_command(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector5~2_combout\);

-- Location: LC_X6_Y4_N9
\Selector5~3\ : maxii_lcell
-- Equation(s):
-- \Selector5~3_combout\ = (\Selector5~2_combout\ & (count_command(4) $ (((count_command(3)) # (count_command(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1e00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => count_command(3),
	datab => count_command(1),
	datac => count_command(4),
	datad => \Selector5~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector5~3_combout\);

-- Location: LC_X2_Y3_N9
\ten_digit~11\ : maxii_lcell
-- Equation(s):
-- \ten_digit~11_combout\ = (\data_in~combout\(6) & (((!\data_in~combout\(5))))) # (!\data_in~combout\(6) & (\data_in~combout\(5) & ((\data_in~combout\(2)) # (!\data_in~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "51aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \data_in~combout\(6),
	datab => \data_in~combout\(4),
	datac => \data_in~combout\(2),
	datad => \data_in~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ten_digit~11_combout\);

-- Location: LC_X4_Y4_N1
\ten_digit~10\ : maxii_lcell
-- Equation(s):
-- \ten_digit~10_combout\ = (\data_in~combout\(6) & (((!\data_in~combout\(5))))) # (!\data_in~combout\(6) & ((\data_in~combout\(2) & (!\data_in~combout\(4) & !\data_in~combout\(5))) # (!\data_in~combout\(2) & (\data_in~combout\(4) & \data_in~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "10ae",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \data_in~combout\(6),
	datab => \data_in~combout\(2),
	datac => \data_in~combout\(4),
	datad => \data_in~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ten_digit~10_combout\);

-- Location: LC_X2_Y3_N7
\ten_digit~15\ : maxii_lcell
-- Equation(s):
-- \ten_digit~15_combout\ = (\data_in~combout\(7) & (\data_in~combout\(4) $ (((\ten_digit~10_combout\ & \data_in~combout\(3)))))) # (!\data_in~combout\(7) & ((\data_in~combout\(4)) # ((!\ten_digit~10_combout\ & \data_in~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7f90",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \data_in~combout\(7),
	datab => \ten_digit~10_combout\,
	datac => \data_in~combout\(3),
	datad => \data_in~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ten_digit~15_combout\);

-- Location: LC_X2_Y3_N5
\ten_digit[2]\ : maxii_lcell
-- Equation(s):
-- ten_digit(2) = DFFEAS((\ten_digit~15_combout\ & (\ten_digit~11_combout\ $ (((\data_in~combout\(7)) # (\ten_digit~10_combout\))))) # (!\ten_digit~15_combout\ & (\ten_digit~11_combout\ & (\data_in~combout\(7) $ (\ten_digit~10_combout\)))), 
-- GLOBAL(\clk_in~combout\), VCC, , \BUZZER~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3468",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~combout\,
	dataa => \data_in~combout\(7),
	datab => \ten_digit~11_combout\,
	datac => \ten_digit~15_combout\,
	datad => \ten_digit~10_combout\,
	aclr => GND,
	ena => \BUZZER~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => ten_digit(2));

-- Location: LC_X6_Y4_N5
\data_or_command[2]~reg0\ : maxii_lcell
-- Equation(s):
-- \data_or_command[2]~reg0_regout\ = DFFEAS((\Selector5~0_combout\) # ((\Selector5~3_combout\) # ((ten_digit(2) & \Selector6~0_combout\))), GLOBAL(\clk_in~combout\), VCC, , \current_state.init_lcd~regout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "feee",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~combout\,
	dataa => \Selector5~0_combout\,
	datab => \Selector5~3_combout\,
	datac => ten_digit(2),
	datad => \Selector6~0_combout\,
	aclr => GND,
	ena => \current_state.init_lcd~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_or_command[2]~reg0_regout\);

-- Location: LC_X4_Y4_N2
\unit_digit~13\ : maxii_lcell
-- Equation(s):
-- \unit_digit~13_combout\ = (\data_in~combout\(6) & (\data_in~combout\(2) & (!\data_in~combout\(4)))) # (!\data_in~combout\(6) & (!\data_in~combout\(2) & (\data_in~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1818",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \data_in~combout\(6),
	datab => \data_in~combout\(2),
	datac => \data_in~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \unit_digit~13_combout\);

-- Location: LC_X4_Y4_N5
\unit_digit~12\ : maxii_lcell
-- Equation(s):
-- \unit_digit~12_combout\ = (\data_in~combout\(6) & ((\data_in~combout\(2)) # ((!\data_in~combout\(4))))) # (!\data_in~combout\(6) & (\data_in~combout\(2) & (!\data_in~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8e8e",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \data_in~combout\(6),
	datab => \data_in~combout\(2),
	datac => \data_in~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \unit_digit~12_combout\);

-- Location: LC_X4_Y4_N9
\unit_digit~14\ : maxii_lcell
-- Equation(s):
-- \unit_digit~14_combout\ = (\data_in~combout\(3) & ((\unit_digit~12_combout\ & (\unit_digit~13_combout\ & \data_in~combout\(7))) # (!\unit_digit~12_combout\ & ((!\data_in~combout\(7)))))) # (!\data_in~combout\(3) & ((\unit_digit~12_combout\ $ 
-- (\data_in~combout\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "855a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \data_in~combout\(3),
	datab => \unit_digit~13_combout\,
	datac => \unit_digit~12_combout\,
	datad => \data_in~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \unit_digit~14_combout\);

-- Location: LC_X4_Y4_N4
\unit_digit~15\ : maxii_lcell
-- Equation(s):
-- \unit_digit~15_combout\ = \unit_digit~13_combout\ $ (((\data_in~combout\(3) & (!\unit_digit~12_combout\ & \data_in~combout\(7))) # (!\data_in~combout\(3) & (\unit_digit~12_combout\ & !\data_in~combout\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c69c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \data_in~combout\(3),
	datab => \unit_digit~13_combout\,
	datac => \unit_digit~12_combout\,
	datad => \data_in~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \unit_digit~15_combout\);

-- Location: LC_X2_Y3_N0
\unit_digit[3]\ : maxii_lcell
-- Equation(s):
-- unit_digit(3) = DFFEAS((\data_in~combout\(1) & (\unit_digit~15_combout\ & (\unit_digit~14_combout\ $ (!\data_in~combout\(5))))) # (!\data_in~combout\(1) & ((\unit_digit~14_combout\ & (!\unit_digit~15_combout\ & !\data_in~combout\(5))) # 
-- (!\unit_digit~14_combout\ & (\unit_digit~15_combout\ & \data_in~combout\(5))))), GLOBAL(\clk_in~combout\), VCC, , \BUZZER~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9024",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~combout\,
	dataa => \data_in~combout\(1),
	datab => \unit_digit~14_combout\,
	datac => \unit_digit~15_combout\,
	datad => \data_in~combout\(5),
	aclr => GND,
	ena => \BUZZER~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => unit_digit(3));

-- Location: LC_X7_Y4_N4
\Selector4~0\ : maxii_lcell
-- Equation(s):
-- \Selector4~0_combout\ = (\Equal14~1_combout\ & ((count_command(0) & ((\data_or_command[3]~reg0_regout\))) # (!count_command(0) & (unit_digit(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a820",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Equal14~1_combout\,
	datab => count_command(0),
	datac => unit_digit(3),
	datad => \data_or_command[3]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector4~0_combout\);

-- Location: LC_X3_Y3_N7
\ten_digit~12\ : maxii_lcell
-- Equation(s):
-- \ten_digit~12_combout\ = (\data_in~combout\(4) & (((\data_in~combout\(5))))) # (!\data_in~combout\(4) & ((\data_in~combout\(3)) # ((\data_in~combout\(2) & \data_in~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f5e0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \data_in~combout\(4),
	datab => \data_in~combout\(2),
	datac => \data_in~combout\(5),
	datad => \data_in~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ten_digit~12_combout\);

-- Location: LC_X4_Y4_N6
\ten_digit~13\ : maxii_lcell
-- Equation(s):
-- \ten_digit~13_combout\ = \data_in~combout\(4) $ (((!\data_in~combout\(3) & (!\data_in~combout\(2) & \data_in~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e1f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \data_in~combout\(3),
	datab => \data_in~combout\(2),
	datac => \data_in~combout\(4),
	datad => \data_in~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ten_digit~13_combout\);

-- Location: LC_X3_Y3_N8
\ten_digit[3]\ : maxii_lcell
-- Equation(s):
-- ten_digit(3) = DFFEAS((\data_in~combout\(6) & (!\ten_digit~12_combout\ & (\data_in~combout\(7) $ (\ten_digit~13_combout\)))) # (!\data_in~combout\(6) & (\data_in~combout\(7) & (\ten_digit~12_combout\ & \ten_digit~13_combout\))), GLOBAL(\clk_in~combout\), 
-- VCC, , \BUZZER~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4208",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~combout\,
	dataa => \data_in~combout\(6),
	datab => \data_in~combout\(7),
	datac => \ten_digit~12_combout\,
	datad => \ten_digit~13_combout\,
	aclr => GND,
	ena => \BUZZER~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => ten_digit(3));

-- Location: LC_X7_Y4_N9
\Selector4~2\ : maxii_lcell
-- Equation(s):
-- \Selector4~2_combout\ = (count_command(2) & (count_command(3) $ (((!count_command(0)))))) # (!count_command(2) & (count_command(3) & (count_command(1) $ (count_command(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8c62",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => count_command(2),
	datab => count_command(3),
	datac => count_command(1),
	datad => count_command(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector4~2_combout\);

-- Location: LC_X7_Y4_N0
\Selector4~3\ : maxii_lcell
-- Equation(s):
-- \Selector4~3_combout\ = (count_command(4) & (!count_command(1) & (count_command(0) $ (\Selector4~2_combout\)))) # (!count_command(4) & (((\Selector4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5708",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => count_command(4),
	datab => count_command(0),
	datac => count_command(1),
	datad => \Selector4~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector4~3_combout\);

-- Location: LC_X7_Y4_N1
\data_or_command[3]~reg0\ : maxii_lcell
-- Equation(s):
-- \data_or_command[3]~reg0_regout\ = DFFEAS((\Selector4~0_combout\) # ((\Selector4~3_combout\) # ((ten_digit(3) & \Selector6~0_combout\))), GLOBAL(\clk_in~combout\), VCC, , \current_state.init_lcd~regout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fefa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~combout\,
	dataa => \Selector4~0_combout\,
	datab => ten_digit(3),
	datac => \Selector4~3_combout\,
	datad => \Selector6~0_combout\,
	aclr => GND,
	ena => \current_state.init_lcd~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_or_command[3]~reg0_regout\);

-- Location: LC_X7_Y1_N3
\Selector2~0\ : maxii_lcell
-- Equation(s):
-- \Selector2~0_combout\ = (!count_command(4) & (count_command(2) & (!count_command(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0404",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => count_command(4),
	datab => count_command(2),
	datac => count_command(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector2~0_combout\);

-- Location: LC_X7_Y1_N1
\Selector2~1\ : maxii_lcell
-- Equation(s):
-- \Selector2~1_combout\ = (\Selector2~0_combout\ & (((count_command(1)) # (count_command(0))))) # (!\Selector2~0_combout\ & (\Equal14~4_combout\ & ((count_command(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eea0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Selector2~0_combout\,
	datab => \Equal14~4_combout\,
	datac => count_command(1),
	datad => count_command(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector2~1_combout\);

-- Location: LC_X7_Y1_N4
\Selector2~2\ : maxii_lcell
-- Equation(s):
-- \Selector2~2_combout\ = (!\Selector2~1_combout\ & (!\WideNor0~combout\ & ((!\Equal14~3_combout\) # (!count_command(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0103",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => count_command(0),
	datab => \Selector2~1_combout\,
	datac => \WideNor0~combout\,
	datad => \Equal14~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector2~2_combout\);

-- Location: LC_X4_Y1_N4
\data_or_command[4]~reg0\ : maxii_lcell
-- Equation(s):
-- \data_or_command[4]~reg0_regout\ = DFFEAS((\Selector3~8_combout\ & (\Selector2~2_combout\ & ((\data_or_command[4]~reg0_regout\) # (!\Equal14~2_combout\)))), GLOBAL(\clk_in~combout\), VCC, , \current_state.init_lcd~regout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c400",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~combout\,
	dataa => \Equal14~2_combout\,
	datab => \Selector3~8_combout\,
	datac => \data_or_command[4]~reg0_regout\,
	datad => \Selector2~2_combout\,
	aclr => GND,
	ena => \current_state.init_lcd~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_or_command[4]~reg0_regout\);

-- Location: LC_X3_Y2_N1
\Equal14~5\ : maxii_lcell
-- Equation(s):
-- \Equal14~5_combout\ = (!count_command(2) & (!count_command(1) & (!count_command(4) & count_command(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => count_command(2),
	datab => count_command(1),
	datac => count_command(4),
	datad => count_command(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal14~5_combout\);

-- Location: LC_X3_Y2_N2
\Equal14~6\ : maxii_lcell
-- Equation(s):
-- \Equal14~6_combout\ = (!count_command(0) & (((\Equal14~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5500",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => count_command(0),
	datad => \Equal14~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal14~6_combout\);

-- Location: LC_X4_Y1_N3
\data_or_command[5]~reg0\ : maxii_lcell
-- Equation(s):
-- \data_or_command[5]~reg0_regout\ = DFFEAS((!\Equal14~6_combout\ & (\Selector2~2_combout\ & ((\data_or_command[5]~reg0_regout\) # (!\Equal14~2_combout\)))), GLOBAL(\clk_in~combout\), VCC, , \current_state.init_lcd~regout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2300",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~combout\,
	dataa => \data_or_command[5]~reg0_regout\,
	datab => \Equal14~6_combout\,
	datac => \Equal14~2_combout\,
	datad => \Selector2~2_combout\,
	aclr => GND,
	ena => \current_state.init_lcd~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_or_command[5]~reg0_regout\);

-- Location: LC_X7_Y4_N6
\Selector1~4\ : maxii_lcell
-- Equation(s):
-- \Selector1~4_combout\ = ((count_command(0) & (\Equal14~1_combout\ & \data_or_command[6]~reg0_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => count_command(0),
	datac => \Equal14~1_combout\,
	datad => \data_or_command[6]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector1~4_combout\);

-- Location: LC_X7_Y4_N8
\Selector1~2\ : maxii_lcell
-- Equation(s):
-- \Selector1~2_combout\ = (count_command(0) & (count_command(1) & (count_command(2) $ (!count_command(3))))) # (!count_command(0) & (!count_command(3) & (count_command(2) $ (count_command(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9012",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => count_command(2),
	datab => count_command(3),
	datac => count_command(1),
	datad => count_command(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector1~2_combout\);

-- Location: LC_X7_Y4_N2
\data_or_command[6]~reg0\ : maxii_lcell
-- Equation(s):
-- \data_or_command[6]~reg0_regout\ = DFFEAS((\Selector1~4_combout\) # ((count_command(4) & (!count_command(3) & \Selector1~2_combout\)) # (!count_command(4) & (count_command(3) & !\Selector1~2_combout\))), GLOBAL(\clk_in~combout\), VCC, , 
-- \current_state.init_lcd~regout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f2f4",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~combout\,
	dataa => count_command(4),
	datab => count_command(3),
	datac => \Selector1~4_combout\,
	datad => \Selector1~2_combout\,
	aclr => GND,
	ena => \current_state.init_lcd~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_or_command[6]~reg0_regout\);

-- Location: LC_X7_Y4_N3
\WideOr1~0\ : maxii_lcell
-- Equation(s):
-- \WideOr1~0_combout\ = (!count_command(3) & ((count_command(4) & (!count_command(1))) # (!count_command(4) & (count_command(1) & count_command(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1202",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => count_command(4),
	datab => count_command(3),
	datac => count_command(1),
	datad => count_command(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideOr1~0_combout\);

-- Location: LC_X7_Y4_N7
\data_or_command[7]~reg0\ : maxii_lcell
-- Equation(s):
-- \data_or_command[7]~reg0_regout\ = DFFEAS((count_command(0) & ((\WideOr1~0_combout\) # ((\data_or_command[7]~reg0_regout\ & \Equal14~1_combout\)))), GLOBAL(\clk_in~combout\), VCC, , \current_state.init_lcd~regout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc80",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~combout\,
	dataa => \data_or_command[7]~reg0_regout\,
	datab => count_command(0),
	datac => \Equal14~1_combout\,
	datad => \WideOr1~0_combout\,
	aclr => GND,
	ena => \current_state.init_lcd~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_or_command[7]~reg0_regout\);

-- Location: LC_X2_Y4_N1
\U1|count[0]\ : maxii_lcell
-- Equation(s):
-- \U1|count\(0) = DFFEAS(((!\U1|count\(0))), !GLOBAL(\clk_in~combout\), VCC, , , , , !\U1|LessThan0~1_combout\, )
-- \U1|count[0]~13\ = CARRY(((\U1|count\(0))))
-- \U1|count[0]~13COUT1_21\ = CARRY(((\U1|count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33cc",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_in~combout\,
	datab => \U1|count\(0),
	aclr => GND,
	sclr => \U1|ALT_INV_LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|count\(0),
	cout0 => \U1|count[0]~13\,
	cout1 => \U1|count[0]~13COUT1_21\);

-- Location: LC_X2_Y4_N2
\U1|count[1]\ : maxii_lcell
-- Equation(s):
-- \U1|count\(1) = DFFEAS((\U1|count\(1) $ ((\U1|count[0]~13\))), !GLOBAL(\clk_in~combout\), VCC, , , , , !\U1|LessThan0~1_combout\, )
-- \U1|count[1]~1\ = CARRY(((!\U1|count[0]~13\) # (!\U1|count\(1))))
-- \U1|count[1]~1COUT1_23\ = CARRY(((!\U1|count[0]~13COUT1_21\) # (!\U1|count\(1))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_in~combout\,
	datab => \U1|count\(1),
	aclr => GND,
	sclr => \U1|ALT_INV_LessThan0~1_combout\,
	cin0 => \U1|count[0]~13\,
	cin1 => \U1|count[0]~13COUT1_21\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|count\(1),
	cout0 => \U1|count[1]~1\,
	cout1 => \U1|count[1]~1COUT1_23\);

-- Location: LC_X2_Y4_N3
\U1|count[2]\ : maxii_lcell
-- Equation(s):
-- \U1|count\(2) = DFFEAS(\U1|count\(2) $ ((((!\U1|count[1]~1\)))), !GLOBAL(\clk_in~combout\), VCC, , , , , !\U1|LessThan0~1_combout\, )
-- \U1|count[2]~3\ = CARRY((\U1|count\(2) & ((!\U1|count[1]~1\))))
-- \U1|count[2]~3COUT1_25\ = CARRY((\U1|count\(2) & ((!\U1|count[1]~1COUT1_23\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_in~combout\,
	dataa => \U1|count\(2),
	aclr => GND,
	sclr => \U1|ALT_INV_LessThan0~1_combout\,
	cin0 => \U1|count[1]~1\,
	cin1 => \U1|count[1]~1COUT1_23\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|count\(2),
	cout0 => \U1|count[2]~3\,
	cout1 => \U1|count[2]~3COUT1_25\);

-- Location: LC_X2_Y4_N4
\U1|count[3]\ : maxii_lcell
-- Equation(s):
-- \U1|count\(3) = DFFEAS((\U1|count\(3) $ ((\U1|count[2]~3\))), !GLOBAL(\clk_in~combout\), VCC, , , , , !\U1|LessThan0~1_combout\, )
-- \U1|count[3]~5\ = CARRY(((!\U1|count[2]~3COUT1_25\) # (!\U1|count\(3))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_in~combout\,
	datab => \U1|count\(3),
	aclr => GND,
	sclr => \U1|ALT_INV_LessThan0~1_combout\,
	cin0 => \U1|count[2]~3\,
	cin1 => \U1|count[2]~3COUT1_25\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|count\(3),
	cout => \U1|count[3]~5\);

-- Location: LC_X2_Y4_N5
\U1|count[4]\ : maxii_lcell
-- Equation(s):
-- \U1|count\(4) = DFFEAS(\U1|count\(4) $ ((((!\U1|count[3]~5\)))), !GLOBAL(\clk_in~combout\), VCC, , , , , !\U1|LessThan0~1_combout\, )
-- \U1|count[4]~9\ = CARRY((\U1|count\(4) & ((!\U1|count[3]~5\))))
-- \U1|count[4]~9COUT1_27\ = CARRY((\U1|count\(4) & ((!\U1|count[3]~5\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_in~combout\,
	dataa => \U1|count\(4),
	aclr => GND,
	sclr => \U1|ALT_INV_LessThan0~1_combout\,
	cin => \U1|count[3]~5\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|count\(4),
	cout0 => \U1|count[4]~9\,
	cout1 => \U1|count[4]~9COUT1_27\);

-- Location: LC_X2_Y4_N6
\U1|count[5]\ : maxii_lcell
-- Equation(s):
-- \U1|count\(5) = DFFEAS(\U1|count\(5) $ (((((!\U1|count[3]~5\ & \U1|count[4]~9\) # (\U1|count[3]~5\ & \U1|count[4]~9COUT1_27\))))), !GLOBAL(\clk_in~combout\), VCC, , , , , !\U1|LessThan0~1_combout\, )
-- \U1|count[5]~7\ = CARRY(((!\U1|count[4]~9\)) # (!\U1|count\(5)))
-- \U1|count[5]~7COUT1_29\ = CARRY(((!\U1|count[4]~9COUT1_27\)) # (!\U1|count\(5)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_in~combout\,
	dataa => \U1|count\(5),
	aclr => GND,
	sclr => \U1|ALT_INV_LessThan0~1_combout\,
	cin => \U1|count[3]~5\,
	cin0 => \U1|count[4]~9\,
	cin1 => \U1|count[4]~9COUT1_27\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|count\(5),
	cout0 => \U1|count[5]~7\,
	cout1 => \U1|count[5]~7COUT1_29\);

-- Location: LC_X2_Y4_N7
\U1|count[6]\ : maxii_lcell
-- Equation(s):
-- \U1|count\(6) = DFFEAS((\U1|count\(6) $ ((!(!\U1|count[3]~5\ & \U1|count[5]~7\) # (\U1|count[3]~5\ & \U1|count[5]~7COUT1_29\)))), !GLOBAL(\clk_in~combout\), VCC, , , , , !\U1|LessThan0~1_combout\, )

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c3c3",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_in~combout\,
	datab => \U1|count\(6),
	aclr => GND,
	sclr => \U1|ALT_INV_LessThan0~1_combout\,
	cin => \U1|count[3]~5\,
	cin0 => \U1|count[5]~7\,
	cin1 => \U1|count[5]~7COUT1_29\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|count\(6));

-- Location: LC_X2_Y4_N8
\U1|LessThan0~0\ : maxii_lcell
-- Equation(s):
-- \U1|LessThan0~0_combout\ = ((!\U1|count\(1) & (!\U1|count\(3) & !\U1|count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0003",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|count\(1),
	datac => \U1|count\(3),
	datad => \U1|count\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|LessThan0~0_combout\);

-- Location: LC_X2_Y4_N9
\U1|LessThan0~1\ : maxii_lcell
-- Equation(s):
-- \U1|LessThan0~1_combout\ = (!\U1|count\(6) & (((\U1|LessThan0~0_combout\) # (!\U1|count\(5))) # (!\U1|count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3313",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|count\(4),
	datab => \U1|count\(6),
	datac => \U1|count\(5),
	datad => \U1|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|LessThan0~1_combout\);

-- Location: LC_X2_Y4_N0
\U1|term\ : maxii_lcell
-- Equation(s):
-- \U1|term~regout\ = DFFEAS(((\U1|term~regout\ $ (!\U1|LessThan0~1_combout\))), !GLOBAL(\clk_in~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f00f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_in~combout\,
	datac => \U1|term~regout\,
	datad => \U1|LessThan0~1_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|term~regout\);

-- Location: LC_X6_Y1_N1
\ALE~0\ : maxii_lcell
-- Equation(s):
-- \ALE~0_combout\ = (!\Add0~120_combout\ & (!\Add0~115_combout\ & (!\Add0~105_combout\ & !\Add0~100_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~120_combout\,
	datab => \Add0~115_combout\,
	datac => \Add0~105_combout\,
	datad => \Add0~100_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALE~0_combout\);

-- Location: LC_X6_Y1_N3
\ALE~1\ : maxii_lcell
-- Equation(s):
-- \ALE~1_combout\ = (!\Add0~0_combout\ & (\ALE~0_combout\ & (!\Add0~110_combout\ & \Add0~95_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0400",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \ALE~0_combout\,
	datac => \Add0~110_combout\,
	datad => \Add0~95_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALE~1_combout\);

-- Location: LC_X6_Y1_N9
\Equal0~7\ : maxii_lcell
-- Equation(s):
-- \Equal0~7_combout\ = ((\Selector38~0_combout\ & (\LessThan0~1_combout\ & \Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Selector38~0_combout\,
	datac => \LessThan0~1_combout\,
	datad => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~7_combout\);

-- Location: LC_X5_Y1_N8
\Equal26~0\ : maxii_lcell
-- Equation(s):
-- \Equal26~0_combout\ = (\Add0~120_combout\ & (!\Add0~0_combout\ & (\Add0~115_combout\ & \Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~120_combout\,
	datab => \Add0~0_combout\,
	datac => \Add0~115_combout\,
	datad => \Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal26~0_combout\);

-- Location: LC_X5_Y1_N9
\ALE~reg0\ : maxii_lcell
-- Equation(s):
-- \ALE~reg0_regout\ = DFFEAS((!\Equal26~0_combout\ & ((\ALE~reg0_regout\) # ((\ALE~1_combout\ & \Equal0~7_combout\)))), GLOBAL(\clk_in~combout\), VCC, , \current_state.receive_data~regout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ec",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~combout\,
	dataa => \ALE~1_combout\,
	datab => \ALE~reg0_regout\,
	datac => \Equal0~7_combout\,
	datad => \Equal26~0_combout\,
	aclr => GND,
	ena => \current_state.receive_data~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ALE~reg0_regout\);

-- Location: LC_X5_Y1_N3
\START~reg0\ : maxii_lcell
-- Equation(s):
-- \START~reg0_regout\ = DFFEAS(((!\Equal26~0_combout\ & ((\START~reg0_regout\) # (\Equal0~10_combout\)))), GLOBAL(\clk_in~combout\), VCC, , \current_state.receive_data~regout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00fa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~combout\,
	dataa => \START~reg0_regout\,
	datac => \Equal0~10_combout\,
	datad => \Equal26~0_combout\,
	aclr => GND,
	ena => \current_state.receive_data~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \START~reg0_regout\);

-- Location: LC_X5_Y1_N7
\OE~0\ : maxii_lcell
-- Equation(s):
-- \OE~0_combout\ = (\ALE~0_combout\ & (\Add0~0_combout\ & (\Equal49~6_combout\ & \Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALE~0_combout\,
	datab => \Add0~0_combout\,
	datac => \Equal49~6_combout\,
	datad => \Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \OE~0_combout\);

-- Location: LC_X5_Y1_N5
\OE~reg0\ : maxii_lcell
-- Equation(s):
-- \OE~reg0_regout\ = DFFEAS((!\Equal49~8_combout\ & ((\OE~0_combout\) # ((\OE~reg0_regout\ & !\Equal26~0_combout\)))), GLOBAL(\clk_in~combout\), VCC, , \current_state.receive_data~regout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3032",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~combout\,
	dataa => \OE~reg0_regout\,
	datab => \Equal49~8_combout\,
	datac => \OE~0_combout\,
	datad => \Equal26~0_combout\,
	aclr => GND,
	ena => \current_state.receive_data~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \OE~reg0_regout\);

-- Location: LC_X3_Y2_N7
\LessThan4~0\ : maxii_lcell
-- Equation(s):
-- \LessThan4~0_combout\ = ((\data_in~combout\(2) & ((\data_in~combout\(0)) # (\data_in~combout\(1))))) # (!\LessThan5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ef0f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \data_in~combout\(0),
	datab => \data_in~combout\(1),
	datac => \LessThan5~0_combout\,
	datad => \data_in~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan4~0_combout\);

-- Location: LC_X3_Y3_N6
\BUZZER~reg0\ : maxii_lcell
-- Equation(s):
-- \BUZZER~reg0_regout\ = DFFEAS((\data_in~combout\(7)) # ((\data_in~combout\(6) & (\data_in~combout\(5) & \LessThan4~0_combout\))), GLOBAL(\clk_in~combout\), VCC, , \BUZZER~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eccc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~combout\,
	dataa => \data_in~combout\(6),
	datab => \data_in~combout\(7),
	datac => \data_in~combout\(5),
	datad => \LessThan4~0_combout\,
	aclr => GND,
	ena => \BUZZER~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BUZZER~reg0_regout\);

-- Location: PIN_70,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\RW~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_RW);

-- Location: PIN_68,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\RS~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \RS~reg0_regout\,
	oe => VCC,
	padio => ww_RS);

-- Location: PIN_72,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\EN~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \EN~reg0_regout\,
	oe => VCC,
	padio => ww_EN);

-- Location: PIN_74,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\data_or_command[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \data_or_command[0]~reg0_regout\,
	oe => VCC,
	padio => ww_data_or_command(0));

-- Location: PIN_76,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\data_or_command[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \data_or_command[1]~reg0_regout\,
	oe => VCC,
	padio => ww_data_or_command(1));

-- Location: PIN_78,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\data_or_command[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \data_or_command[2]~reg0_regout\,
	oe => VCC,
	padio => ww_data_or_command(2));

-- Location: PIN_77,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\data_or_command[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \data_or_command[3]~reg0_regout\,
	oe => VCC,
	padio => ww_data_or_command(3));

-- Location: PIN_82,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\data_or_command[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \data_or_command[4]~reg0_regout\,
	oe => VCC,
	padio => ww_data_or_command(4));

-- Location: PIN_81,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\data_or_command[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \data_or_command[5]~reg0_regout\,
	oe => VCC,
	padio => ww_data_or_command(5));

-- Location: PIN_84,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\data_or_command[6]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \data_or_command[6]~reg0_regout\,
	oe => VCC,
	padio => ww_data_or_command(6));

-- Location: PIN_83,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\data_or_command[7]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \data_or_command[7]~reg0_regout\,
	oe => VCC,
	padio => ww_data_or_command(7));

-- Location: PIN_12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\clk_adc~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \U1|term~regout\,
	oe => VCC,
	padio => ww_clk_adc);

-- Location: PIN_37,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\ALE~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALE~reg0_regout\,
	oe => VCC,
	padio => ww_ALE);

-- Location: PIN_33,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\START~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \START~reg0_regout\,
	oe => VCC,
	padio => ww_START);

-- Location: PIN_35,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\OE~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \OE~reg0_regout\,
	oe => VCC,
	padio => ww_OE);

-- Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\BUZZER~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \BUZZER~reg0_regout\,
	oe => VCC,
	padio => ww_BUZZER);
END structure;


