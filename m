Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 24B7049D184
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Jan 2022 19:14:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 51ECF10E5DD;
	Wed, 26 Jan 2022 18:14:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C711E10E64B
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Jan 2022 18:14:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643220842; x=1674756842;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=D+SxYbYlWeRNI3j0uuBQ5/Dnc8yGAju4Sze0eT0xYfU=;
 b=lRV9T7N/4OxvVVawBfmm2xwCaOF8YfMTVMuXK4QSNSYhjK5GiA+z9r8K
 ov+V8qFGiKayDNw7PQDRsNYGoL6dIhYGgpoaBAAf+OqkcyI5fEb0CR5ei
 mWKSY4RCASbGHXTHNALU1Mdignw8J6ByXl7F/qk1yWDx8tdZyHJfSryhE
 5L8NOt3Qmb5xHXy8AsiDi9AfUCsqITMr/T3B+3ztFOMBiGmVv+sSjKqsr
 l56Nn1zAq5sfYL30KuAHZT6I5vEn2PnlhmkP8g1jP0NryJ3EZssrv/PB2
 IezR7nVeCtpOzH2eTEgeECPkOuC7nb0EB4saFY101EdcZ8rB170qu7rz3 w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10238"; a="309926316"
X-IronPort-AV: E=Sophos;i="5.88,318,1635231600"; d="scan'208";a="309926316"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2022 10:14:02 -0800
X-IronPort-AV: E=Sophos;i="5.88,318,1635231600"; d="scan'208";a="535279877"
Received: from nbasu-mobl.ger.corp.intel.com (HELO localhost) ([10.252.16.197])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2022 10:13:59 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Alan Previn <alan.previn.teres.alexis@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220126104822.3653079-3-alan.previn.teres.alexis@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220126104822.3653079-1-alan.previn.teres.alexis@intel.com>
 <20220126104822.3653079-3-alan.previn.teres.alexis@intel.com>
