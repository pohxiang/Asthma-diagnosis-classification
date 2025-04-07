# Install and load necessary package
install.packages("dplyr")
library(dplyr)

# Step 1: Read the file
data <- read.csv("C:\\Users\\Ryzen\\OneDrive - Asia Pacific University\\Rstudio\\Asthma_dataset.csv")

# Step 2: Subset the data (including the new columns)
subset <- c("HistoryOfAllergies", "Eczema", "HayFever", "GastroesophagealReflux", "LungFunctionFEV1", 
            "LungFunctionFVC", "Wheezing", "ShortnessOfBreath", "ChestTightness", "Coughing", 
            "NighttimeSymptoms", "ExerciseInduced", "BMI", 
            "DietQuality", "SleepQuality", "PollenExposure", "DustExposure","PollutionExposure","Diagnosis")
ast_subNew <- data[subset]

# Step 3: Cleaning each column
# HistoryOfAllergies cleaning
ast_subNew$HistoryOfAllergies <- as.character(ast_subNew$HistoryOfAllergies)
ast_subNew$HistoryOfAllergies <- na_if(ast_subNew$HistoryOfAllergies, "unknown")
ast_subNew$HistoryOfAllergies <- na_if(ast_subNew$HistoryOfAllergies, "?")
ast_subNew$HistoryOfAllergies <- as.integer(ast_subNew$HistoryOfAllergies)
mode_value <- get_mode(ast_subNew$HistoryOfAllergies)
ast_subNew$HistoryOfAllergies[is.na(ast_subNew$HistoryOfAllergies)] <- mode_value

# Eczema cleaning
ast_subNew$Eczema <- as.character(ast_subNew$Eczema)
ast_subNew$Eczema <- na_if(ast_subNew$Eczema, "unknown")
ast_subNew$Eczema <- na_if(ast_subNew$Eczema, "?")
ast_subNew$Eczema <- as.integer(ast_subNew$Eczema)
mode_value <- get_mode(ast_subNew$Eczema)
ast_subNew$Eczema[is.na(ast_subNew$Eczema)] <- mode_value

# HayFever cleaning
ast_subNew$HayFever <- as.character(ast_subNew$HayFever)
ast_subNew$HayFever <- na_if(ast_subNew$HayFever, "unknown")
ast_subNew$HayFever <- na_if(ast_subNew$HayFever, "?")
ast_subNew$HayFever <- as.integer(ast_subNew$HayFever)
mode_value <- get_mode(ast_subNew$HayFever)
ast_subNew$HayFever[is.na(ast_subNew$HayFever)] <- mode_value

# GastroesophagealReflux cleaning
ast_subNew$GastroesophagealReflux <- as.character(ast_subNew$GastroesophagealReflux)
ast_subNew$GastroesophagealReflux <- na_if(ast_subNew$GastroesophagealReflux, "unknown")
ast_subNew$GastroesophagealReflux <- na_if(ast_subNew$GastroesophagealReflux, "?")
ast_subNew$GastroesophagealReflux <- as.integer(ast_subNew$GastroesophagealReflux)
mode_value <- get_mode(ast_subNew$GastroesophagealReflux)
ast_subNew$GastroesophagealReflux[is.na(ast_subNew$GastroesophagealReflux)] <- mode_value

# LungFunctionFEV1 cleaning
ast_subNew$LungFunctionFEV1 <- as.character(ast_subNew$LungFunctionFEV1)
ast_subNew$LungFunctionFEV1 <- na_if(ast_subNew$LungFunctionFEV1, "unknown")
ast_subNew$LungFunctionFEV1 <- na_if(ast_subNew$LungFunctionFEV1, "?")
ast_subNew$LungFunctionFEV1 <- as.numeric(ast_subNew$LungFunctionFEV1)
valid_values <- c()
for (i in ast_subNew$LungFunctionFEV1){
  if(!is.na(i)){
    valid_values <- c(valid_values, i)
  }
}
mean_value <- mean(valid_values)
print(mean_value)
ast_subNew$LungFunctionFEV1[is.na(ast_subNew$LungFunctionFEV1)] <- mean_value

# LungFunctionFVC cleaning
ast_subNew$LungFunctionFVC <- as.character(ast_subNew$LungFunctionFVC)
ast_subNew$LungFunctionFVC <- na_if(ast_subNew$LungFunctionFVC, "unknown")
ast_subNew$LungFunctionFVC <- na_if(ast_subNew$LungFunctionFVC, "?")
ast_subNew$LungFunctionFVC <- as.numeric(ast_subNew$LungFunctionFVC)
valid_values <- c()
for (i in ast_subNew$LungFunctionFVC){
  if(!is.na(i)){
    valid_values <- c(valid_values, i)
  }
}
mean_value <- mean(valid_values)
print(mean_value)
ast_subNew$LungFunctionFVC[is.na(ast_subNew$LungFunctionFVC)] <- mean_value

