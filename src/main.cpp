#include <clipper/clipper-ccp4.h>
#include <clipper/clipper-minimol.h>

#include <stdio.h>


int main(int argc, char **argv) {
    CCP4Program prog("navalidate", "0.0.1", "$Date: 2023/12/17");
    prog.set_termination_message("Failed");

    std::cout << std::endl << "Copyright 2023 YOUR NAME and University of York." << std::endl << std::endl;
    prog.summary_beg();
    prog.summary_end();

    CCP4CommandInput args(argc, argv, true);
    int arg = 0;
    while (++arg < args.size()) {
        if (args[arg] == "-pdbin") {

        } else {
            std::cout << "\nUnrecognized:\t" << args[arg] << std::endl;
            args.clear();
        }
    }

    prog.set_termination_message( "Normal termination" );

    return 0;
}

