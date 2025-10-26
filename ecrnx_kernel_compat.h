#ifndef _ECRNX_KERNEL_COMPAT_H_
#define _ECRNX_KERNEL_COMPAT_H_

#include <linux/version.h>

#ifdef ECRNX_MODERN_KERNEL
#define ECRNX_STA_PARAMS(params) (&(params)->link_sta_params)
#define ECRNX_HT_SUPPORTED(params) ((params)->link_sta_params.ht_cap.ht_supported)
#define ECRNX_VHT_SUPPORTED(params) ((params)->link_sta_params.vht_cap.vht_supported)
#define ECRNX_HE_SUPPORTED(params) ((params)->he_link_adaptation.max_ti_tx_mcs)
#else
#define ECRNX_STA_PARAMS(params) (params)
#define ECRNX_HT_SUPPORTED(params) ((params)->ht_capa)
#define ECRNX_VHT_SUPPORTED(params) ((params)->vht_capa)
#define ECRNX_HE_SUPPORTED(params) ((params)->he_capa)
#endif

#endif /* _ECRNX_KERNEL_COMPAT_H_ */