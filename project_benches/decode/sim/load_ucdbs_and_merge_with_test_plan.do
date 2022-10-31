xml2ucdb -format Excel ./LC3_Coverage.xml ./LC3_Coverage.ucdb
add testbrowser ./*.ucdb
vcover merge -stats=none -strip 0 -totals LC3_Coverage_Merged.ucdb ./*.ucdb 
vcover report -details -html -htmldir covhtmlreport -assert -directive -cvg -code bcefst -threshL 50 -threshH 90 ./LC3_Coverage_Merged.ucdb
vsim -viewcov LC3_Coverage_Merged.ucdb
