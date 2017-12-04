#' @title Find Inconsistent Active Status
#' @description Identify students who have different statuses in PowerSchool and the Workbook
#' @param psStudentsRaw an export from the students table in PowerSchool
#' @param Workbook a data.frame of the All Info tab from the workbook
#' @return either a dataframe of issues or numeric(0) if there are no issues
FindInconsistentActiveStatus = function(psStudentsRaw, Workbook){

  InPS = psStudentsRaw$student_number                                                      # students in PS
  ActiveInPS = psStudentsRaw$student_number[psStudentsRaw$Enroll_Status == 0]              # students active in PS
  InWorkbook = Workbook$`Local.ID.(optional)`                                              # students in wkbk
  ActiveInWorkbook = Workbook$`Local.ID.(optional)`[(Workbook$`Still.Enrolled?` == "yes")] # students active in wkbk
  inBoth = intersect(InWorkbook, InPS)                                                     # students in both wkbk and PS
  InactiveInWorkbook = setdiff(InWorkbook, ActiveInWorkbook)                               # students inactive in wkbk
  ActiveInPS.InactiveInWkbk = intersect(ActiveInPS, InactiveInWorkbook)                    # students active PS, inactive in wkbk
  ActiveInPS.NotInWorkbook = setdiff(ActiveInPS, InWorkbook)                               # students active PS, not in wkbk
  ActiveInWorkbook.InactiveInPS = setdiff(intersect(ActiveInWorkbook,InPS), ActiveInPS)    # students active in wkbk, inactive in PS
  ActiveInWorkbook.NotInPS = setdiff(ActiveInWorkbook, InPS)                               # students active in wkbk, not in PS

  # Compile information into one readable table
  inconsistencies = unique(c(ActiveInPS.InactiveInWkbk, ActiveInPS.NotInWorkbook, ActiveInWorkbook.InactiveInPS, ActiveInWorkbook.NotInPS))
  if(length(inconsistencies) > 0){
    inconsistencies = data.frame(Student.ID = inconsistencies)
    inconsistencies$PS = "Not There"
    inconsistencies$Wkbk = "Not There"
    for(j in 1:nrow(inconsistencies)){
      if(inconsistencies$Student.ID[j] %in% ActiveInPS){
        inconsistencies$PS = "Active"
      } else if (inconsistencies$Student.ID[j] %in% InPS){
        inconsistencies$PS = "Inactive"
      }
      if(inconsistencies$Student.ID[j] %in% ActiveInWorkbook){
        inconsistencies$PS = "Active"
      } else if (inconsistencies$Student.ID[j] %in% InWorkbook){
        inconsistencies$PS = "Inactive"
      }
    }

  }
  return(inconsistencies)
} # /function