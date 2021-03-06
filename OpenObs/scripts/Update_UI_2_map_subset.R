#######subset_1########
if(subset_1_valid){
  if(subset_1){
    map_subset_1_value <- input$map_subset_1
    map_dat_cut[,subset_1_names] <- factor(map_dat_cut[,subset_1_names])
    if("tous"%in%map_subset_1_value) {
      if (length(map_subset_1_value) > 1){
        if(map_subset_1_value == "tous") {
          observe({
            updateSelectInput(session,"map_subset_1",label = label1_select_1, choices = c("tous",levels(map_dat_cut[,subset_1_names])),selected = map_subset_1_value[2])
          })
        } else {
          observe({
            updateSelectInput(session,"map_subset_1",label = label1_select_1, choices = c("tous",levels(map_dat_cut[,subset_1_names])),selected = map_subset_1_value[-1])
          })
        }
      } else {
        observe({
          updateSelectInput(session,"map_subset_1",label = label1_select_1, choices = c("tous",levels(map_dat_cut[,subset_1_names])),selected = "tous")
        })
      }
    }
  } else {
    map_subset_1_2_value <- input$map_subset_1_2
    map_subset_1_1_value <- input$map_subset_1_1
    
    map_dat_cut[,paste("subset_1~",map_subset_1_1_value,sep="")] <- factor(map_dat_cut[,paste("subset_1~",map_subset_1_1_value,sep="")])
    if ("tous"%in%map_subset_1_2_value) {
      if (length(map_subset_1_2_value) > 1 ){
        if(map_subset_1_2_value[1] == "tous") {
          observe({
            updateSelectInput(session,"map_subset_1_2",label = paste('Choisissez ',map_subset_1_1_value),choices = c("tous",levels(map_dat_cut[,paste("subset_1~",map_subset_1_1_value,sep="")])),selected = map_subset_1_2_value[2])
          })
        } else {
          observe({
            updateSelectInput(session,"map_subset_1_2",label = paste('Choisissez ',map_subset_1_1_value),choices = c("tous",levels(map_dat_cut[,paste("subset_1~",map_subset_1_1_value,sep="")])),selected = map_subset_1_2_value[length(map_subset_1_2_value)])
          })
        }
      } else {
        observe({
          updateSelectInput(session,"map_subset_1_2",label = paste('Choisissez ',map_subset_1_1_value),choices = c("tous",levels(map_dat_cut[,paste("subset_1~",map_subset_1_1_value,sep="")])),selected = "tous")
        })
      }
    } 
  }
}

#######subset_2########
if(subset_2_valid){
  if(subset_2){
    map_subset_2_value <- input$map_subset_2
    map_dat_cut[,subset_2_names] <- factor(map_dat_cut[,subset_2_names])
    if("tous"%in%map_subset_2_value) {
      if (length(map_subset_2_value) > 1){
        if (map_subset_2_value[1] == "tous"){
          observe({
            updateSelectInput(session,"map_subset_2",label = label2_select_1, choices = c("tous",levels(map_dat_cut[,subset_2_names])),selected = map_subset_2_value[2])
          })
        } else {
          observe({
            updateSelectInput(session,"map_subset_2",label = label2_select_1, choices = c("tous",levels(map_dat_cut[,subset_2_names])),selected = map_subset_2_value[-1])
          })
        }
      } else {
        observe({
          updateSelectInput(session,"map_subset_2",label = label2_select_1, choices = c("tous",levels(map_dat_cut[,subset_2_names])),selected = "tous")
        })
      }
      
    }
  } else {
    map_subset_2_2_value <- input$map_subset_2_2
    map_subset_2_1_value <- input$map_subset_2_1
    
    map_dat_cut[,paste("subset_2~",map_subset_2_1_value,sep="")] <- factor(map_dat_cut[,paste("subset_2~",map_subset_2_1_value,sep="")])
    if ("tous"%in%map_subset_2_2_value) {
      if (length(map_subset_2_2_value) > 1 ){
        if(map_subset_2_2_value[1] == "tous") {
          observe({
            updateSelectInput(session,"map_subset_2_2",label = paste('Choisissez ',map_subset_2_1_value),choices = c("tous",levels(map_dat_cut[,paste("subset_2~",map_subset_2_1_value,sep="")])),selected = map_subset_2_2_value[2])
          })
        } else {
          observe({
            updateSelectInput(session,"map_subset_2_2",label = paste('Choisissez ',map_subset_2_1_value),choices = c("tous",levels(map_dat_cut[,paste("subset_2~",map_subset_2_1_value,sep="")])),selected = map_subset_2_2_value[length(map_subset_2_2_value)])
          })
        }
      } else {
        observe({
          updateSelectInput(session,"map_subset_2_2",label = paste('Choisissez ',map_subset_2_1_value),choices = c("tous",levels(map_dat_cut[,paste("subset_2~",map_subset_2_1_value,sep="")])),selected = "tous")
        })
      }
    }
  }
}

