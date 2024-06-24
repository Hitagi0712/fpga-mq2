library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
LiBRARY std;
USE std.standard.all;
LIBRARY work;
USE work.all;

entity final_project is
port (
	--------------------------LCD-----------------
	RW : OUT STD_LOGIC := '0';   --- chân đọc ghi của LCD, 0 ở chế độ ghi, 1 ở chế độ đọc
	RS : OUT STD_LOGIC := '0';   --- RS=0--> ghi lệnh; RS=1 --> ghi data
	EN : OUT STD_LOGIC := '0';   --- clock cho LCD
	data_or_command : OUT std_logic_vector(7 downto 0):= B"00000000";  ---D0 đến D7
	
	--------------------------ADC-------------------
	data_in : IN std_logic_vector(7 downto 0):= "11111111";
	clk_in : IN STD_LOGIC;
	clk_adc : OUT STD_LOGIC;   --clock 500kHz cho AC
	ALE: OUT STD_LOGIC := '0';        -- chốt địa chỉ cho ALE
	START: OUT STD_LOGIC := '0';      -- bắt đầu chuyển đổi ADC
	OE: OUT STD_LOGIC := '0';         -- cho phép đầu ra của ADC
	
	--------------------------LOA-------------------
	BUZZER : OUT STD_LOGIC := '0'     -- Còi hú, =1 là kêu
);
end final_project;

architecture behav of final_project is

	type state is (lcd_delay, lcd_clock_en, init_lcd, receive_data);
	signal current_state : state := lcd_delay;
	
	component clock port (
		clk_in : IN STD_LOGIC;
		clk_out : OUT STD_LOGIC
	);
	end component;

