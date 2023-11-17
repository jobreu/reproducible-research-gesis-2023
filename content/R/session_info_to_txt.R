# Open a connection to a text file
sink("session_info.txt")

# Write starting line
print("Session information:")

# Run sessionInfo() to get the session information
session_info <- sessionInfo()

# Determine the index range to include (exclude the last 3)
index_to_include <- seq(length(session_info) - 3)

# Write each element name and value of the session information to the text file
for (i in index_to_include) {
  cat(names(session_info)[i], ":\n", paste(as.character(session_info[[i]]), collapse = ' '), "\n\n")
}

# Close the connection to the text file
sink()