# Wheezing cleaning
ast_subNew$Wheezing <- as.character(ast_subNew$Wheezing)
ast_subNew$Wheezing <- na_if(ast_subNew$Wheezing, "unknown")
ast_subNew$Wheezing <- na_if(ast_subNew$Wheezing, "?")
ast_subNew$Wheezing <- as.integer(ast_subNew$Wheezing)
mode_value <- get_mode(ast_subNew$Wheezing)
ast_subNew$Wheezing[is.na(ast_subNew$Wheezing)] <- mode_value

# ShortnessOfBreath cleaning
ast_subNew$ShortnessOfBreath <- as.character(ast_subNew$ShortnessOfBreath)
ast_subNew$ShortnessOfBreath <- na_if(ast_subNew$ShortnessOfBreath, "unknown")
ast_subNew$ShortnessOfBreath <- na_if(ast_subNew$ShortnessOfBreath, "?")
ast_subNew$ShortnessOfBreath <- as.integer(ast_subNew$ShortnessOfBreath)
mode_value <- get_mode(ast_subNew$ShortnessOfBreath)
ast_subNew$ShortnessOfBreath[is.na(ast_subNew$ShortnessOfBreath)] <- mode_value

# ChestTightness cleaning
ast_subNew$ChestTightness <- as.character(ast_subNew$ChestTightness)
ast_subNew$ChestTightness <- na_if(ast_subNew$ChestTightness, "unknown")
ast_subNew$ChestTightness <- na_if(ast_subNew$ChestTightness, "?")
ast_subNew$ChestTightness <- as.integer(ast_subNew$ChestTightness)
mode_value <- get_mode(ast_subNew$ChestTightness)
ast_subNew$ChestTightness[is.na(ast_subNew$ChestTightness)] <- mode_value

# Coughing cleaning
ast_subNew$Coughing <- as.character(ast_subNew$Coughing)
ast_subNew$Coughing <- na_if(ast_subNew$Coughing, "unknown")
ast_subNew$Coughing <- na_if(ast_subNew$Coughing, "?")
ast_subNew$Coughing <- as.integer(ast_subNew$Coughing)
mode_value <- get_mode(ast_subNew$Coughing)
ast_subNew$Coughing[is.na(ast_subNew$Coughing)] <- mode_value

# NighttimeSymptoms cleaning
ast_subNew$NighttimeSymptoms <- as.character(ast_subNew$NighttimeSymptoms)
ast_subNew$NighttimeSymptoms <- na_if(ast_subNew$NighttimeSymptoms, "unknown")
ast_subNew$NighttimeSymptoms <- na_if(ast_subNew$NighttimeSymptoms, "?")
ast_subNew$NighttimeSymptoms <- as.integer(ast_subNew$NighttimeSymptoms)
mode_value <- get_mode(ast_subNew$NighttimeSymptoms)
ast_subNew$NighttimeSymptoms[is.na(ast_subNew$NighttimeSymptoms)] <- mode_value

# ExerciseInduced cleaning
ast_subNew$ExerciseInduced <- as.character(ast_subNew$ExerciseInduced)
ast_subNew$ExerciseInduced <- na_if(ast_subNew$ExerciseInduced, "unknown")
ast_subNew$ExerciseInduced <- na_if(ast_subNew$ExerciseInduced, "?")
ast_subNew$ExerciseInduced <- as.integer(ast_subNew$ExerciseInduced)
mode_value <- get_mode(ast_subNew$ExerciseInduced)
ast_subNew$ExerciseInduced[is.na(ast_subNew$ExerciseInduced)] <- mode_value
# BMI cleaning
ast_subNew$BMI <- as.character(ast_subNew$BMI)
ast_subNew$BMI <- na_if(ast_subNew$BMI, "unknown")
ast_subNew$BMI <- na_if(ast_subNew$BMI, "?")
ast_subNew$BMI <- as.numeric(ast_subNew$BMI)
valid_values <- c()
for (i in ast_subNew$BMI){
  if(!is.na(i)){
    valid_values <- c(valid_values, i)
  }
}
mean_value <- mean(valid_values)
print(mean_value)
ast_subNew$BMI[is.na(ast_subNew$BMI)] <- mean_value

