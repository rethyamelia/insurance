#' Parameter Premium
#' @param coverage nilai pertanggungan
#' @param rate nilai rate atas pertanggungan
#' @param periode berapa lama pertanggungan tersebut di asuransikan (tahun)
#' @return nilai premi
#' @examples
#' premium1<- premium(1000000,0.019,0.8)
#' premium2 <- premium(5000000,0.0433)
#' @export
premium <-function(coverage, rate, periode=1){
    premium_value <- coverage*rate*periode
return(premium_value)
}

#' Parameter commission
#' @param premi nilai premi pertanggungan asuransi pada periode tertentu
#' @param presentase_komisi komisi yang akan diberikan kepada tertanggung
#' @return nilai komisi untuk tertanggung
#' @examples
#' commission1 <- commission(200000*0.25)
#' commission2 <- commission(5000*0.35)
#' @export

commission <-function(premi, presentase_komisi){
    commission_value <-premium*presentase_komisi
return(commission_value)
}

#' parameter loss_ratio
#' @param premi nilai premi
#' @param klaim nilai klaim
#' @return loss ratio dari pertanggungan asuransi
#' @examples
#' loss_ratio1 <-(50000,10000)
#' loss_ratio2 <-(2000000,2500000)
#' @export

loss_ratio <-function(premi, klaim){
    loss_ratio_value <-(klaim/premi)*100
return(loss_ratio_value)
}

