observeEvent(input$map_reset_input, {
  if(subset_1_valid){
    if (subset_1){
      updateSelectInput(session,"map_subset_1",label= paste("Choisissez",label1_select_1),choices = c("tous",levels(dat[,subset_1_names])),selected = "tous")
    } else {
      updateSelectInput(session,"map_subset_1_1",label = label1_select_2,choices = c(substring(subset_1_names,10)))
      map_subset_1_1_value <- input$map_subset_1_1
      updateSelectInput(session,"map_subset_1_2",label = paste('Choisissez ',map_subset_1_1_value),choices = c("tous",levels(dat[,paste("subset_1~",map_subset_1_1_value,sep="")])),selected ="tous")
    }
  }
  
  if(subset_2_valid){
    if (subset_2){
      updateSelectInput(session,"map_subset_2",label= paste("Choisissez",label2_select_2),choices = c("tous",levels(dat[,subset_2_names])),selected = "tous")
    } else {
      updateSelectInput(session,"map_subset_2_1",label = label2_select_2,choices = c(substring(subset_2_names,10)))
      map_subset_2_1_value <- input$map_subset_2_1
      updateSelectInput(session,"map_subset_2_2",label = paste('Choisissez ',map_subset_2_1_value),choices = c("tous",levels(dat[,paste("subset_2~",map_subset_2_1_value,sep="")])),selected ="tous")    }
  }
  
  if(subset_3_valid){
    if (subset_3){
      updateSelectInput(session,"map_subset_3",label= paste("Choisissez",label3_select_2),choices = c("tous",levels(dat[,subset_3_names])),selected = "tous")
    } else {
      updateSelectInput(session,"map_subset_3_1",label = label3_select_2,choices = c(substring(subset_3_names,10)))
      map_subset_3_1_value <- input$map_subset_3_1
      updateSelectInput(session,"map_subset_3_2",label = paste('Choisissez ',map_subset_3_1_value),choices = c("tous",levels(dat[,paste("subset_3~",map_subset_3_1_value,sep="")])),selected ="tous")
    }
  }
  
  if(subset_4_valid){
    if (subset_4){
      updateSelectInput(session,"map_subset_4",label= paste("Choisissez",label4_select_2),choices = c("tous",levels(dat[,subset_4_names])),selected = "tous")
    } else {
      updateSelectInput(session,"map_subset_4_1",label = label4_select_2,choices = c(substring(subset_4_names,10)))
      map_subset_4_1_value <- input$map_subset_4_1
      updateSelectInput(session,"map_subset_4_2",label = paste('Choisissez ',map_subset_4_1_value),choices = c("tous",levels(dat[,paste("subset_4~",map_subset_4_1_value,sep="")])),selected = "tous")
    }
  }
})