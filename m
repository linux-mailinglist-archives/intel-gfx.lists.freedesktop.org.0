Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D683D45AEC7
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Nov 2021 22:56:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0943A6E0DC;
	Tue, 23 Nov 2021 21:56:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 431FE6E073
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Nov 2021 21:56:01 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10177"; a="215850280"
X-IronPort-AV: E=Sophos;i="5.87,258,1631602800"; d="scan'208";a="215850280"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Nov 2021 13:56:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,258,1631602800"; d="scan'208";a="553592429"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by fmsmga008.fm.intel.com with ESMTP; 23 Nov 2021 13:55:59 -0800
Received: from [10.249.159.246] (mwajdecz-MOBL.ger.corp.intel.com
 [10.249.159.246])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 1ANLtwxw021312; Tue, 23 Nov 2021 21:55:59 GMT
Message-ID: <e3ef71c3-5801-32b2-3722-4c8661d43189@intel.com>
Date: Tue, 23 Nov 2021 22:55:58 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.3.1
Content-Language: en-US
To: Alan Previn <alan.previn.teres.alexis@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20211122230402.2023576-1-alan.previn.teres.alexis@intel.com>
 <20211122230402.2023576-4-alan.previn.teres.alexis@intel.com>
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
In-Reply-To: <20211122230402.2023576-4-alan.previn.teres.alexis@intel.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [RFC 3/7] drm/i915/guc: Populate XE_LP register
 lists for GuC error state capture.
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 23.11.2021 00:03, Alan Previn wrote:
> Add device specific tables and register lists to cover different engines
> class types for GuC error state capture.
> 
> Also, add runtime allocation and freeing of extended register lists
> for registers that need steering identifiers that depend on
> the detected HW config.
> 
> Signed-off-by: Alan Previn <alan.previn.teres.alexis@intel.com>
> ---
>  .../gpu/drm/i915/gt/uc/intel_guc_capture.c    | 260 +++++++++++++-----
>  .../gpu/drm/i915/gt/uc/intel_guc_capture.h    |   2 +
>  drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h   |   2 +
>  3 files changed, 197 insertions(+), 67 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
> index c741c77b7fc8..eec1d193ac26 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
> @@ -9,120 +9,245 @@
>  #include "i915_drv.h"
>  #include "i915_memcpy.h"
>  #include "gt/intel_gt.h"
> +#include "gt/intel_lrc_reg.h"
>  
>  #include "intel_guc_fwif.h"
>  #include "intel_guc_capture.h"
>  
> -/* Define all device tables of GuC error capture register lists */
> +/*
> + * Define all device tables of GuC error capture register lists
> + * NOTE: For engine-registers, GuC only needs the register offsets
> + *       from the engine-mmio-base
> + */
> +#define COMMON_GEN12BASE_GLOBAL() \
> +	{GEN12_FAULT_TLB_DATA0,    0,      0, "GEN12_FAULT_TLB_DATA0"}, \
> +	{GEN12_FAULT_TLB_DATA1,    0,      0, "GEN12_FAULT_TLB_DATA1"}, \
> +	{FORCEWAKE_MT,             0,      0, "FORCEWAKE_MT"}, \
> +	{DERRMR,                   0,      0, "DERRMR"}, \
> +	{GEN12_AUX_ERR_DBG,        0,      0, "GEN12_AUX_ERR_DBG"}, \
> +	{GEN12_GAM_DONE,           0,      0, "GEN12_GAM_DONE"}, \
> +	{GEN11_GUC_SG_INTR_ENABLE, 0,      0, "GEN11_GUC_SG_INTR_ENABLE"}, \
> +	{GEN11_CRYPTO_RSVD_INTR_ENABLE, 0, 0, "GEN11_CRYPTO_RSVD_INTR_ENABLE"}, \
> +	{GEN11_GUNIT_CSME_INTR_ENABLE, 0,  0, "GEN11_GUNIT_CSME_INTR_ENABLE"}, \
> +	{GEN12_RING_FAULT_REG,     0,      0, "GEN12_RING_FAULT_REG"}
> +
> +#define COMMON_GEN12BASE_ENGINE_INSTANCE() \
> +	{RING_PSMI_CTL(0),         0,      0, "RING_PSMI_CTL"}, \
> +	{RING_ESR(0),              0,      0, "RING_ESR"}, \
> +	{RING_ESR(0),              0,      0, "RING_ESR"}, \
> +	{RING_DMA_FADD(0),         0,      0, "RING_DMA_FADD_LOW32"}, \
> +	{RING_DMA_FADD_UDW(0),     0,      0, "RING_DMA_FADD_UP32"}, \
> +	{RING_IPEIR(0),            0,      0, "RING_IPEIR"}, \
> +	{RING_IPEHR(0),            0,      0, "RING_IPEHR"}, \
> +	{RING_INSTPS(0),           0,      0, "RING_INSTPS"}, \
> +	{RING_BBADDR(0),           0,      0, "RING_BBADDR_LOW32"}, \
> +	{RING_BBADDR_UDW(0),       0,      0, "RING_BBADDR_UP32"}, \
> +	{RING_BBSTATE(0),          0,      0, "RING_BBSTATE"}, \
> +	{CCID(0),                  0,      0, "CCID"}, \
> +	{RING_ACTHD(0),            0,      0, "RING_ACTHD_LOW32"}, \
> +	{RING_ACTHD_UDW(0),        0,      0, "RING_ACTHD_UP32"}, \
> +	{RING_INSTPM(0),           0,      0, "RING_INSTPM"}, \
> +	{RING_NOPID(0),            0,      0, "RING_NOPID"}, \
> +	{RING_START(0),            0,      0, "RING_START"}, \
> +	{RING_HEAD(0),             0,      0, "RING_HEAD"}, \
> +	{RING_TAIL(0),             0,      0, "RING_TAIL"}, \
> +	{RING_CTL(0),              0,      0, "RING_CTL"}, \
> +	{RING_MI_MODE(0),          0,      0, "RING_MI_MODE"}, \
> +	{RING_CONTEXT_CONTROL(0),  0,      0, "RING_CONTEXT_CONTROL"}, \
> +	{RING_INSTDONE(0),         0,      0, "RING_INSTDONE"}, \
> +	{RING_HWS_PGA(0),          0,      0, "RING_HWS_PGA"}, \
> +	{RING_MODE_GEN7(0),        0,      0, "RING_MODE_GEN7"}, \
> +	{GEN8_RING_PDP_LDW(0, 0),  0,      0, "GEN8_RING_PDP0_LDW"}, \
> +	{GEN8_RING_PDP_UDW(0, 0),  0,      0, "GEN8_RING_PDP0_UDW"}, \
> +	{GEN8_RING_PDP_LDW(0, 1),  0,      0, "GEN8_RING_PDP1_LDW"}, \
> +	{GEN8_RING_PDP_UDW(0, 1),  0,      0, "GEN8_RING_PDP1_UDW"}, \
> +	{GEN8_RING_PDP_LDW(0, 2),  0,      0, "GEN8_RING_PDP2_LDW"}, \
> +	{GEN8_RING_PDP_UDW(0, 2),  0,      0, "GEN8_RING_PDP2_UDW"}, \
> +	{GEN8_RING_PDP_LDW(0, 3),  0,      0, "GEN8_RING_PDP3_LDW"}, \
> +	{GEN8_RING_PDP_UDW(0, 3),  0,      0, "GEN8_RING_PDP3_UDW"}
> +
> +#define COMMON_GEN12BASE_HAS_EU() \
> +	{EIR,                      0,      0, "EIR"}
> +
> +#define COMMON_GEN12BASE_RENDER() \
> +	{GEN7_SC_INSTDONE,         0,      0, "GEN7_SC_INSTDONE"}, \
> +	{GEN12_SC_INSTDONE_EXTRA,  0,      0, "GEN12_SC_INSTDONE_EXTRA"}, \
> +	{GEN12_SC_INSTDONE_EXTRA2, 0,      0, "GEN12_SC_INSTDONE_EXTRA2"}
> +
> +#define COMMON_GEN12BASE_VEC() \
> +	{GEN11_VCS_VECS_INTR_ENABLE, 0,    0, "GEN11_VCS_VECS_INTR_ENABLE"}, \
> +	{GEN12_SFC_DONE(0),        0,      0, "GEN12_SFC_DONE0"}, \
> +	{GEN12_SFC_DONE(1),        0,      0, "GEN12_SFC_DONE1"}, \
> +	{GEN12_SFC_DONE(2),        0,      0, "GEN12_SFC_DONE2"}, \
> +	{GEN12_SFC_DONE(3),        0,      0, "GEN12_SFC_DONE3"}
>  
>  /********************************* Gen12 LP  *********************************/
>  /************** GLOBAL *************/
>  struct __guc_mmio_reg_descr gen12lp_global_regs[] = {
> -	{SWF_ILK(0),               0,      0, "SWF_ILK0"},

we should avoid adding/removing code in same series

> -	/* Add additional register list */
> +	COMMON_GEN12BASE_GLOBAL(),
> +	{GEN7_ROW_INSTDONE,        0,      0, "GEN7_ROW_INSTDONE"},
>  };
>  
>  /********** RENDER/COMPUTE *********/
>  /* Per-Class */
>  struct __guc_mmio_reg_descr gen12lp_rc_class_regs[] = {
> -	{SWF_ILK(0),               0,      0, "SWF_ILK0"},
> -	/* Add additional register list */
> +	COMMON_GEN12BASE_HAS_EU(),
> +	COMMON_GEN12BASE_RENDER(),
> +	{GEN11_RENDER_COPY_INTR_ENABLE, 0, 0, "GEN11_RENDER_COPY_INTR_ENABLE"},
>  };
>  
>  /* Per-Engine-Instance */
>  struct __guc_mmio_reg_descr gen12lp_rc_inst_regs[] = {
> -	{SWF_ILK(0),               0,      0, "SWF_ILK0"},
> -	/* Add additional register list */
> +	COMMON_GEN12BASE_ENGINE_INSTANCE(),
>  };
>  
>  /************* MEDIA-VD ************/
>  /* Per-Class */
>  struct __guc_mmio_reg_descr gen12lp_vd_class_regs[] = {
> -	{SWF_ILK(0),               0,      0, "SWF_ILK0"},
> -	/* Add additional register list */
>  };
>  
>  /* Per-Engine-Instance */
>  struct __guc_mmio_reg_descr gen12lp_vd_inst_regs[] = {
> -	{SWF_ILK(0),               0,      0, "SWF_ILK0"},
> -	/* Add additional register list */
> +	COMMON_GEN12BASE_ENGINE_INSTANCE(),
>  };
>  
>  /************* MEDIA-VEC ***********/
>  /* Per-Class */
>  struct __guc_mmio_reg_descr gen12lp_vec_class_regs[] = {
> -	{SWF_ILK(0),               0,      0, "SWF_ILK0"},
> -	/* Add additional register list */
> +	COMMON_GEN12BASE_VEC(),
>  };
>  
>  /* Per-Engine-Instance */
>  struct __guc_mmio_reg_descr gen12lp_vec_inst_regs[] = {
> -	{SWF_ILK(0),               0,      0, "SWF_ILK0"},
> -	/* Add additional register list */
> +	COMMON_GEN12BASE_ENGINE_INSTANCE(),
> +};
> +
> +/************* BLITTER ***********/
> +/* Per-Class */
> +struct __guc_mmio_reg_descr gen12lp_blt_class_regs[] = {
> +};
> +
> +/* Per-Engine-Instance */
> +struct __guc_mmio_reg_descr gen12lp_blt_inst_regs[] = {
> +	COMMON_GEN12BASE_ENGINE_INSTANCE(),
>  };
>  
> +#define TO_GCAP_DEF(x) (GUC_CAPTURE_LIST_##x)
> +#define MAKE_GCAP_REGLIST_DESCR(regslist, regsowner, regstype, class) \
> +	{ \
> +		.list = (regslist), \
> +		.num_regs = (sizeof(regslist) / sizeof(struct __guc_mmio_reg_descr)), \
> +		.owner = TO_GCAP_DEF(regsowner), \
> +		.type = TO_GCAP_DEF(regstype), \
> +		.engine = class, \
> +		.num_ext = 0, \
> +		.ext = NULL, \
> +	}
> +
> +
>  /********** List of lists **********/
> -struct __guc_mmio_reg_descr_group gen12lp_lists[] = {
> -	{
> -		.list = gen12lp_global_regs,
> -		.num_regs = (sizeof(gen12lp_global_regs) / sizeof(struct __guc_mmio_reg_descr)),
> -		.owner = GUC_CAPTURE_LIST_INDEX_PF,
> -		.type = GUC_CAPTURE_LIST_TYPE_GLOBAL,
> -		.engine = 0
> -	},
> -	{
> -		.list = gen12lp_rc_class_regs,
> -		.num_regs = (sizeof(gen12lp_rc_class_regs) / sizeof(struct __guc_mmio_reg_descr)),
> -		.owner = GUC_CAPTURE_LIST_INDEX_PF,
> -		.type = GUC_CAPTURE_LIST_TYPE_ENGINE_CLASS,
> -		.engine = RENDER_CLASS
> -	},
> -	{
> -		.list = gen12lp_rc_inst_regs,
> -		.num_regs = (sizeof(gen12lp_rc_inst_regs) / sizeof(struct __guc_mmio_reg_descr)),
> -		.owner = GUC_CAPTURE_LIST_INDEX_PF,
> -		.type = GUC_CAPTURE_LIST_TYPE_ENGINE_INSTANCE,
> -		.engine = RENDER_CLASS
> -	},
> -	{
> -		.list = gen12lp_vd_class_regs,
> -		.num_regs = (sizeof(gen12lp_vd_class_regs) / sizeof(struct __guc_mmio_reg_descr)),
> -		.owner = GUC_CAPTURE_LIST_INDEX_PF,
> -		.type = GUC_CAPTURE_LIST_TYPE_ENGINE_CLASS,
> -		.engine = VIDEO_DECODE_CLASS
> -	},
> -	{
> -		.list = gen12lp_vd_inst_regs,
> -		.num_regs = (sizeof(gen12lp_vd_inst_regs) / sizeof(struct __guc_mmio_reg_descr)),
> -		.owner = GUC_CAPTURE_LIST_INDEX_PF,
> -		.type = GUC_CAPTURE_LIST_TYPE_ENGINE_INSTANCE,
> -		.engine = VIDEO_DECODE_CLASS
> -	},
> -	{
> -		.list = gen12lp_vec_class_regs,
> -		.num_regs = (sizeof(gen12lp_vec_class_regs) / sizeof(struct __guc_mmio_reg_descr)),
> -		.owner = GUC_CAPTURE_LIST_INDEX_PF,
> -		.type = GUC_CAPTURE_LIST_TYPE_ENGINE_CLASS,
> -		.engine = VIDEO_ENHANCEMENT_CLASS
> -	},
> -	{
> -		.list = gen12lp_vec_inst_regs,
> -		.num_regs = (sizeof(gen12lp_vec_inst_regs) / sizeof(struct __guc_mmio_reg_descr)),
> -		.owner = GUC_CAPTURE_LIST_INDEX_PF,
> -		.type = GUC_CAPTURE_LIST_TYPE_ENGINE_INSTANCE,
> -		.engine = VIDEO_ENHANCEMENT_CLASS
> -	},
> +struct __guc_mmio_reg_descr_group xe_lpd_lists[] = {
> +	MAKE_GCAP_REGLIST_DESCR(gen12lp_global_regs, INDEX_PF, TYPE_GLOBAL, 0),
> +	MAKE_GCAP_REGLIST_DESCR(gen12lp_rc_class_regs, INDEX_PF, TYPE_ENGINE_CLASS, GUC_RENDER_CLASS),
> +	MAKE_GCAP_REGLIST_DESCR(gen12lp_rc_inst_regs, INDEX_PF, TYPE_ENGINE_INSTANCE, GUC_RENDER_CLASS),
> +	MAKE_GCAP_REGLIST_DESCR(gen12lp_vd_class_regs, INDEX_PF, TYPE_ENGINE_CLASS, GUC_VIDEO_CLASS),
> +	MAKE_GCAP_REGLIST_DESCR(gen12lp_vd_inst_regs, INDEX_PF, TYPE_ENGINE_INSTANCE, GUC_VIDEO_CLASS),
> +	MAKE_GCAP_REGLIST_DESCR(gen12lp_vec_class_regs, INDEX_PF, TYPE_ENGINE_CLASS, GUC_VIDEOENHANCE_CLASS),
> +	MAKE_GCAP_REGLIST_DESCR(gen12lp_vec_inst_regs, INDEX_PF, TYPE_ENGINE_INSTANCE, GUC_VIDEOENHANCE_CLASS),
> +	MAKE_GCAP_REGLIST_DESCR(gen12lp_blt_class_regs, INDEX_PF, TYPE_ENGINE_CLASS, GUC_BLITTER_CLASS),
> +	MAKE_GCAP_REGLIST_DESCR(gen12lp_blt_inst_regs, INDEX_PF, TYPE_ENGINE_INSTANCE, GUC_BLITTER_CLASS),

if you knew that you want to use macros, why not start with them in
previous patch ?

>  	{NULL, 0, 0, 0, 0}
>  };
>  
> -/************ FIXME: Populate tables for other devices in subsequent patch ************/
> +/************* Populate additional registers / device tables *************/
> +
> +static inline struct __guc_mmio_reg_descr **
> +guc_capture_get_ext_list_ptr(struct __guc_mmio_reg_descr_group * lists, u32 owner, u32 type, u32 class)
> +{
> +	while(lists->list){

please run checkpatch.pl

> +		if (lists->owner == owner && lists->type == type && lists->engine == class)
> +			break;
> +		++lists;
> +	}
> +	if (!lists->list)
> +		return NULL;
> +
> +	return &(lists->ext);
> +}
> +
> +void guc_capture_clear_ext_regs(struct __guc_mmio_reg_descr_group * lists)
> +{
> +	while(lists->list){
> +		if (lists->ext) {
> +			kfree(lists->ext);
> +			lists->ext = NULL;
> +		}
> +		++lists;
> +	}
> +	return;
> +}
> +
> +static void
> +xelpd_alloc_steered_ext_list(struct drm_i915_private *i915,
> +			     struct __guc_mmio_reg_descr_group * lists)
> +{
> +	struct intel_gt *gt = &i915->gt;
> +	struct sseu_dev_info *sseu;
> +	int slice, subslice, i, num_tot_regs = 0;
> +	struct __guc_mmio_reg_descr **ext;
> +	static char * const strings[] = {
> +		[0] = "GEN7_SAMPLER_INSTDONE",
> +		[1] = "GEN7_ROW_INSTDONE",
> +	};
> +
> +	/* In XE_LP we only care about render-class steering registers during error-capture */
> +	ext = guc_capture_get_ext_list_ptr(lists, GUC_CAPTURE_LIST_INDEX_PF,
> +					   GUC_CAPTURE_LIST_TYPE_ENGINE_CLASS, GUC_RENDER_CLASS);
> +	if (!ext)
> +		return;
> +	if (*ext)
> +		return; /* already populated */
> +
> +	sseu = &gt->info.sseu;
> +	for_each_instdone_slice_subslice(i915, sseu, slice, subslice) {
> +		num_tot_regs += 2; /* two registers of interest for now */
> +	}
> +	if (!num_tot_regs)
> +		return;
> +
> +	*ext = kzalloc(2 * num_tot_regs * sizeof(struct __guc_mmio_reg_descr), GFP_KERNEL);

kcalloc ?

> +	if (!*ext) {
> +		drm_warn(&i915->drm, "GuC-capture: Fail to allocate for extended registers\n");
> +		return;
> +	}
> +
> +	for_each_instdone_slice_subslice(i915, sseu, slice, subslice) {
> +		for (i = 0; i < 2; i++) {
> +			if (i == 0)
> +				(*ext)->reg = GEN7_SAMPLER_INSTDONE;
> +			else
> +				(*ext)->reg = GEN7_ROW_INSTDONE;
> +			(*ext)->flags = FIELD_PREP(GUC_REGSET_STEERING_GROUP, slice);
> +			(*ext)->flags |= FIELD_PREP(GUC_REGSET_STEERING_INSTANCE, subslice);
> +			(*ext)->regname = strings[i];
> +			(*ext)++;
> +		}
> +	}
> +}
>  
>  static struct __guc_mmio_reg_descr_group *
>  guc_capture_get_device_reglist(struct drm_i915_private *dev_priv)
>  {
>  	if (IS_TIGERLAKE(dev_priv) || IS_ROCKETLAKE(dev_priv) ||
>  	    IS_ALDERLAKE_S(dev_priv) || IS_ALDERLAKE_P(dev_priv)) {
> -		return gen12lp_lists;

patch2: gen12lp_lists
patch3: xe_lpd_lists

please be consistent across series

> +		/*
> +		* For certain engine classes, there are slice and subslice
> +		* level registers requiring steering. We allocate and populate
> +		* these at init time based on hw config add it as an extension
> +		* list at the end of the pre-populated render list.
> +		*/
> +		xelpd_alloc_steered_ext_list(dev_priv, xe_lpd_lists);
> +		return xe_lpd_lists;
>  	}
>  
>  	return NULL;
> @@ -221,6 +346,7 @@ int intel_guc_capture_list_init(struct intel_guc *guc, u32 owner, u32 type, u32
>  
>  void intel_guc_capture_destroy(struct intel_guc *guc)
>  {
> +	guc_capture_clear_ext_regs(guc->capture.reglists);
>  }

maybe whole function shall be introduced in this patch ?

-Michal

>  
>  int intel_guc_capture_init(struct intel_guc *guc)
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.h
> index 352940b8bc87..df420f0f49b3 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.h
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.h
> @@ -25,6 +25,8 @@ struct __guc_mmio_reg_descr_group {
>  	u32 owner; /* see enum guc_capture_owner */
>  	u32 type; /* see enum guc_capture_type */
>  	u32 engine; /* as per MAX_ENGINE_CLASS */
> +	int num_ext;
> +	struct __guc_mmio_reg_descr * ext;
>  };
>  
>  struct intel_guc_state_capture {
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
> index 1a1d2271c7e9..c26cfefd916c 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
> @@ -267,6 +267,8 @@ struct guc_mmio_reg {
>  	u32 value;
>  	u32 flags;
>  #define GUC_REGSET_MASKED		(1 << 0)
> +#define GUC_REGSET_STEERING_GROUP       GENMASK(15, 12)
> +#define GUC_REGSET_STEERING_INSTANCE    GENMASK(23, 20)
>  	u32 mask;
>  } __packed;
>  
> 