begin
	U1: clock port map (clk_in, clk_adc);
	process (clk_in)	
		variable count_command : integer range 0 to 31 := 0;
		variable count_time : integer range 0 to 33554431 := 0;
		variable hundred_digit : std_logic_vector(7 downto 0);
		variable ten_digit : std_logic_vector(7 downto 0);
		variable unit_digit : std_logic_vector(7 downto 0);
		variable tem_ten : unsigned(7 downto 0);
		variable tem_unit : unsigned(7 downto 0);
		variable tem1 : unsigned(7 downto 0);
		variable tem2 : unsigned(15 downto 0);
	begin
		if (rising_edge(clk_in)) then
			case current_state is                    
				when lcd_delay =>
					count_time := count_time + 1;      -- đợi khoảng 15ms cho nguồn ổn định
					if (count_time >= 800000 )then
						count_time := 0;
						current_state <= init_lcd;
					end if;
				when lcd_clock_en =>                  -- xung ở chân EN cho lcd chốt lệnh hoặc data
					count_time := count_time + 1;
					if (count_time = 100) then         --- Đợi 2us rồi cho EN = 1;
						EN <= '1';
					end if;
					if (count_time = 200) then         --- đợi thêm 2us rồi EN = 0;
						EN <= '0';
					end if;
					if (count_time >= 300000) then 	  --- Đợi thêm một thời gian để LCD thực hiện xong lệnh hoặc data
						current_state <= init_lcd;
					end if;
				when init_lcd =>
					count_time := 0;                  
					case count_command is              --- từ 1 đến 8 để khỏi tạo LCD khi mới bật nguồn
						when 1 to 3 =>
							data_or_command <= "00110000";  -- 0x30
							RS <= '0';
							current_state <= lcd_clock_en;
						when 4 =>
							data_or_command <= "00111000";  -- 0x38  set 2 hàng, 5x7
							RS <= '0';
							current_state <= lcd_clock_en;
						when 5 =>
							data_or_command <= "00000001";  -- 0x01  xóa màn hình
							RS <= '0';
							current_state <= lcd_clock_en;
						when 6 =>
							data_or_command <= "00001100";  -- 0x0C bật hiển thị, tắt con trỏ
							RS <= '0';
							current_state <= lcd_clock_en;
						when 7 =>                          --- từ 7 đến 10 để giển thị data thu thu từ ADC
							data_or_command <= "10000000";  ---0x80: lệnh về đầu dòng 1 
							RS <= '0';
							current_state <= lcd_clock_en;
						when 8 =>
							data_or_command <= "01000011"; --C
							RS <= '1';
							current_state <= lcd_clock_en;
						when 9 =>
							data_or_command <= "01101111"; --o
							RS <= '1';
							current_state <= lcd_clock_en;
						when 10 =>
							data_or_command <= "01101110"; --n
							RS <= '1';
							current_state <= lcd_clock_en;
						when 11 =>
							data_or_command <= "01100011"; --c
							RS <= '1';
							current_state <= lcd_clock_en;
						when 12 =>
							data_or_command <= "01100101"; --e
							RS <= '1';
							current_state <= lcd_clock_en;
						when 13 =>
							data_or_command <= "01101110"; --n
							RS <= '1';
							current_state <= lcd_clock_en;
						when 14 =>
							data_or_command <= "01110100"; --t
							RS <= '1';
							current_state <= lcd_clock_en;
						when 15 =>
							data_or_command <= "00111010"; --:
							RS <= '1';
							current_state <= lcd_clock_en;
						when 16 =>
							data_or_command <= "00100000"; --' '
							RS <= '1';
							current_state <= lcd_clock_en;
						when 17 =>
							data_or_command <= "10001101";--0x8d
							RS <= '0';
							current_state <= lcd_clock_en;
						when 18 =>
							data_or_command <= "01110000"; --p
							RS <= '1';
							current_state <= lcd_clock_en;
						when 19 =>
							data_or_command <= "01110000"; --p
							RS <= '1';
							current_state <= lcd_clock_en;
						when 20 =>
							data_or_command <= "01101101"; --m
							RS <= '1';
							current_state <= lcd_clock_en;	
						when 21 =>
							data_or_command <= "10001001"; --0x89
							RS <= '0';
							current_state <= lcd_clock_en;					
						when 22 =>                          --- chữ số hàng trăm
							data_or_command <= hundred_digit;
							RS <= '1';
							current_state <= lcd_clock_en;
						when 23 =>                          --- chữ số hằng chục
							data_or_command <= ten_digit;
							RS <= '1';
							current_state <= lcd_clock_en;
						when 24 =>                         --- chữ số hằng đơn vi
							data_or_command <= unit_digit;
							RS <= '1';
							current_state <= lcd_clock_en;
						when 25 =>
							count_command := 20;             --- Nếu = 25 thì chuyển đổi ADC và quay về 20 để hiển thị data mới
							current_state <= receive_data;
						when others =>
							data_or_command <= "00000000";
					end case;
					count_command := count_command + 1; 
					
				when receive_data =>
					count_time := count_time + 1;
						if(count_time = 1) then
							ALE <= '1';            --- xung lên của ALE (ADC)
						end if;
						if(count_time = 100) then  --- đợi thêm một chút rồi đưa start của LCD lên 1
							START <= '1';
						end if;
						
						if(count_time = 300) then  --- đợi thêm một thời gian rồi đưa cả ALE và START về 0
							START <= '0';
							ALE <= '0';
							--bắt đầu chuyển đổi adc
							OE <= '0';
						end if;
						if(count_time = 25000000) then --- đợi khoảng 500ms: ADC đã chuyển đổi xong
							OE <= '1';                  --- cho phép đầu ra của ADC
						end if;
						if (count_time = 25000300)then  
							if (unsigned(data_in) > 100) then
							BUZZER <= '1';
							else
							BUZZER <= '0';
							end if;
							-----------------chuyển data thành mã ASCII------------
							if (unsigned(data_in) >= 200) then
								hundred_digit := "00110010";--50,0x32
								tem_ten := unsigned(data_in)- 200;
							elsif (unsigned(data_in) >= 100) then
								hundred_digit := "00110001";--49,0x31
								tem_ten := unsigned(data_in)- 100;
							else
								hundred_digit := "00110000";--0x30
								tem_ten := unsigned(data_in);
							end if;

							tem_ten := tem_ten/10;
							if (tem_ten = "00000000") then 
								ten_digit := "00110000";
							end if;
							if (tem_ten = "00000001") then 
								ten_digit := "00110001";
							end if;
							if (tem_ten = "00000010") then 
								ten_digit := "00110010";
							end if;
							if (tem_ten = "00000011") then 
								ten_digit := "00110011";
							end if;
							if (tem_ten = "00000100") then 
								ten_digit := "00110100";
							end if;
							if (tem_ten = "00000101") then 
								ten_digit := "00110101";
							end if;
							if (tem_ten = "00000110") then 
								ten_digit := "00110110";
							end if;
							if (tem_ten = "00000111") then 
								ten_digit := "00110111";
							end if;
							if (tem_ten = "00001000") then 
								ten_digit := "00111000";
							end if;
							if (tem_ten = "00001001") then 
								ten_digit := "00111001";
							end if;
							tem1 := unsigned(data_in)/10;
							tem2 := tem1*10;
							tem1 := tem2(7 downto 0);
							tem_unit := unsigned(data_in) - tem1;
							if (tem_unit = "00000000") then 
								unit_digit := "00110000";
							end if;
							if (tem_unit = "00000001") then 
								unit_digit := "00110001";
							end if;
							if (tem_unit = "00000010") then 
								unit_digit := "00110010";
							end if;
							if (tem_unit = "00000011") then 
								unit_digit := "00110011";
							end if;
							if (tem_unit = "00000100") then 
								unit_digit := "00110100";
							end if;
							if (tem_unit = "00000101") then 
								unit_digit := "00110101";
							end if;
							if (tem_unit = "00000110") then 
								unit_digit := "00110110";
							end if;
							if (tem_unit = "00000111") then 
								unit_digit := "00110111";
							end if;
							if (tem_unit = "00001000") then 
								unit_digit := "00111000";
							end if;
							if (tem_unit = "00001001") then 
								unit_digit := "00111001";
							end if;
						end if;
						if (count_time = 25000500)then 
							OE <= '0';
							current_state <= init_lcd;
						end if;
			end case;
		end if;
	end process;
end behav;