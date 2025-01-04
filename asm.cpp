#include <iostream>
#include <iomanip>
#include <fstream>
#include <sstream>
#include <vector>
#include <map>
#include <algorithm>

#define FIRST_OMITTED_LABEL "LOAD_SPRITES:"
#define LAST_OMITTED_LABEL "DRAW_PIXEL:"

void load_map_INSTR_SET(std::map<std::string, int>& in);
void load_map_REG(std::map<std::string, int>& in);
std::string trim(const std::string& str);

int main(int argc, char* argv[]){

    //2 string inputs, input.txt and output.txt
    if(argc < 4){
        std::cerr << "Too few input arguments\n";
        exit(-1);
    }

    std::string in_file_name = argv[1];
    std::string out_file_name = argv[2];
    std::string debug_file_name = argv[3];
    std::ifstream in_file(in_file_name);
    std::ofstream out_file(out_file_name);
    std::ofstream debug_file(debug_file_name);
    
    if(!in_file.is_open()){
        std::cerr << "Error: '" << in_file_name << "' not opened\n";
        exit(-1);

    }if(!out_file.is_open()){
        std::cerr << "Error: '" << out_file_name << "' not opened\n";
        exit(-1);
        
    }if(!debug_file.is_open()){
        std::cerr << "Error: '" << debug_file_name << "' not opened\n";
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
    std::stringstream temp_ss;
    std::string line, str, str1, str2, str3;

    //read from file line by line, ignoring emtpy lines and trimming whitespace @ start and end of line
    int line_count = 0;
    while(std::getline(in_file, line)){

        line = trim(line);

        if(line != ""){
            
            //intercepts MACROS macro instruction (op addr data)
            if(line.substr(0,8) == "LOAD_RAM"){

                temp_ss.str(line);
                str.clear(); str1.clear(); str2.clear(); str3.clear();
                temp_ss >> str >> str1 >> str2 >> str3;

                temp_ss.str(""); temp_ss.clear();
                temp_ss << "MOV G0 " << str2;
                lines.push_back(temp_ss.str());

                temp_ss.str(""); temp_ss.clear();
                temp_ss << "SW ZERO G0 " << str1;
                lines.push_back(temp_ss.str());

                line_count = line_count + 2;

            //intercepts BGT
            }else if(line.substr(0,3) == "BGT"){
                temp_ss.str(line);
                str.clear(); str1.clear(); str2.clear(); str3.clear();
                temp_ss >> str >> str1 >> str2 >> str3;

                temp_ss.str(""); temp_ss.clear();
                temp_ss << "BLT " << str2 << " " << str1 << " " << str3;
                lines.push_back(temp_ss.str());
            }else{

                lines.push_back(line);
                line_count++;

            }
        }
    }std::cout << "line_count is " << line_count << "\n\n";

    //copying lines[] to a stringstream lines_stream
    //std::cout << "lines[]\n=======\n";
    for(const auto& line : lines){
        //std::cout << line << '\n';
        lines_stream.push_back(std::stringstream(line));
    }//std::cout << '\n';
    


    //storing temporary strings emptying the lines_streams vector into op_code, term1, term2 and term3 vectors
    int jj = 0;
    std::vector<std::string> op_code, term1, term2, term3;
    std::vector<int> lines_with_labels;
    //std::cout << "First word of lines_stream[]\n============================\n";

    for(uint ii = 0; ii < lines_stream.size(); ii++){

        str.clear(); str1.clear(); str2.clear(); str3.clear();
        lines_stream[ii] >> str >> str1 >> str2 >> str3;
        //std::cout << ii << ": " << str << '\n';

        if(INSTR_SET.find(str) == INSTR_SET.end() && str.at(0) != '#'){
            LABELS[str] = ii - jj;
            lines_with_labels.push_back(ii - jj);
            jj++; //progressive offset so that labels will correctly allign with program

        }else if(str.at(0) == '#'){
            jj++; //progressive offset

        }else{

            //filtering out comments, and pushing to string vectors
            op_code.push_back(str);
            if(str1[0] != '#'){
                term1.push_back(str1);

            }else{
                term1.push_back("");
            }

            if(str2[0] != '#'){
                term2.push_back(str2);

            }else{
                term2.push_back("");
            }

            if(str3[0] != '#'){
                term3.push_back(str3);

            }else{
                term3.push_back("");
            }           
        }
    }LABELS.erase("");  //errasing dummy pair("", 0) that is created when empty strings are read from in.txt

    //omiting print to stdout for this range
    uint skip_start = LABELS[FIRST_OMITTED_LABEL];
    uint skip_end = LABELS[LAST_OMITTED_LABEL];


    //cout of final instructions
    std::cout << "Final Instructions\n(PC#    INSTR   TERM1   TERM2   TERM3)\n";
    std::cout << "======================================\n";
    int count = 0;
    for(uint ii = 0; ii < op_code.size(); ii++){

        //newline if label points to this line, and prints label
        if(std::find(lines_with_labels.begin(), lines_with_labels.end(), ii) != lines_with_labels.end()){
            std::cout << "\n\n";
            for (const auto& label : LABELS) {
                if ((uint)label.second == ii) {
                    std::cout << label.first;
                
                }
            }//intructions w/ formatting
        }if(ii < skip_start || ii > skip_end){

            std::cout << '\n' << std::setw(4) << std::right << count << ": " << std::setw(6) <<
            op_code[ii] << '\t' << std::setw(6) << term1[ii] << '\t' << std::setw(6) << term2[ii] <<
            '\t' << std::setw(6) << term3[ii] << '\t';
            
        }else if(ii == skip_start){

            std::cout << "\t#Begining of omitted instructions#";

        }else if(ii == skip_end){

            std::cout << "\t#End of omitted instructions#";

        }count++;

    }std::cout << "\n\n";

    //cout of labels in order of instruction they point to
    std::cout << "LABELS[]\n" << "========\n";
    for(int ii = 0; ii < line_count; ii++){
        for (const auto& label : LABELS) {
            if (label.second == ii) {
                std::cout << std::left << std::setw(24) << label.first << '\t'  << std::right << std::setw(4) << ii << '\n';

            }
        }
    }std::cout << '\n';

    //additoin debug, prints out addition maps
    /*
    std::cout << "INSTR_SET\n" << "=========\n";
    for(const auto& pair : INSTR_SET){
        std::cout << "Key: " << pair.first << ", Value: " << pair.second << '\n';
    }std::cout << '\n';

    std::cout << "REG\n" << "===\n";
    for(const auto& pair : REG){
        std::cout << "Key: " << pair.first << ", Value: " << pair.second << '\n';
    }std::cout << '\n';
    */

 
    //for formatting, as seen in if statement excluding ii = 0, there is a better way to do this, im lazy
    out_file << "v2.0 raw\n";

    //iterates through 4 string vectors, converting to machine code & printing out
    //assembly instr, switch case, and output machine code hex in 3 consecutive lines
    //each switch case corresponsed to the instruction#
    debug_file << "INSTR Conversion\n================\n";
    for(uint ii = 0; ii < op_code.size(); ii++){

        debug_file << std::dec << "PC#: " << ii << '\n' << op_code[ii] << " " << term1[ii]<< " "  << term2[ii]<< " "  << term3[ii]<< " "  << '\n';


        switch (INSTR_SET[op_code[ii]]){

        case 0: case 1: case 2: case 3: case 4: case 5: case 6: case 7: case 8:
            debug_file << std::dec << "CASE: " << INSTR_SET[op_code[ii]] << std::hex << '\n';
            debug_file << std::setw(2) << std::setfill('0') << std::hex << std::uppercase << INSTR_SET[op_code[ii]];
            debug_file << REG[term1[ii]] << REG[term2[ii]] << REG[term3[ii]] << "000\n\n";             
            out_file << std::setw(2) << std::setfill('0') << std::hex << std::uppercase << INSTR_SET[op_code[ii]];
            out_file << REG[term1[ii]] << REG[term2[ii]] << REG[term3[ii]] << "000\n"; 
        break;

        case 9:
            debug_file << std::dec << "CASE: " << INSTR_SET[op_code[ii]] << std::hex << '\n';
            debug_file << std::setw(2) << std::setfill('0') << std::hex << std::uppercase << INSTR_SET[op_code[ii]];
            debug_file << REG[term1[ii]] << REG[term2[ii]] << "0000\n\n";            
            out_file << std::setw(2) << std::setfill('0') << std::hex << std::uppercase << INSTR_SET[op_code[ii]];
            out_file << REG[term1[ii]] << REG[term2[ii]] << "0000\n";
        break;

        case 11: case 12: case 13:
            debug_file << std::dec << "CASE: " << INSTR_SET[op_code[ii]] << std::hex << '\n';
            debug_file << std::setw(2) << std::setfill('0') << std::hex << std::uppercase << INSTR_SET[op_code[ii]];
            debug_file << REG[term1[ii]] << REG[term2[ii]] << term3[ii] << "\n\n";            
            out_file << std::setw(2) << std::setfill('0') << std::hex << std::uppercase << INSTR_SET[op_code[ii]];
            out_file << REG[term1[ii]] << REG[term2[ii]] << term3[ii] << '\n';
        break;

        case 14: case 15:
            debug_file << std::dec << "CASE: " << INSTR_SET[op_code[ii]] << std::hex << '\n';
            debug_file << std::setw(2) << std::setfill('0') << std::hex << std::uppercase << INSTR_SET[op_code[ii]];
            debug_file << REG[term1[ii]] << REG[term2[ii]] << REG[term3[ii]] << "000\n\n";             
            out_file << std::setw(2) << std::setfill('0') << std::hex << std::uppercase << INSTR_SET[op_code[ii]];
            out_file << REG[term1[ii]] << REG[term2[ii]] << REG[term3[ii]] << "000\n"; 
        break;
        
        case 16: case 17:
            debug_file << std::dec << "CASE: " << INSTR_SET[op_code[ii]] << std::hex << '\n';
            debug_file << std::setw(2) << std::setfill('0') << std::hex << std::uppercase << INSTR_SET[op_code[ii]];
            debug_file << REG[term1[ii]] << REG[term2[ii]] << term3[ii] << "\n\n";            
            out_file << std::setw(2) << std::setfill('0') << std::hex << std::uppercase << INSTR_SET[op_code[ii]];
            out_file << REG[term1[ii]] << REG[term2[ii]] << term3[ii] << '\n';
        break;

        case 18: case 19: case 20:
            debug_file << std::dec << "CASE: " << INSTR_SET[op_code[ii]] << std::hex << '\n';
            debug_file << std::setw(2) << std::setfill('0') << std::hex << std::uppercase << INSTR_SET[op_code[ii]];
            debug_file << REG[term1[ii]] << REG[term2[ii]];
            debug_file << std::setw(4) << std::setfill('0') << std::hex << std::uppercase << LABELS[term3[ii]] << "\n\n";               
            out_file << std::setw(2) << std::setfill('0') << std::hex << std::uppercase << INSTR_SET[op_code[ii]];
            out_file << REG[term1[ii]] << REG[term2[ii]];
            out_file << std::setw(4) << std::setfill('0') << std::hex << std::uppercase << LABELS[term3[ii]] << '\n';   
        break;

        case 21:
            debug_file << std::dec << "CASE: " << INSTR_SET[op_code[ii]] << std::hex << '\n';
            debug_file << std::setw(2) << std::setfill('0') << std::hex << std::uppercase << INSTR_SET[op_code[ii]];
            debug_file << std::setw(4) << std::setfill('0') << LABELS[term1[ii]] << "00\n\n";            
            out_file << std::setw(2) << std::setfill('0') << std::hex << std::uppercase << INSTR_SET[op_code[ii]];
            out_file << std::setw(4) << std::setfill('0') << LABELS[term1[ii]] << "00\n";
        break;

        case 22:
            debug_file << std::dec << "CASE: " << INSTR_SET[op_code[ii]] << std::hex << '\n';
            debug_file << std::setw(2) << std::setfill('0') << std::hex << std::uppercase << INSTR_SET[op_code[ii]];
            debug_file << std::setw(4) << std::setfill('0') << LABELS[term1[ii]];
            debug_file << REG[term2[ii]] << "0\n\n";            
            out_file << std::setw(2) << std::setfill('0') << std::hex << std::uppercase << INSTR_SET[op_code[ii]];
            out_file << std::setw(4) << std::setfill('0') << LABELS[term1[ii]];
            out_file << REG[term2[ii]] << "0\n";
    
        break;

        case 23:
            debug_file << std::dec << "CASE: " << INSTR_SET[op_code[ii]] << std::hex << '\n';
            debug_file << std::setw(2) << std::setfill('0') << std::hex << std::uppercase << INSTR_SET[op_code[ii]];
            debug_file << REG[term1[ii]] << "00000\n\n";            
            out_file << std::setw(2) << std::setfill('0') << std::hex << std::uppercase << INSTR_SET[op_code[ii]];
            out_file << REG[term1[ii]] << "00000\n";
        break;

        case 26:
            debug_file << std::dec << "CASE: " << INSTR_SET[op_code[ii]] << std::hex << '\n';
            debug_file << std::setw(2) << std::setfill('0') << std::hex << std::uppercase << INSTR_SET[op_code[ii]];
            debug_file << REG[term1[ii]] << term2[ii] << "0\n\n";            
            out_file << std::setw(2) << std::setfill('0') << std::hex << std::uppercase << INSTR_SET[op_code[ii]];
            out_file << REG[term1[ii]] << term2[ii] << "0\n";
        break;

        default:
            break;
        }
    }return 0;
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
    in["HI"] = 1;
    in["KB"] = 2;
    in["PC"] = 3;
    in["SP"] = 4;
    in["LR"] = 5;
    in["BUFF"] = 6;
    in["CLK"] = 7;
    in["G0"] = 8;
    in["G1"] = 9;
    in["G2"] = 10;
    in["G3"] = 11;
    in["G4"] = 12;
    in["G5"] = 13;
    in["G6"] = 14;
    in["G7"] = 15;
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