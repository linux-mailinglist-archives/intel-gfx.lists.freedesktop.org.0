Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D64006951FC
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Feb 2023 21:37:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 47C1910E6FD;
	Mon, 13 Feb 2023 20:37:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3376210E6FD
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Feb 2023 20:37:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676320638; x=1707856638;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=kpC5C+PrmOnIdR/dsplLJ0h1lEdM2V9jbefq24IvwRs=;
 b=OI3jaoso80edumLoqtbBCn4qA0BgZOZEII4naHuGEz2oiLY/LoWnq5wX
 vd3JtYsok5wh/Attgo2MKsBN3FDSZG1JS5xJtWVhxTIkZKn2NAlFAttP0
 QffqMxKyDlxv8GfoNgg/ZGZkWqBqPZ87XsPKFpLINGiZNKA0+UtXnfT9T
 FM1MGtik2/QV5N457x1BIF1uGrXWhtEIYYamIZNWNCVIHHaEOuZMrYc1c
 jCBSAf28P2a03ZPImg5xKUvQ+zaO46LspkuSrw7i84GrUc0g5mZA2XXE6
 35MMSs+B10t6Av7kF457mxwSFe+3Jg5cShDbQheDJZ0JtvFYfyQhScNlH Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10620"; a="332308472"
X-IronPort-AV: E=Sophos;i="5.97,294,1669104000"; d="scan'208";a="332308472"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2023 12:37:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10620"; a="792851595"
X-IronPort-AV: E=Sophos;i="5.97,294,1669104000"; d="scan'208";a="792851595"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.55])
 by orsmga004.jf.intel.com with SMTP; 13 Feb 2023 12:37:08 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 13 Feb 2023 22:37:07 +0200
