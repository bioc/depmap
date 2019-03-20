#' rnai
#'
#' Genetic Dependency Combined RNAi dataset (Broad, Novartis, Marcotte) 
#' originating from the `D2_combined_genetic_dependency_scores` file. Data from 
#' RNAi dataset including 17309 Genes, 711 Cell Lines 711, 30 Primary Diseases
#' and 31 Lineages. The first column is the DepMap ID# of the cell lineage and 
#' the second column is the CCLE name for that cell line. The remaining columns 
#' consist of the numerical dependency score values of the select genes. 
#'
#' @format A data frame with 711 rows (cell lines) and columns with dependency 
#' scores from 17311 genes:
#' \describe{
#'    \item{depmapID}{cell line foreign key (i.e. "ACH-00001")}
#'    \item{cellLine}{Name of cancer cell line (i.e. "184A1_BREAST")}
#'    \item{gene}{Name of gene (i.e. "SF3B1 (23451)")}
#' }
#' 
#' @details This data represents the `D2_combined_genetic_dependency_scores` 
#' dataset taken from the public depmap portal. This dataset was transposed to 
#' have the same orientation as the other depmap datasets (cell lines as rows 
#' and genes as columns). This dataset features the addition of a foreign key
#' (depmapID) found in the first column of this dataset, which was added from 
#' the `metadata` dataset. The dataset was also sorted so that the rows of 
#' depmapID were consecutive. One cell line "GISTT1_GASTROINTESTINAL_TRACT" was 
#' removed from the `D2_combined_genetic_dependency_scores` data due to this 
#' cell line not being given a depmapID foreign key in `metadata` and was 
#' present in no other dataset. Additionally, two cell line rows were manually
#' edited: cell line "AZ521_STOMACH" was changed to "AZ521_SMALL_INTESTINE" and 
#' was manually be altered and given the correct depmapID "ACH-001015". Cell 
#' line "SW527_BREAST" had to be manually be given the correct depmapID 
#' "ACH-001825"
#' 
#' @docType data
#'
#' @usage data(rnai)
#'
#' @keywords datasets
#'
#' @references Tsherniak, A., Vazquez, F., Montgomery, P. G., Weir, B. A.,
#' Kryukov, G., Cowley, G. S., ... & Meyers, R. M. (2017). Defining a cancer
#' dependency map. Cell, 170(3), 564-576.
#' (\href{"https://www.ncbi.nlm.nih.gov/pubmed/28753430"}{PubMed})
#'
#' @source \href{"https://depmap.org/portal/download/"}{DepMap, Broad (2019)}
#'
#' @examples
#' data(rnai)
#' rnai
"rnai"