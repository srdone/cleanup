#Cleanup.R
#Created by Stephen Done
#Accepts a data.table and a list of column names.
#Reduces the data.table to only include passed-through column names
#Removes duplicates on all columns (setting the key to NULL)

cleanup <- function(table_to_clean, columns_to_keep) {
	table_to_clean <- table_to_clean[, columns_to_keep]
	setkey(table_to_clean, NULL)
	cleaned_table <- table_to_clean[, unique(table_to_clean)]
	return cleaned_table
}