# DietQuality cleaning
ast_subNew$DietQuality <- as.character(ast_subNew$DietQuality)
ast_subNew$DietQuality <- na_if(ast_subNew$DietQuality, "unknown")
ast_subNew$DietQuality <- na_if(ast_subNew$DietQuality, "?")
ast_subNew$DietQuality <- gsub("_","", ast_subNew$DietQuality)
ast_subNew$DietQuality <- as.numeric(ast_subNew$DietQuality)
valid_values <- c()
for (i in ast_subNew$DietQuality){
  if(!is.na(i)){
    valid_values <- c(valid_values, i)
  }
}
mean_value <- mean(valid_values)
print(mean_value)
ast_subNew$DietQuality[is.na(ast_subNew$DietQuality)] <- mean_value

# SleepQuality cleaning
ast_subNew$SleepQuality <- as.character(ast_subNew$SleepQuality)
ast_subNew$SleepQuality <- na_if(ast_subNew$SleepQuality, "unknown")
ast_subNew$SleepQuality <- na_if(ast_subNew$SleepQuality, "?")
ast_subNew$SleepQuality <- gsub("_","", ast_subNew$SleepQuality)
ast_subNew$SleepQuality <- as.numeric(ast_subNew$SleepQuality)
valid_values <- c()
for (i in ast_subNew$SleepQuality){
  if(!is.na(i)){
    valid_values <- c(valid_values, i)
  }
}
mean_value <- mean(valid_values)
print(mean_value)
ast_subNew$SleepQuality[is.na(ast_subNew$SleepQuality)] <- mean_value


# PollenExposure cleaning
ast_subNew$PollenExposure <- as.character(ast_subNew$PollenExposure)
ast_subNew$PollenExposure <- na_if(ast_subNew$PollenExposure, "unknown")
ast_subNew$PollenExposure <- na_if(ast_subNew$PollenExposure, "?")
ast_subNew$PollenExposure <- as.numeric(ast_subNew$PollenExposure)
valid_values <- c()
for (i in ast_subNew$PollenExposure){
  if(!is.na(i)){
    valid_values <- c(valid_values, i)
  }
}
mean_value <- mean(valid_values)
print(mean_value)
ast_subNew$PollenExposure[is.na(ast_subNew$PollenExposure)] <- mean_value

# DustExposure cleaning
ast_subNew$DustExposure <- as.character(ast_subNew$DustExposure)
ast_subNew$DustExposure <- na_if(ast_subNew$DustExposure, "unknown")
ast_subNew$DustExposure <- na_if(ast_subNew$DustExposure, "?")
ast_subNew$DustExposure <- as.numeric(ast_subNew$DustExposure)
valid_values <- c()
for (i in ast_subNew$DustExposure){
  if(!is.na(i)){
    valid_values <- c(valid_values, i)
  }
}
mean_value <- mean(valid_values)
print(mean_value)
ast_subNew$DustExposure[is.na(ast_subNew$DustExposure)] <- mean_value

#Pollution cleaning
ast_subNew$PollutionExposure <- as.character(ast_subNew$PollutionExposure)
ast_subNew$PollutionExposure <- na_if(ast_subNew$PollutionExposure, "unknown")
ast_subNew$PollutionExposure <- na_if(ast_subNew$PollutionExposure, "?")
ast_subNew$PollutionExposure <- as.numeric(ast_subNew$PollutionExposure)
valid_values <- c()
for (i in ast_subNew$PollutionExposure){
  if(!is.na(i)){
    valid_values <- c(valid_values, i)
  }
}
mean_value <- mean(valid_values)  # No need for na.rm = TRUE since NA values are already excluded
print(mean_value)
ast_subNew$PollutionExposure[is.na(ast_subNew$PollutionExposure)] <- mean_value

#Diagnosis
ast_subNew$Diagnosis <- as.character(ast_subNew$Diagnosis)
ast_subNew$Diagnosis <- na_if(ast_subNew$Diagnosis, "unknown")
ast_subNew$Diagnosis <- na_if(ast_subNew$Diagnosis, "?")
ast_subNew$Diagnosis <- as.integer(ast_subNew$Diagnosis)
mode_value <- get_mode(ast_subNew$Diagnosis)
mode_value
# Replace NA values in the Smoking column with the mode
ast_subNew$Diagnosis[is.na(ast_subNew$Diagnosis)] <- mode_value
# Save the cleaned data if necessary
write.csv(ast_subNew, "cleaned_asthma_dataset.csv", row.names = FALSE)