Date: Wed, 26 Jan 2022 20:13:56 +0200
Message-ID: <87k0emxt3v.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH v5 02/10] drm/i915/guc: Add XE_LP registers
 for GuC error state capture.
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
Cc: Alan Previn <alan.previn.teres.alexis@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 26 Jan 2022, Alan Previn <alan.previn.teres.alexis@intel.com> wrote:
> Add device specific tables and register lists to cover different engines
> class types for GuC error state capture for XE_LP products.
>
> Also, add runtime allocation and freeing of extended register lists
> for registers that need steering identifiers that depend on
> the detected HW config.
>
> Signed-off-by: Alan Previn <alan.previn.teres.alexis@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/uc/guc_capture_fwif.h |   2 +
>  .../gpu/drm/i915/gt/uc/intel_guc_capture.c    | 207 +++++++++++++++---
>  drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h   |   4 +-
>  3 files changed, 180 insertions(+), 33 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/uc/guc_capture_fwif.h b/drivers/gpu/drm/i915/gt/uc/guc_capture_fwif.h
> index 15b8c02b8a76..a2f97d04ff18 100644
> --- a/drivers/gpu/drm/i915/gt/uc/guc_capture_fwif.h
> +++ b/drivers/gpu/drm/i915/gt/uc/guc_capture_fwif.h
> @@ -24,6 +24,8 @@ struct __guc_mmio_reg_descr_group {
>  	u32 owner; /* see enum guc_capture_owner */
>  	u32 type; /* see enum guc_capture_type */
>  	u32 engine; /* as per MAX_ENGINE_CLASS */
> +	int num_ext;
> +	struct __guc_mmio_reg_descr *ext;
>  };
>  
>  struct __guc_state_capture_priv {
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
> index 06873d617b8b..b6882074fc8d 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
> @@ -19,40 +19,101 @@
>   * NOTE: For engine-registers, GuC only needs the register offsets
>   *       from the engine-mmio-base
>   */
> +#define COMMON_GEN12BASE_GLOBAL() \
> +	{GEN12_FAULT_TLB_DATA0,    0,      0, "GEN12_FAULT_TLB_DATA0"}, \
> +	{GEN12_FAULT_TLB_DATA1,    0,      0, "GEN12_FAULT_TLB_DATA1"}, \
> +	{FORCEWAKE_MT,             0,      0, "FORCEWAKE_MT"}, \
> +	{GEN12_AUX_ERR_DBG,        0,      0, "GEN12_AUX_ERR_DBG"}, \
> +	{GEN12_GAM_DONE,           0,      0, "GEN12_GAM_DONE"}, \
> +	{GEN12_RING_FAULT_REG,     0,      0, "GEN12_RING_FAULT_REG"}
> +
> +#define COMMON_GEN12BASE_ENGINE_INSTANCE() \
> +	{RING_PSMI_CTL(0),         0,      0, "RING_PSMI_CTL"}, \
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
> +	{GEN12_SFC_DONE(0),        0,      0, "GEN12_SFC_DONE0"}, \
> +	{GEN12_SFC_DONE(1),        0,      0, "GEN12_SFC_DONE1"}, \
> +	{GEN12_SFC_DONE(2),        0,      0, "GEN12_SFC_DONE2"}, \
> +	{GEN12_SFC_DONE(3),        0,      0, "GEN12_SFC_DONE3"}
> +
>  /* XE_LPD - Global */
>  static struct __guc_mmio_reg_descr xe_lpd_global_regs[] = {
> -	{GEN12_RING_FAULT_REG,     0,      0, "GEN12_RING_FAULT_REG"}
> +	COMMON_GEN12BASE_GLOBAL(),
>  };
>  
>  /* XE_LPD - Render / Compute Per-Class */
>  static struct __guc_mmio_reg_descr xe_lpd_rc_class_regs[] = {
> -	{EIR,                      0,      0, "EIR"}
> +	COMMON_GEN12BASE_HAS_EU(),
> +	COMMON_GEN12BASE_RENDER(),
>  };
>  
>  /* XE_LPD - Render / Compute Per-Engine-Instance */
>  static struct __guc_mmio_reg_descr xe_lpd_rc_inst_regs[] = {
> -	{RING_HEAD(0),             0,      0, "RING_HEAD"},
> -	{RING_TAIL(0),             0,      0, "RING_TAIL"},
> -};
> -
> -/* XE_LPD - Media Decode/Encode Per-Class */
> -static struct __guc_mmio_reg_descr xe_lpd_vd_class_regs[] = {
> +	COMMON_GEN12BASE_ENGINE_INSTANCE(),
>  };
>  
>  /* XE_LPD - Media Decode/Encode Per-Engine-Instance */
>  static struct __guc_mmio_reg_descr xe_lpd_vd_inst_regs[] = {
> -	{RING_HEAD(0),             0,      0, "RING_HEAD"},
> -	{RING_TAIL(0),             0,      0, "RING_TAIL"},
> +	COMMON_GEN12BASE_ENGINE_INSTANCE(),
>  };
>  
>  /* XE_LPD - Video Enhancement Per-Class */
>  static struct __guc_mmio_reg_descr xe_lpd_vec_class_regs[] = {
> +	COMMON_GEN12BASE_VEC(),
>  };
>  
>  /* XE_LPD - Video Enhancement Per-Engine-Instance */
>  static struct __guc_mmio_reg_descr xe_lpd_vec_inst_regs[] = {
> -	{RING_HEAD(0),             0,      0, "RING_HEAD"},
> -	{RING_TAIL(0),             0,      0, "RING_TAIL"},
> +	COMMON_GEN12BASE_ENGINE_INSTANCE(),
> +};
> +
> +/* XE_LPD - Blitter Per-Engine-Instance */
> +static struct __guc_mmio_reg_descr xe_lpd_blt_inst_regs[] = {
> +	COMMON_GEN12BASE_ENGINE_INSTANCE(),
> +};
> +
> +/* XE_LPD - Blitter Per-Class */
> +/* XE_LPD - Media Decode/Encode Per-Class */
> +static struct __guc_mmio_reg_descr empty_regs_list[] = {
>  };
>  
>  #define TO_GCAP_DEF_OWNER(x) (GUC_CAPTURE_LIST_INDEX_##x)
> @@ -64,6 +125,8 @@ static struct __guc_mmio_reg_descr xe_lpd_vec_inst_regs[] = {
>  		.owner = TO_GCAP_DEF_OWNER(regsowner), \
>  		.type = TO_GCAP_DEF_TYPE(regstype), \
>  		.engine = class, \
> +		.num_ext = 0, \
> +		.ext = NULL, \
>  	}
>  
>  /* List of lists */
> @@ -71,13 +134,96 @@ static struct __guc_mmio_reg_descr_group xe_lpd_lists[] = {
>  	MAKE_REGLIST(xe_lpd_global_regs, PF, GLOBAL, 0),
>  	MAKE_REGLIST(xe_lpd_rc_class_regs, PF, ENGINE_CLASS, GUC_RENDER_CLASS),
>  	MAKE_REGLIST(xe_lpd_rc_inst_regs, PF, ENGINE_INSTANCE, GUC_RENDER_CLASS),
> -	MAKE_REGLIST(xe_lpd_vd_class_regs, PF, ENGINE_CLASS, GUC_VIDEO_CLASS),
> +	MAKE_REGLIST(empty_regs_list, PF, ENGINE_CLASS, GUC_VIDEO_CLASS),
>  	MAKE_REGLIST(xe_lpd_vd_inst_regs, PF, ENGINE_INSTANCE, GUC_VIDEO_CLASS),
>  	MAKE_REGLIST(xe_lpd_vec_class_regs, PF, ENGINE_CLASS, GUC_VIDEOENHANCE_CLASS),
>  	MAKE_REGLIST(xe_lpd_vec_inst_regs, PF, ENGINE_INSTANCE, GUC_VIDEOENHANCE_CLASS),
> +	MAKE_REGLIST(empty_regs_list, PF, ENGINE_CLASS, GUC_BLITTER_CLASS),
> +	MAKE_REGLIST(xe_lpd_blt_inst_regs, PF, ENGINE_INSTANCE, GUC_BLITTER_CLASS),
>  	{}
>  };
>  
> +static struct __guc_mmio_reg_descr_group *
> +guc_capture_get_one_list(struct __guc_mmio_reg_descr_group *reglists, u32 owner, u32 type, u32 id)
> +{
> +	int i;
> +
> +	if (!reglists)
> +		return NULL;
> +
> +	for (i = 0; reglists[i].list; i++) {
> +		if (reglists[i].owner == owner && reglists[i].type == type &&
> +		    (reglists[i].engine == id || reglists[i].type == GUC_CAPTURE_LIST_TYPE_GLOBAL))
> +		return &reglists[i];
> +	}
> +
> +	return NULL;
> +}
> +
> +static void guc_capture_clear_ext_regs(struct __guc_mmio_reg_descr_group *lists)
> +{
> +	while (lists->list) {
> +		kfree(lists->ext);
> +		lists->ext = NULL;
> +		++lists;
> +	}
> +}
> +
> +struct __ext_steer_reg {
> +	const char *name;
> +	i915_reg_t reg;
> +};
> +
> +static struct __ext_steer_reg xelpd_extregs[] = {
> +	{"GEN7_SAMPLER_INSTDONE", GEN7_SAMPLER_INSTDONE},
> +	{"GEN7_ROW_INSTDONE", GEN7_ROW_INSTDONE}
> +};

Either this needs to be const or, if it needs to be mutable, moved to
device specific data.

Ditto for all such things all over the place.

BR,
Jani.

> +
> +static void
> +guc_capture_alloc_steered_list_xelpd(struct intel_guc *guc,
> +				     struct __guc_mmio_reg_descr_group *lists)
> +{
> +	struct intel_gt *gt = guc_to_gt(guc);
> +	struct drm_i915_private *i915 = guc_to_gt(guc)->i915;
> +	struct sseu_dev_info *sseu;
> +	int slice, subslice, i, num_tot_regs = 0;
> +	struct __guc_mmio_reg_descr_group *list;
> +	struct __guc_mmio_reg_descr *extarray;
> +	int num_steer_regs = ARRAY_SIZE(xelpd_extregs);
> +
> +	/* In XE_LP we only care about render-class steering registers during error-capture */
> +	list = guc_capture_get_one_list(lists, GUC_CAPTURE_LIST_INDEX_PF,
> +					GUC_CAPTURE_LIST_TYPE_ENGINE_CLASS, GUC_RENDER_CLASS);
> +	if (!list)
> +		return;
> +
> +	if (list->ext)
> +		return; /* already populated */
> +
> +	sseu = &gt->info.sseu;
> +	for_each_instdone_slice_subslice(i915, sseu, slice, subslice) {
> +		num_tot_regs += num_steer_regs;
> +	}
> +	if (!num_tot_regs)
> +		return;
> +
> +	list->ext = kcalloc(num_tot_regs, sizeof(struct __guc_mmio_reg_descr), GFP_KERNEL);
> +	if (!list->ext)
> +		return;
> +
> +	extarray = list->ext;
> +	for_each_instdone_slice_subslice(i915, sseu, slice, subslice) {
> +		for (i = 0; i < num_steer_regs; i++) {
> +			extarray->reg = xelpd_extregs[i].reg;
> +			extarray->flags = FIELD_PREP(GUC_REGSET_STEERING_GROUP, slice);
> +			extarray->flags |= FIELD_PREP(GUC_REGSET_STEERING_INSTANCE, subslice);
> +			extarray->regname = xelpd_extregs[i].name;
> +			++extarray;
> +		}
> +	}
> +	list->num_ext = num_tot_regs;
> +}
> +
>  static struct __guc_mmio_reg_descr_group *
>  guc_capture_get_device_reglist(struct intel_guc *guc)
>  {
> @@ -91,29 +237,13 @@ guc_capture_get_device_reglist(struct intel_guc *guc)
>  		 * these at init time based on hw config add it as an extension
>  		 * list at the end of the pre-populated render list.
>  		 */
> +		guc_capture_alloc_steered_list_xelpd(guc, xe_lpd_lists);
>  		return xe_lpd_lists;
>  	}
>  
>  	return NULL;
>  }
>  
> -static struct __guc_mmio_reg_descr_group *
> -guc_capture_get_one_list(struct __guc_mmio_reg_descr_group *reglists, u32 owner, u32 type, u32 id)
> -{
> -	int i;
> -
> -	if (!reglists)
> -		return NULL;
> -
> -	for (i = 0; reglists[i].list; i++) {
> -		if (reglists[i].owner == owner && reglists[i].type == type &&
> -		    (reglists[i].engine == id || reglists[i].type == GUC_CAPTURE_LIST_TYPE_GLOBAL))
> -		return &reglists[i];
> -	}
> -
> -	return NULL;
> -}
> -
>  static const char *
>  guc_capture_stringify_owner(u32 owner)
>  {
> @@ -184,7 +314,7 @@ static int
>  guc_capture_list_init(struct intel_guc *guc, u32 owner, u32 type, u32 classid,
>  		      struct guc_mmio_reg *ptr, u16 num_entries)
>  {
> -	u32 j = 0;
> +	u32 j = 0, k = 0;
>  	struct drm_i915_private *i915 = guc_to_gt(guc)->i915;
>  	struct __guc_mmio_reg_descr_group *reglists = guc->capture.priv->reglists;
>  	struct __guc_mmio_reg_descr_group *match;
> @@ -200,6 +330,18 @@ guc_capture_list_init(struct intel_guc *guc, u32 owner, u32 type, u32 classid,
>  			ptr[j].flags = match->list[j].flags;
>  			ptr[j].mask = match->list[j].mask;
>  		}
> +		if (match->ext) {
> +			for (j = match->num_regs, k = 0; j < num_entries &&
> +			     j < (match->num_regs + match->num_ext); ++j, ++k) {
> +				ptr[j].offset = match->ext[k].reg.reg;
> +				ptr[j].value = 0xDEADF00D;
> +				ptr[j].flags = match->ext[k].flags;
> +				ptr[j].mask = match->ext[k].mask;
> +			}
> +		}
> +		if (j < num_entries)
> +			drm_dbg(&i915->drm, "GuC-capture: Init reglist short %d out %d.\n",
> +				(int)j, (int)num_entries);
>  		return 0;
>  	}
>  
> @@ -282,7 +424,7 @@ guc_capture_list_count(struct intel_guc *guc, u32 owner, u32 type, u32 classid,
>  		return -ENODATA;
>  	}
>  
> -	*num_entries = match->num_regs;
> +	*num_entries = match->num_regs + match->num_ext;
>  	return 0;
>  }
>  
> @@ -435,6 +577,7 @@ int intel_guc_capture_prep_lists(struct intel_guc *guc, struct guc_ads *blob, u3
>  
>  void intel_guc_capture_destroy(struct intel_guc *guc)
>  {
> +	guc_capture_clear_ext_regs(guc->capture.priv->reglists);
>  	kfree(guc->capture.priv);
>  	guc->capture.priv = NULL;
>  }
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
> index 92bfe25a5e85..50fcd987f2a2 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
> @@ -271,10 +271,12 @@ struct guc_mmio_reg {
>  	u32 offset;
>  	u32 value;
>  	u32 flags;
> -	u32 mask;
>  #define GUC_REGSET_MASKED		BIT(0)
>  #define GUC_REGSET_MASKED_WITH_VALUE	BIT(2)
>  #define GUC_REGSET_RESTORE_ONLY		BIT(3)
> +#define GUC_REGSET_STEERING_GROUP       GENMASK(15, 12)
> +#define GUC_REGSET_STEERING_INSTANCE    GENMASK(23, 20)
> +	u32 mask;
>  } __packed;
>  
>  /* GuC register sets */

-- 
Jani Nikula, Intel Open Source Graphics Center