Date: Mon, 13 Feb 2023 22:37:07 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <Y+qfc6kp+rw2IOAT@intel.com>
References: <cover.1676317696.git.jani.nikula@intel.com>
 <8a862eeca8b42a98e04b3c52637851d33531abb6.1676317696.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <8a862eeca8b42a98e04b3c52637851d33531abb6.1676317696.git.jani.nikula@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v2 1/7] drm/i915: move memory frequency
 detection to intel_dram.c
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Feb 13, 2023 at 09:59:56PM +0200, Jani Nikula wrote:
> The memory frequency detection is a bit spread out here and
> there. Consolidate to intel_dram.c.
> 
> v2:
> - Remove inaccurate comment (Ville)
> - Call detect_mem_freq() unconditionally (Ville)
> 
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Couldn't spot any chicken vs. egg issues anywhere
so seems good.

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/gt/intel_rps.c   |  29 -----
>  drivers/gpu/drm/i915/intel_pm.c       | 101 -----------------
>  drivers/gpu/drm/i915/soc/intel_dram.c | 152 ++++++++++++++++++++++++++
>  3 files changed, 152 insertions(+), 130 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_rps.c b/drivers/gpu/drm/i915/gt/intel_rps.c
> index f5d7b5126433..4d0dc9de23f9 100644
> --- a/drivers/gpu/drm/i915/gt/intel_rps.c
> +++ b/drivers/gpu/drm/i915/gt/intel_rps.c
> @@ -1677,7 +1677,6 @@ static void vlv_init_gpll_ref_freq(struct intel_rps *rps)
>  static void vlv_rps_init(struct intel_rps *rps)
>  {
>  	struct drm_i915_private *i915 = rps_to_i915(rps);
> -	u32 val;
>  
>  	vlv_iosf_sb_get(i915,
>  			BIT(VLV_IOSF_SB_PUNIT) |
> @@ -1686,21 +1685,6 @@ static void vlv_rps_init(struct intel_rps *rps)
>  
>  	vlv_init_gpll_ref_freq(rps);
>  
> -	val = vlv_punit_read(i915, PUNIT_REG_GPU_FREQ_STS);
> -	switch ((val >> 6) & 3) {
> -	case 0:
> -	case 1:
> -		i915->mem_freq = 800;
> -		break;
> -	case 2:
> -		i915->mem_freq = 1066;
> -		break;
> -	case 3:
> -		i915->mem_freq = 1333;
> -		break;
> -	}
> -	drm_dbg(&i915->drm, "DDR speed: %d MHz\n", i915->mem_freq);
> -
>  	rps->max_freq = vlv_rps_max_freq(rps);
>  	rps->rp0_freq = rps->max_freq;
>  	drm_dbg(&i915->drm, "max GPU freq: %d MHz (%u)\n",
> @@ -1727,7 +1711,6 @@ static void vlv_rps_init(struct intel_rps *rps)
>  static void chv_rps_init(struct intel_rps *rps)
>  {
>  	struct drm_i915_private *i915 = rps_to_i915(rps);
> -	u32 val;
>  
>  	vlv_iosf_sb_get(i915,
>  			BIT(VLV_IOSF_SB_PUNIT) |
> @@ -1736,18 +1719,6 @@ static void chv_rps_init(struct intel_rps *rps)
>  
>  	vlv_init_gpll_ref_freq(rps);
>  
> -	val = vlv_cck_read(i915, CCK_FUSE_REG);
> -
> -	switch ((val >> 2) & 0x7) {
> -	case 3:
> -		i915->mem_freq = 2000;
> -		break;
> -	default:
> -		i915->mem_freq = 1600;
> -		break;
> -	}
> -	drm_dbg(&i915->drm, "DDR speed: %d MHz\n", i915->mem_freq);
> -
>  	rps->max_freq = chv_rps_max_freq(rps);
>  	rps->rp0_freq = rps->max_freq;
>  	drm_dbg(&i915->drm, "max GPU freq: %d MHz (%u)\n",
> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
> index 34863e9bd54a..0d3084b74c77 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -131,101 +131,6 @@ static void glk_init_clock_gating(struct drm_i915_private *dev_priv)
>  		   PWM1_GATING_DIS | PWM2_GATING_DIS);
>  }
>  
> -static void pnv_get_mem_freq(struct drm_i915_private *dev_priv)
> -{
> -	u32 tmp;
> -
> -	tmp = intel_uncore_read(&dev_priv->uncore, CLKCFG);
> -
> -	switch (tmp & CLKCFG_FSB_MASK) {
> -	case CLKCFG_FSB_533:
> -		dev_priv->fsb_freq = 533; /* 133*4 */
> -		break;
> -	case CLKCFG_FSB_800:
> -		dev_priv->fsb_freq = 800; /* 200*4 */
> -		break;
> -	case CLKCFG_FSB_667:
> -		dev_priv->fsb_freq =  667; /* 167*4 */
> -		break;
> -	case CLKCFG_FSB_400:
> -		dev_priv->fsb_freq = 400; /* 100*4 */
> -		break;
> -	}
> -
> -	switch (tmp & CLKCFG_MEM_MASK) {
> -	case CLKCFG_MEM_533:
> -		dev_priv->mem_freq = 533;
> -		break;
> -	case CLKCFG_MEM_667:
> -		dev_priv->mem_freq = 667;
> -		break;
> -	case CLKCFG_MEM_800:
> -		dev_priv->mem_freq = 800;
> -		break;
> -	}
> -
> -	/* detect pineview DDR3 setting */
> -	tmp = intel_uncore_read(&dev_priv->uncore, CSHRDDR3CTL);
> -	dev_priv->is_ddr3 = (tmp & CSHRDDR3CTL_DDR3) ? 1 : 0;
> -}
> -
> -static void ilk_get_mem_freq(struct drm_i915_private *dev_priv)
> -{
> -	u16 ddrpll, csipll;
> -
> -	ddrpll = intel_uncore_read16(&dev_priv->uncore, DDRMPLL1);
> -	csipll = intel_uncore_read16(&dev_priv->uncore, CSIPLL0);
> -
> -	switch (ddrpll & 0xff) {
> -	case 0xc:
> -		dev_priv->mem_freq = 800;
> -		break;
> -	case 0x10:
> -		dev_priv->mem_freq = 1066;
> -		break;
> -	case 0x14:
> -		dev_priv->mem_freq = 1333;
> -		break;
> -	case 0x18:
> -		dev_priv->mem_freq = 1600;
> -		break;
> -	default:
> -		drm_dbg(&dev_priv->drm, "unknown memory frequency 0x%02x\n",
> -			ddrpll & 0xff);
> -		dev_priv->mem_freq = 0;
> -		break;
> -	}
> -
> -	switch (csipll & 0x3ff) {
> -	case 0x00c:
> -		dev_priv->fsb_freq = 3200;
> -		break;
> -	case 0x00e:
> -		dev_priv->fsb_freq = 3733;
> -		break;
> -	case 0x010:
> -		dev_priv->fsb_freq = 4266;
> -		break;
> -	case 0x012:
> -		dev_priv->fsb_freq = 4800;
> -		break;
> -	case 0x014:
> -		dev_priv->fsb_freq = 5333;
> -		break;
> -	case 0x016:
> -		dev_priv->fsb_freq = 5866;
> -		break;
> -	case 0x018:
> -		dev_priv->fsb_freq = 6400;
> -		break;
> -	default:
> -		drm_dbg(&dev_priv->drm, "unknown fsb frequency 0x%04x\n",
> -			csipll & 0x3ff);
> -		dev_priv->fsb_freq = 0;
> -		break;
> -	}
> -}
> -
>  static const struct cxsr_latency cxsr_latency_table[] = {
>  	{1, 0, 800, 400, 3382, 33382, 3983, 33983},    /* DDR2-400 SC */
>  	{1, 0, 800, 667, 3354, 33354, 3807, 33807},    /* DDR2-667 SC */
> @@ -4893,12 +4798,6 @@ void intel_init_pm(struct drm_i915_private *dev_priv)
>  		return;
>  	}
>  
> -	/* For cxsr */
> -	if (IS_PINEVIEW(dev_priv))
> -		pnv_get_mem_freq(dev_priv);
> -	else if (GRAPHICS_VER(dev_priv) == 5)
> -		ilk_get_mem_freq(dev_priv);
> -
>  	/* For FIFO watermark updates */
>  	if (HAS_PCH_SPLIT(dev_priv)) {
>  		ilk_setup_wm_latency(dev_priv);
> diff --git a/drivers/gpu/drm/i915/soc/intel_dram.c b/drivers/gpu/drm/i915/soc/intel_dram.c
> index bba8cb6e8ae4..9f0651d48d41 100644
> --- a/drivers/gpu/drm/i915/soc/intel_dram.c
> +++ b/drivers/gpu/drm/i915/soc/intel_dram.c
> @@ -10,6 +10,7 @@
>  #include "intel_dram.h"
>  #include "intel_mchbar_regs.h"
>  #include "intel_pcode.h"
> +#include "vlv_sideband.h"
>  
>  struct dram_dimm_info {
>  	u16 size;
> @@ -42,6 +43,155 @@ static const char *intel_dram_type_str(enum intel_dram_type type)
>  
>  #undef DRAM_TYPE_STR
>  
> +static void pnv_detect_mem_freq(struct drm_i915_private *dev_priv)
> +{
> +	u32 tmp;
> +
> +	tmp = intel_uncore_read(&dev_priv->uncore, CLKCFG);
> +
> +	switch (tmp & CLKCFG_FSB_MASK) {
> +	case CLKCFG_FSB_533:
> +		dev_priv->fsb_freq = 533; /* 133*4 */
> +		break;
> +	case CLKCFG_FSB_800:
> +		dev_priv->fsb_freq = 800; /* 200*4 */
> +		break;
> +	case CLKCFG_FSB_667:
> +		dev_priv->fsb_freq =  667; /* 167*4 */
> +		break;
> +	case CLKCFG_FSB_400:
> +		dev_priv->fsb_freq = 400; /* 100*4 */
> +		break;
> +	}
> +
> +	switch (tmp & CLKCFG_MEM_MASK) {
> +	case CLKCFG_MEM_533:
> +		dev_priv->mem_freq = 533;
> +		break;
> +	case CLKCFG_MEM_667:
> +		dev_priv->mem_freq = 667;
> +		break;
> +	case CLKCFG_MEM_800:
> +		dev_priv->mem_freq = 800;
> +		break;
> +	}
> +
> +	/* detect pineview DDR3 setting */
> +	tmp = intel_uncore_read(&dev_priv->uncore, CSHRDDR3CTL);
> +	dev_priv->is_ddr3 = (tmp & CSHRDDR3CTL_DDR3) ? 1 : 0;
> +}
> +
> +static void ilk_detect_mem_freq(struct drm_i915_private *dev_priv)
> +{
> +	u16 ddrpll, csipll;
> +
> +	ddrpll = intel_uncore_read16(&dev_priv->uncore, DDRMPLL1);
> +	switch (ddrpll & 0xff) {
> +	case 0xc:
> +		dev_priv->mem_freq = 800;
> +		break;
> +	case 0x10:
> +		dev_priv->mem_freq = 1066;
> +		break;
> +	case 0x14:
> +		dev_priv->mem_freq = 1333;
> +		break;
> +	case 0x18:
> +		dev_priv->mem_freq = 1600;
> +		break;
> +	default:
> +		drm_dbg(&dev_priv->drm, "unknown memory frequency 0x%02x\n",
> +			ddrpll & 0xff);
> +		dev_priv->mem_freq = 0;
> +		break;
> +	}
> +
> +	csipll = intel_uncore_read16(&dev_priv->uncore, CSIPLL0);
> +	switch (csipll & 0x3ff) {
> +	case 0x00c:
> +		dev_priv->fsb_freq = 3200;
> +		break;
> +	case 0x00e:
> +		dev_priv->fsb_freq = 3733;
> +		break;
> +	case 0x010:
> +		dev_priv->fsb_freq = 4266;
> +		break;
> +	case 0x012:
> +		dev_priv->fsb_freq = 4800;
> +		break;
> +	case 0x014:
> +		dev_priv->fsb_freq = 5333;
> +		break;
> +	case 0x016:
> +		dev_priv->fsb_freq = 5866;
> +		break;
> +	case 0x018:
> +		dev_priv->fsb_freq = 6400;
> +		break;
> +	default:
> +		drm_dbg(&dev_priv->drm, "unknown fsb frequency 0x%04x\n",
> +			csipll & 0x3ff);
> +		dev_priv->fsb_freq = 0;
> +		break;
> +	}
> +}
> +
> +static void chv_detect_mem_freq(struct drm_i915_private *i915)
> +{
> +	u32 val;
> +
> +	vlv_iosf_sb_get(i915, BIT(VLV_IOSF_SB_CCK));
> +	val = vlv_cck_read(i915, CCK_FUSE_REG);
> +	vlv_iosf_sb_put(i915, BIT(VLV_IOSF_SB_CCK));
> +
> +	switch ((val >> 2) & 0x7) {
> +	case 3:
> +		i915->mem_freq = 2000;
> +		break;
> +	default:
> +		i915->mem_freq = 1600;
> +		break;
> +	}
> +}
> +
> +static void vlv_detect_mem_freq(struct drm_i915_private *i915)
> +{
> +	u32 val;
> +
> +	vlv_iosf_sb_get(i915, BIT(VLV_IOSF_SB_PUNIT));
> +	val = vlv_punit_read(i915, PUNIT_REG_GPU_FREQ_STS);
> +	vlv_iosf_sb_put(i915, BIT(VLV_IOSF_SB_PUNIT));
> +
> +	switch ((val >> 6) & 3) {
> +	case 0:
> +	case 1:
> +		i915->mem_freq = 800;
> +		break;
> +	case 2:
> +		i915->mem_freq = 1066;
> +		break;
> +	case 3:
> +		i915->mem_freq = 1333;
> +		break;
> +	}
> +}
> +
> +static void detect_mem_freq(struct drm_i915_private *i915)
> +{
> +	if (IS_PINEVIEW(i915))
> +		pnv_detect_mem_freq(i915);
> +	else if (GRAPHICS_VER(i915) == 5)
> +		ilk_detect_mem_freq(i915);
> +	else if (IS_CHERRYVIEW(i915))
> +		chv_detect_mem_freq(i915);
> +	else if (IS_VALLEYVIEW(i915))
> +		vlv_detect_mem_freq(i915);
> +
> +	if (i915->mem_freq)
> +		drm_dbg(&i915->drm, "DDR speed: %d MHz\n", i915->mem_freq);
> +}
> +
>  static int intel_dimm_num_devices(const struct dram_dimm_info *dimm)
>  {
>  	return dimm->ranks * 64 / (dimm->width ?: 1);
> @@ -507,6 +657,8 @@ void intel_dram_detect(struct drm_i915_private *i915)
>  	struct dram_info *dram_info = &i915->dram_info;
>  	int ret;
>  
> +	detect_mem_freq(i915);
> +
>  	if (GRAPHICS_VER(i915) < 9 || IS_DG2(i915) || !HAS_DISPLAY(i915))
>  		return;
>  
> -- 
> 2.34.1

-- 
Ville Syrjälä
Intel