#######subset_3########
if(subset_3_valid){
  if(subset_3){
    map_subset_3_value <- input$map_subset_3
    map_dat_cut[,subset_3_names] <- factor(map_dat_cut[,subset_3_names])
    if("tous"%in%map_subset_3_value) {
      if (length(map_subset_3_value) > 1){
        if (map_subset_3_value[1] =="tous"){
          observe({
            updateSelectInput(session,"map_subset_3",label = label3_select_1, choices = c("tous",levels(map_dat_cut[,subset_3_names])),selected = map_subset_3_value[2])
          })
        } else {
          observe({
            updateSelectInput(session,"map_subset_3",label = label3_select_1, choices = c("tous",levels(map_dat_cut[,subset_3_names])),selected = map_subset_3_value[-1])
          })
        }
      } else {
        observe({
          updateSelectInput(session,"map_subset_3",label = label3_select_1, choices = c("tous",levels(map_dat_cut[,subset_3_names])),selected = "tous")
        })
      }
    }
  } else {
    map_subset_3_2_value <- input$map_subset_3_2
    map_subset_3_1_value <- input$map_subset_3_1
    
    map_dat_cut[,paste("subset_3~",map_subset_3_1_value,sep="")] <- factor(map_dat_cut[,paste("subset_3~",map_subset_3_1_value,sep="")])
    if ("tous"%in%map_subset_3_2_value) {
      if (length(map_subset_3_2_value) > 1){
        if(map_subset_3_2_value[1] == "tous") {
          observe({
            updateSelectInput(session,"map_subset_3_2",label = paste('Choisissez ',map_subset_3_1_value),choices = c("tous",levels(map_dat_cut[,paste("subset_3~",map_subset_3_1_value,sep="")])),selected = map_subset_3_2_value[2])
          })
        } else {
          observe({
            updateSelectInput(session,"map_subset_3_2",label = paste('Choisissez ',map_subset_3_1_value),choices = c("tous",levels(map_dat_cut[,paste("subset_3~",map_subset_3_1_value,sep="")])),selected = map_subset_3_2_value[length(map_subset_3_2_value)])
          })
        }
      } else {
        observe({
          updateSelectInput(session,"map_subset_3_2",label = paste('Choisissez ',map_subset_3_1_value),choices = c("tous",levels(map_dat_cut[,paste("subset_3~",map_subset_3_1_value,sep="")])),selected = "tous")
        })
      }
    } 
  }
}

#######subset_4########
if(subset_4_valid){
  if(subset_4){
    map_subset_4_value <- input$map_subset_4
    map_dat_cut[,subset_4_names] <- factor(map_dat_cut[,subset_4_names])
    if("tous"%in%map_subset_4_value) {
      if (length(map_subset_4_value) > 1){
        if (map_subset_4_value[1] =="tous"){
          observe({
            updateSelectInput(session,"map_subset_4",label = label4_select_1, choices = c("tous",levels(map_dat_cut[,subset_4_names])),selected = map_subset_4_value[2])
          })
        } else {
          observe({
            updateSelectInput(session,"map_subset_4",label = label4_select_1, choices = c("tous",levels(map_dat_cut[,subset_4_names])),selected = map_subset_4_value[-1])
          })
        }
      } else {
        observe({
          updateSelectInput(session,"map_subset_4",label = label4_select_1, choices = c("tous",levels(map_dat_cut[,subset_4_names])),selected = "tous")
        })
      }
    }
  } else {
    map_subset_4_2_value <- input$map_subset_4_2
    map_subset_4_1_value <- input$map_subset_4_1
    
    map_dat_cut[,paste("subset_4~",map_subset_4_1_value,sep="")] <- factor(map_dat_cut[,paste("subset_4~",map_subset_4_1_value,sep="")])
    if ("tous"%in%map_subset_4_2_value) {
      if (length(map_subset_4_2_value) > 1 ){
        if(map_subset_4_2_value[1] == "tous") {
          observe({
            updateSelectInput(session,"map_subset_4_2",label = paste('Choisissez ',map_subset_4_1_value),choices = c("tous",levels(map_dat_cut[,paste("subset_4~",map_subset_4_1_value,sep="")])),selected = map_subset_4_2_value[2])
          })
        } else {
          observe({
            updateSelectInput(session,"map_subset_4_2",label = paste('Choisissez ',map_subset_4_1_value),choices = c("tous",levels(map_dat_cut[,paste("subset_4~",map_subset_4_1_value,sep="")])),selected = map_subset_4_2_value[length(map_subset_4_2_value)])
          })
        }
      } else {
        observe({
          updateSelectInput(session,"map_subset_4_2",label = paste('Choisissez ',map_subset_4_1_value),choices = c("tous",levels(map_dat_cut[,paste("subset_4~",map_subset_4_1_value,sep="")])),selected = "tous")
        })
      }
    } 
  }
}

