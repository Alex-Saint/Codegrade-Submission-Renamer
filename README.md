# Codegrade-Submission-Renamer
Used to rename CodeGrade submissions to student names for upload to MOSS

## Quick Start
1. Export submissions (all) from CodeGrade: https://help.codegrade.com/faq/exporting-submissions
2. Place `rename.sh` into the directory downloaded from CodeGrade.
3. Open terminal at directory.
4. Run `chmod +x rename.sh`
5. Run `./rename.sh NAME` where `NAME` is your first name.
6. After done running a directory called `/processed` will be added to the directory downloaded from CodeGrade. Upload the submissions from this `/processed` directory to the proper MOSS directory.