# why formatting matters
# see increased legibility from version 1 to version 2

# version 1

ranks_of_interest <- c("Phylum", "Class", "Order", "Family", "Genus")
summary_list <- list()
for (rank in ranks_of_interest){
            summary_mat <- summarize_taxa(diet_ps, Rank = rank, normalize = TRUE)
  summary_df <- data.frame(SampleID = diet_ps@sam_data$SampleID, summary_mat) %>% plyr::rename(c("Unassigned" = paste(rank, "_Unassigned")))
  summary_list[[rank]] <- summary_df}
taxa_summaries <- Reduce(left_join, summary_list)
formatted_metadata <- select(diet_ps@sam_data, SampleID, Group, old_record_id, CollectionTime) %>% 
dplyr::rename(Timepoint = CollectionTime) %>%
  dplyr::rename(Participant = old_record_id)
taxa_summaries <- left_join(formatted_metadata, taxa_summaries)
taxa_summaries$Timepoint <- as.numeric(taxa_summaries$Timepoint)

## version 2

ranks_of_interest <- c("Phylum", "Class", "Order", "Family", "Genus")

summary_list <- list()

for (rank in ranks_of_interest){
  
  summary_mat <- summarize_taxa(diet_ps, Rank = rank, normalize = TRUE)
  
  summary_df <- data.frame(SampleID = diet_ps@sam_data$SampleID, summary_mat) %>% 
                            plyr::rename(c("Unassigned" = paste(rank, "_Unassigned")))
  
  summary_list[[rank]] <- summary_df
  
}

taxa_summaries <- Reduce(left_join, summary_list)

formatted_metadata <- select(diet_ps@sam_data, SampleID, Group, old_record_id, CollectionTime) %>% 
                      dplyr::rename(Timepoint = CollectionTime) %>%
                      dplyr::rename(Participant = old_record_id)

taxa_summaries <- left_join(formatted_metadata, taxa_summaries)

taxa_summaries$Timepoint <- as.numeric(taxa_summaries$Timepoint)


