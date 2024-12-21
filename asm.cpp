#include <iostream>
#include <iomanip>
#include <fstream>
#include <sstream>
#include <vector>
#include <map>
#include <algorithm>

#define WIDTH 8

void load_map_INSTR_SET(std::map<std::string, int>& in);
void load_map_REG(std::map<std::string, int>& in);
std::string trim(const std::string& str);

int main(int argc, char* argv[]){

    //2 string inputs, input.txt and output.txt
    if(argc < 3){
        std::cerr << "Too few input arguments\n";
        exit(-1);
    }

    std::string in_file_name = argv[1];
    std::string out_file_name = argv[2]; 
    std::ifstream in_file(in_file_name);
    std::ofstream out_file(out_file_name);
    
    if(!in_file.is_open()){
        std::cerr << "Error: '" << in_file_name << "' not opened\n";
        exit(-1);

    }if(!out_file.is_open()){
        std::cerr << "Error: '" << out_file_name << "' not opened\n";
        exit(-1);
    }

    //maps for tracking instr, reg and labes
    std::map<std::string, int> INSTR_SET;
    std::map<std::string, int> REG;
    std::map<std::string, int> LABELS;
    load_map_INSTR_SET(INSTR_SET);
    load_map_REG(REG);

    //string and string_stream vectors 2b loaded with lines from input.txt
    std::vector<std::string> lines;
    std::vector<std::stringstream> lines_stream;
    std::string line;

    //read from file line by line, ignoring emtpy lines and trimming whitespace @ start and end of line
    int line_count = 0;
    while(std::getline(in_file, line)){
        if(trim(line) != ""){
            lines.push_back(trim(line));
            line_count++;
        }
    }std::cout << "line_count is " << line_count << std::endl << std::endl;

    std::cout << "lines[]\n" << "=======\n";
    for(const auto& line : lines){
        std::cout << line << std::endl;
        lines_stream.push_back(std::stringstream(line));
    }std::cout << std::endl;

    std::string str, str1, str2, str3; int jj = 0;
    std::vector<std::string> op_code, term1, term2, term3;
    std::cout << "First word of lines_stream[]\n" << "============================\n";
    for(uint ii = 0; ii < lines_stream.size(); ii++){
        str.clear(); str1.clear(); str2.clear(); str3.clear();
        lines_stream[ii] >> str >> str1 >> str2 >> str3;
        std::cout << ii << ": " << str << std::endl;

        if(INSTR_SET.find(str) == INSTR_SET.end()){
            LABELS[str] = ii - jj;
            jj++; //progressive offset so that labels will correctly allign with program
        }else{
            op_code.push_back(str);
            term1.push_back(str1);
            term2.push_back(str2);
            term3.push_back(str3);
        }
    }LABELS.erase("");
    std::cout << std::endl;

    std::cout << "op_code[]\n" << "=========\n";
    int count = 0;
    for(uint ii = 0; ii < op_code.size(); ii++){
        std::cout << count << ": " << op_code[ii] << "\t" << term1[ii] << "\t" << term2[ii] << "\t" << term3[ii] << "\t" << std::endl;
        count++;

    }std::cout << std::endl;

    std::cout << "LABELS[]" << std::endl << "========" << std::endl;
    for(const auto& pair : LABELS){
        std::cout << "Key: " << pair.first << ", Value: " << pair.second << std::endl;
    }std::cout << std::endl;

    //debug, print out all maps
    /*


    std::cout << "INSTR_SET" << std::endl << "=========" << std::endl;
    for(const auto& pair : INSTR_SET){
        std::cout << "Key: " << pair.first << ", Value: " << pair.second << std::endl;
    }std::cout << std::endl;

    std::cout << "REG" << std::endl << "===" << std::endl;
    for(const auto& pair : REG){
        std::cout << "Key: " << pair.first << ", Value: " << pair.second << std::endl;
    }std::cout << std::endl;


    */

 
    //for formatting, as seen in if statement excluding ii = 0, there is a better way to do this, im lazy
    out_file << "0x" << std::setw(4) << std::setfill('0') << std::hex << std::uppercase << 0 << "\t";
    for(uint ii = 0; ii < op_code.size(); ii++){

        if((ii % (WIDTH) == 0) & (ii != 0)){
            out_file << std::endl << "0x" << std::setw(4) << std::setfill('0') << std::hex << std::uppercase << ii << "\t";
        }



        std::cout << op_code[ii] << " " << term1[ii]<< " "  << term2[ii]<< " "  << term3[ii]<< " "  << std::endl;

        if(INSTR_SET.find(op_code[ii]) != INSTR_SET.end()){
            
            switch (INSTR_SET[op_code[ii]]){

            case 0: case 1: case 2: case 3: case 4: case 5: case 6: case 7: case 8:
                std::cout << std::dec << "CASE: " << INSTR_SET[op_code[ii]] << std::hex << std::endl;
                std::cout << std::setw(2) << std::setfill('0') << std::hex << std::uppercase << INSTR_SET[op_code[ii]];
                std::cout << REG[term1[ii]] << REG[term2[ii]] << REG[term3[ii]] << "000" << std::endl << std::endl;             
                out_file << "0x" << std::setw(2) << std::setfill('0') << std::hex << std::uppercase << INSTR_SET[op_code[ii]];
                out_file << REG[term1[ii]] << REG[term2[ii]] << REG[term3[ii]] << "000" << "\t"; 
            break;

            case 9:
                std::cout << std::dec << "CASE: " << INSTR_SET[op_code[ii]] << std::hex << std::endl;
                std::cout << std::setw(2) << std::setfill('0') << std::hex << std::uppercase << INSTR_SET[op_code[ii]];
                std::cout << REG[term1[ii]] << REG[term2[ii]] << "0000" << std::endl << std::endl;            
                out_file << "0x" << std::setw(2) << std::setfill('0') << std::hex << std::uppercase << INSTR_SET[op_code[ii]];
                out_file << REG[term1[ii]] << REG[term2[ii]] << "0000" << "\t";
            break;

            case 11: case 12: case 13:
                std::cout << std::dec << "CASE: " << INSTR_SET[op_code[ii]] << std::hex << std::endl;
                std::cout << std::setw(2) << std::setfill('0') << std::hex << std::uppercase << INSTR_SET[op_code[ii]];
                std::cout << REG[term1[ii]] << REG[term2[ii]] << term3[ii] << std::endl << std::endl;            
                out_file << "0x" << std::setw(2) << std::setfill('0') << std::hex << std::uppercase << INSTR_SET[op_code[ii]];
                out_file << REG[term1[ii]] << REG[term2[ii]] << term3[ii] << "\t";
            break;

            case 14: case 15:
                std::cout << std::dec << "CASE: " << INSTR_SET[op_code[ii]] << std::hex << std::endl;
                std::cout << std::setw(2) << std::setfill('0') << std::hex << std::uppercase << INSTR_SET[op_code[ii]];
                std::cout << REG[term1[ii]] << REG[term2[ii]] << REG[term3[ii]] << "000" << std::endl << std::endl;             
                out_file << "0x" << std::setw(2) << std::setfill('0') << std::hex << std::uppercase << INSTR_SET[op_code[ii]];
                out_file << REG[term1[ii]] << REG[term2[ii]] << REG[term3[ii]] << "000" << "\t"; 
            break;

            case 16: case 17:
                std::cout << std::dec << "CASE: " << INSTR_SET[op_code[ii]] << std::hex << std::endl;
                std::cout << std::setw(2) << std::setfill('0') << std::hex << std::uppercase << INSTR_SET[op_code[ii]];
                std::cout << REG[term1[ii]] << REG[term2[ii]] << term3[ii] << std::endl << std::endl;            
                out_file << "0x" << std::setw(2) << std::setfill('0') << std::hex << std::uppercase << INSTR_SET[op_code[ii]];
                out_file << REG[term1[ii]] << REG[term2[ii]] << term3[ii] << "\t";
            break;

            case 18: case 19: case 20:
                std::cout << std::dec << "CASE: " << INSTR_SET[op_code[ii]] << std::hex << std::endl;
                std::cout << std::setw(2) << std::setfill('0') << std::hex << std::uppercase << INSTR_SET[op_code[ii]];
                std::cout << REG[term1[ii]] << REG[term2[ii]];
                std::cout << std::setw(4) << std::setfill('0') << std::hex << std::uppercase << LABELS[term3[ii]] << std::endl << std::endl;               
                out_file << "0x" << std::setw(2) << std::setfill('0') << std::hex << std::uppercase << INSTR_SET[op_code[ii]];
                out_file << REG[term1[ii]] << REG[term2[ii]];
                out_file << std::setw(4) << std::setfill('0') << std::hex << std::uppercase << LABELS[term3[ii]] << "\t";   
            break;

            case 21:
                std::cout << std::dec << "CASE: " << INSTR_SET[op_code[ii]] << std::hex << std::endl;
                std::cout << std::setw(2) << std::setfill('0') << std::hex << std::uppercase << INSTR_SET[op_code[ii]];
                std::cout << std::setw(4) << std::setfill('0') << LABELS[term1[ii]] << "00" << std::endl << std::endl;            
                out_file << "0x" << std::setw(2) << std::setfill('0') << std::hex << std::uppercase << INSTR_SET[op_code[ii]];
                out_file << std::setw(4) << std::setfill('0') << LABELS[term1[ii]] << "00" << "\t";
            break;

            case 22:
                std::cout << std::dec << "CASE: " << INSTR_SET[op_code[ii]] << std::hex << std::endl;
                std::cout << std::setw(2) << std::setfill('0') << std::hex << std::uppercase << INSTR_SET[op_code[ii]];
                std::cout << std::setw(4) << std::setfill('0') << LABELS[term1[ii]];
                std::cout << REG[term2[ii]] << "0" << std::endl << std::endl;            
                out_file << "0x" << std::setw(2) << std::setfill('0') << std::hex << std::uppercase << INSTR_SET[op_code[ii]];
                out_file << std::setw(4) << std::setfill('0') << LABELS[term1[ii]];
                out_file << REG[term2[ii]] << "0" << "\t";
      
            break;

            case 23:
                std::cout << std::dec << "CASE: " << INSTR_SET[op_code[ii]] << std::hex << std::endl;
                std::cout << std::setw(2) << std::setfill('0') << std::hex << std::uppercase << INSTR_SET[op_code[ii]];
                std::cout << REG[term1[ii]] << "00000" << std::endl << std::endl;            
                out_file << "0x" << std::setw(2) << std::setfill('0') << std::hex << std::uppercase << INSTR_SET[op_code[ii]];
                out_file << REG[term1[ii]] << "00000" << "\t";
            break;

            case 26:
                std::cout << std::dec << "CASE: " << INSTR_SET[op_code[ii]] << std::hex << std::endl;
                std::cout << std::setw(2) << std::setfill('0') << std::hex << std::uppercase << INSTR_SET[op_code[ii]];
                std::cout << REG[term1[ii]] << term2[ii] << "0" << std::endl << std::endl;            
                out_file << "0x" << std::setw(2) << std::setfill('0') << std::hex << std::uppercase << INSTR_SET[op_code[ii]];
                out_file << REG[term1[ii]] << term2[ii] << "0" << "\t";
            break;

            default:
                std::cout << "ERROR: INVALID INSTRUCTION" << std::endl << std::endl;            
                out_file << "ERROR: INVALID INSTRUCTION" << "\t";
                break;
            }
        }
    }



    return 0;
}


