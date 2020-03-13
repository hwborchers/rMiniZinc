### RMiniZinc example

# Define path to 'minizinc' command and model/data files
minizinc_exe    <- "/opt/minizinc-ide/bin/minizinc"
mzn_model_file  <- tempfile("mzn_", fileext = ".mzn")
mzn_result_file <- tempfile("mzn_", fileext = ".txt")

# Define the MiniZinc model and data as strings
mzn_model <- "% Simple satisfaction model
var 1..3: x;
var 1..3: y;
constraint x+y > 3;
solve satisfy;
"
# No data file is required, so the string is empty
mzn_data <- ""

# MiniZinc options
mzn_options <- "--all-solutions"

# Fill the MiniZinc model
writeLines(mzn_model, con = mzn_model_file)
if (mzn_data != "")
    writeLines(mzn_data, con = mzn_data_file)

# Call Minizinc
err_code <- system2(minizinc_exe,
                    args = paste(mzn_options, mzn_model_file),
                    stdout = mzn_result_file, stderr = "")
if (err_code != 0) 
    warning("MiniZinc returns error code != 0",
            call. = FALSE, immediate. = TRUE)

# Read the MiniZinc results and display on screen
result <- readLines(mzn_result_file)
cat(result, sep = '\n')

# Delete the intermediate files
unlink(mzn_model_file)
unlink(mzn_result_file)
