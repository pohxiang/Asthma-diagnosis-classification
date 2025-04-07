library(dplyr)

asthmadataset = read.csv("cleaned.csv") # Load Dataset


# Checking people who is and not diagnosed with Asthma
diag <- asthmadataset[, "Diagnosis"]
diag <- ifelse(diag == 1, "YES", "NO") # Replace the 1 and 0 with yes & no

# Check people who and is not diagnosed with asthma with smoking and not smoking
smok <- asthmadataset[, "Smoking"]
smok <- ifelse(smok == 1, "YES", "NO") # Replace the 1 and 0 with yes & no

# PhysicalA]ctivity: Weekly physical activity in hours, ranging from 0 to 10. Less than 4 is low
phyA <- asthmadataset[, "PhysicalActivity"]
phyA <- ifelse(phyA < 4, "<4", ">4")



# Pet Allergy
petA = asthmadataset[, "PetAllergy"]
petA = ifelse(petA == 1, "Yes", "No")

# Family History Asthma
fha = asthmadataset[, "FamilyHistoryAsthma"]
fha = ifelse(fha == 1, "Yes", "No")

#Coughing
cough = asthmadataset[, "Coughing"]
cough = ifelse(cough == 1, "Yes", "No")

#Wheezing
wheeze = asthmadataset[, "Wheezing"]
wheeze = ifelse(wheeze == 1, "Yes", "No")

#Exercise Induced
exer = asthmadataset[, "ExerciseInduced"]
exer = ifelse(exer == 1, "Yes", "No")

#Chest Tightness
chest = asthmadataset[, "ChestTightness"]
chest = ifelse(chest == 1, "Yes", "No")

#BMI
bmi = asthmadataset[, "BMI"]
bmi = ifelse(bmi < 25, "Normal", "Overweight")



# Pollution Exposure (X)
pe = asthmadataset[, "PollutionExposure"]
pe = ifelse(pe > 2 , "Yes", "No")

#Dust Exposure (X)
dust = asthmadataset[, "DustExposure"]
dust = ifelse(dust >2 , "Yes", "No")

# LungFunction FEV1 (X)
fev1 = asthmadataset[, "LungFunctionFEV1"]
fev1 = ifelse(fev1 < 3, "Low", "Normal")

# LungFunction FVC (X)
fvc = asthmadataset[, "LungFunctionFVC"]
fvc = ifelse(fvc < 4, "Low", "Normal")

# Pollen (X)
pollen = asthmadataset[, "PollenExposure"]
pollen = ifelse(pollen > 5, "Yes", "No")


table(diag,bmi)