void load_map_INSTR_SET(std::map<std::string, int>& in){
    in["ADD"] = 0;
    in["SUB"] = 1;
    in["MUL"] = 2;
    in["DIV"] = 3;
    in["BSR"] = 4;
    in["BSL"] = 5;
    in["AND"] = 6;
    in["OR"] = 7;
    in["XOR"] = 8;
    in["NOT"] = 9;
    in["A_PASS"] = 10;
    in["ADDI"] = 11;
    in["SUBI"] = 12;
    in["MULI"] = 13;
    in["SLT"] = 14;
    in["SEQ"] = 15;
    in["LW"] = 16;
    in["SW"] = 17;
    in["BLT"] = 18;
    in["BEQ"] = 19;
    in["BNE"] = 20;
    in["JMP"] = 21;
    in["JAL"] = 22;
    in["JR"] = 23;
    in["MOV"] = 26;
}

void load_map_REG(std::map<std::string, int>& in){
    in["ZERO"] = 0;
    in["SP"] = 1;
    in["LR"] = 2;
    in["PC"] = 3;
    in["HI"] = 4;
    in["G0"] = 5;
    in["G1"] = 6;
    in["G2"] = 7;
    in["R0"] = 8;
    in["R1"] = 9;
    in["R2"] = 10;
    in["R3"] = 11;
    in["R4"] = 12;
    in["R5"] = 13;
    in["R6"] = 14;
    in["R7"] = 15;
}

//filters out whitespace from beging and end of string no idea how this works, i stole it from gpt :)
std::string trim(const std::string& str) {
    // Find the first non-whitespace character
    auto start = std::find_if_not(str.begin(), str.end(), [](unsigned char c) { return std::isspace(c); });

    // Find the last non-whitespace character
    auto end = std::find_if_not(str.rbegin(), str.rend(), [](unsigned char c) { return std::isspace(c); }).base();

    // Create a trimmed string if valid range exists
    return (start < end) ? std::string(start, end) : std::string();
}