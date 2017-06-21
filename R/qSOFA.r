#' Calculate qSOFA (Quick Sepsis-Related Organ Failure Assessment) Following Sepsis Guideline 3
#' 
#' You need input 3 values; GCS, RR, sBP
#' 
#' @param gcs GCS =< 13 : default input gcs = 1
#' @param rr RR >= 2 : default input rr = 1
#' @param sbp sBP <= 100 : default input sbp = 1
#' @keywords qSOFA
#' @export
#' @examples 
#' qSOFA(1,1,2)

qSOFA <- function(gcs = 1, rr = 1, sbp = 1){
        p <- gcs+rr+sbp
        if(p >= 2)
                print("This patient has high risk of sepsis!(Mortality >= 10)%")
        else
                print("This patient has low risk of sepsis, but you should keep re-evaluate.")
}