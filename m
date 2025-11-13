Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DA98C57B94
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Nov 2025 14:40:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E40B310E81B;
	Thu, 13 Nov 2025 13:39:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XAJ095td";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E203010E816;
 Thu, 13 Nov 2025 13:39:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763041199; x=1794577199;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=sapvOV5Pj1KdCp+k/kGjkInnwm7vnzwze+yLICHU8lE=;
 b=XAJ095td33CTtSGC8vc+iILGU3E6rZcq2EtKUDfDfLVwl++5BWDhBoRY
 19jjzR8lwuEu9xKfH/TKuUH+eSSwoB7S08k31579JTZt8vrdHWjWqpuQE
 9gPbvG4psOoL4ZyQd1ez0SRQ9io1XMYRC9jU2bhZySMWViLHJaba/JVgf
 OwIm3VRkH3btsPtSxkdS5Dfe5xh8hEY50TBghklMnru1OLnjFq1Ll8nBs
 WOTXELsr/fjK1AynIZorG1z/UMlyt7AyD2e8LXn6aTDS6f4E2R9P/aMGq
 8SJxzz7mBwE3DOxT0dvWD/6tuIigQ0Xhia0JJhklwF06U3YYOLwQjnAv1 A==;
X-CSE-ConnectionGUID: kHpx39kgQlCijQgpsVVIkw==
X-CSE-MsgGUID: ded6zMy1SiW9tGxuRNFZsg==
X-IronPort-AV: E=McAfee;i="6800,10657,11612"; a="52683196"
X-IronPort-AV: E=Sophos;i="6.19,302,1754982000"; d="scan'208";a="52683196"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2025 05:39:58 -0800
X-CSE-ConnectionGUID: Kax+rjKdRHCdh80Co2RtjQ==
X-CSE-MsgGUID: GMBUxraORgmitc3XO95f+A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,302,1754982000"; d="scan'208";a="226802418"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.245.81])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2025 05:39:56 -0800
Date: Thu, 13 Nov 2025 15:39:54 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 uma.shankar@intel.com
Subject: Re: [PATCH 5/8] drm/i915/dram: convert to struct intel_display
Message-ID: <aRXfqt3OMWs6emKW@intel.com>
References: <cover.1763027774.git.jani.nikula@intel.com>
 <cc7e5fe8a73296dae9fd162c51fbcbd3b7e52147.1763027774.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <cc7e5fe8a73296dae9fd162c51fbcbd3b7e52147.1763027774.git.jani.nikula@intel.com>
X-Patchwork-Hint: comment
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

On Thu, Nov 13, 2025 at 11:58:02AM +0200, Jani Nikula wrote:
> Convert everything except uncore access to struct intel_display.
> 
> While at it, convert logging to drm_dbg_kms().
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/i9xx_wm.c        |   2 +-
>  drivers/gpu/drm/i915/display/intel_bw.c       |   2 +-
>  drivers/gpu/drm/i915/display/intel_cdclk.c    |   4 +-
>  .../drm/i915/display/intel_display_power.c    |   2 +-
>  drivers/gpu/drm/i915/display/intel_dram.c     | 195 +++++++++---------
>  drivers/gpu/drm/i915/display/intel_dram.h     |  11 +-
>  drivers/gpu/drm/i915/display/skl_watermark.c  |   4 +-
>  drivers/gpu/drm/i915/i915_driver.c            |   2 +-
>  drivers/gpu/drm/xe/display/xe_display.c       |   2 +-
>  9 files changed, 115 insertions(+), 109 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/i9xx_wm.c b/drivers/gpu/drm/i915/display/i9xx_wm.c
> index 27e2d73bc505..167277cd8877 100644
> --- a/drivers/gpu/drm/i915/display/i9xx_wm.c
> +++ b/drivers/gpu/drm/i915/display/i9xx_wm.c
> @@ -90,7 +90,7 @@ static const struct cxsr_latency cxsr_latency_table[] = {
>  
>  static const struct cxsr_latency *pnv_get_cxsr_latency(struct intel_display *display)
>  {
> -	const struct dram_info *dram_info = intel_dram_info(display->drm);
> +	const struct dram_info *dram_info = intel_dram_info(display);
>  	bool is_ddr3 = dram_info->type == INTEL_DRAM_DDR3;
>  	int i;
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
> index 957c90e62569..d27835ed49c2 100644
> --- a/drivers/gpu/drm/i915/display/intel_bw.c
> +++ b/drivers/gpu/drm/i915/display/intel_bw.c
> @@ -799,7 +799,7 @@ static unsigned int icl_qgv_bw(struct intel_display *display,
>  
>  void intel_bw_init_hw(struct intel_display *display)
>  {
> -	const struct dram_info *dram_info = intel_dram_info(display->drm);
> +	const struct dram_info *dram_info = intel_dram_info(display);
>  
>  	if (!HAS_DISPLAY(display))
>  		return;
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
> index 531819391c8c..5c90e53b4e46 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -3737,10 +3737,8 @@ static int pch_rawclk(struct intel_display *display)
>  
>  static int i9xx_hrawclk(struct intel_display *display)
>  {
> -	struct drm_i915_private *i915 = to_i915(display->drm);
> -
>  	/* hrawclock is 1/4 the FSB frequency */
> -	return DIV_ROUND_CLOSEST(intel_fsb_freq(i915), 4);
> +	return DIV_ROUND_CLOSEST(intel_fsb_freq(display), 4);
>  }
>  
>  /**
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
> index df717b66d30a..69301aa25cfd 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -1617,7 +1617,7 @@ static const struct buddy_page_mask wa_1409767108_buddy_page_masks[] = {
>  
>  static void tgl_bw_buddy_init(struct intel_display *display)
>  {
> -	const struct dram_info *dram_info = intel_dram_info(display->drm);
> +	const struct dram_info *dram_info = intel_dram_info(display);
>  	const struct buddy_page_mask *table;
>  	unsigned long abox_mask = DISPLAY_INFO(display)->abox_mask;
>  	int config, i;
> diff --git a/drivers/gpu/drm/i915/display/intel_dram.c b/drivers/gpu/drm/i915/display/intel_dram.c
> index 8729338c6dcc..5816434cd563 100644
> --- a/drivers/gpu/drm/i915/display/intel_dram.c
> +++ b/drivers/gpu/drm/i915/display/intel_dram.c
> @@ -56,14 +56,17 @@ const char *intel_dram_type_str(enum intel_dram_type type)
>  
>  #undef DRAM_TYPE_STR
>  
> -static enum intel_dram_type pnv_dram_type(struct drm_i915_private *i915)
> +static enum intel_dram_type pnv_dram_type(struct intel_display *display)
>  {
> +	struct drm_i915_private *i915 = to_i915(display->drm);
> +
>  	return intel_uncore_read(&i915->uncore, CSHRDDR3CTL) & CSHRDDR3CTL_DDR3 ?
>  		INTEL_DRAM_DDR3 : INTEL_DRAM_DDR2;
>  }
>  
> -static unsigned int pnv_mem_freq(struct drm_i915_private *dev_priv)
> +static unsigned int pnv_mem_freq(struct intel_display *display)
>  {
> +	struct drm_i915_private *dev_priv = to_i915(display->drm);
>  	u32 tmp;
>  
>  	tmp = intel_uncore_read(&dev_priv->uncore, CLKCFG);
> @@ -80,8 +83,9 @@ static unsigned int pnv_mem_freq(struct drm_i915_private *dev_priv)
>  	return 0;
>  }
>  
> -static unsigned int ilk_mem_freq(struct drm_i915_private *dev_priv)
> +static unsigned int ilk_mem_freq(struct intel_display *display)
>  {
> +	struct drm_i915_private *dev_priv = to_i915(display->drm);
>  	u16 ddrpll;
>  
>  	ddrpll = intel_uncore_read16(&dev_priv->uncore, DDRMPLL1);
> @@ -95,19 +99,19 @@ static unsigned int ilk_mem_freq(struct drm_i915_private *dev_priv)
>  	case 0x18:
>  		return 1600000;
>  	default:
> -		drm_dbg(&dev_priv->drm, "unknown memory frequency 0x%02x\n",
> -			ddrpll & 0xff);
> +		drm_dbg_kms(display->drm, "unknown memory frequency 0x%02x\n",
> +			    ddrpll & 0xff);
>  		return 0;
>  	}
>  }
>  
> -static unsigned int chv_mem_freq(struct drm_i915_private *i915)
> +static unsigned int chv_mem_freq(struct intel_display *display)
>  {
>  	u32 val;
>  
> -	vlv_iosf_sb_get(&i915->drm, BIT(VLV_IOSF_SB_CCK));
> -	val = vlv_iosf_sb_read(&i915->drm, VLV_IOSF_SB_CCK, CCK_FUSE_REG);
> -	vlv_iosf_sb_put(&i915->drm, BIT(VLV_IOSF_SB_CCK));
> +	vlv_iosf_sb_get(display->drm, BIT(VLV_IOSF_SB_CCK));
> +	val = vlv_iosf_sb_read(display->drm, VLV_IOSF_SB_CCK, CCK_FUSE_REG);
> +	vlv_iosf_sb_put(display->drm, BIT(VLV_IOSF_SB_CCK));
>  
>  	switch ((val >> 2) & 0x7) {
>  	case 3:
> @@ -117,13 +121,13 @@ static unsigned int chv_mem_freq(struct drm_i915_private *i915)
>  	}
>  }
>  
> -static unsigned int vlv_mem_freq(struct drm_i915_private *i915)
> +static unsigned int vlv_mem_freq(struct intel_display *display)
>  {
>  	u32 val;
>  
> -	vlv_iosf_sb_get(&i915->drm, BIT(VLV_IOSF_SB_PUNIT));
> -	val = vlv_iosf_sb_read(&i915->drm, VLV_IOSF_SB_PUNIT, PUNIT_REG_GPU_FREQ_STS);
> -	vlv_iosf_sb_put(&i915->drm, BIT(VLV_IOSF_SB_PUNIT));
> +	vlv_iosf_sb_get(display->drm, BIT(VLV_IOSF_SB_PUNIT));
> +	val = vlv_iosf_sb_read(display->drm, VLV_IOSF_SB_PUNIT, PUNIT_REG_GPU_FREQ_STS);
> +	vlv_iosf_sb_put(display->drm, BIT(VLV_IOSF_SB_PUNIT));
>  
>  	switch ((val >> 6) & 3) {
>  	case 0:
> @@ -138,22 +142,23 @@ static unsigned int vlv_mem_freq(struct drm_i915_private *i915)
>  	return 0;
>  }
>  
> -unsigned int intel_mem_freq(struct drm_i915_private *i915)
> +unsigned int intel_mem_freq(struct intel_display *display)
>  {
> -	if (IS_PINEVIEW(i915))
> -		return pnv_mem_freq(i915);
> -	else if (GRAPHICS_VER(i915) == 5)
> -		return ilk_mem_freq(i915);
> -	else if (IS_CHERRYVIEW(i915))
> -		return chv_mem_freq(i915);
> -	else if (IS_VALLEYVIEW(i915))
> -		return vlv_mem_freq(i915);
> +	if (display->platform.pineview)
> +		return pnv_mem_freq(display);
> +	else if (DISPLAY_VER(display) == 5)
> +		return ilk_mem_freq(display);
> +	else if (display->platform.cherryview)
> +		return chv_mem_freq(display);
> +	else if (display->platform.valleyview)
> +		return vlv_mem_freq(display);
>  	else
>  		return 0;
>  }
>  
> -static unsigned int i9xx_fsb_freq(struct drm_i915_private *i915)
> +static unsigned int i9xx_fsb_freq(struct intel_display *display)
>  {
> +	struct drm_i915_private *i915 = to_i915(display->drm);
>  	u32 fsb;
>  
>  	/*
> @@ -166,7 +171,7 @@ static unsigned int i9xx_fsb_freq(struct drm_i915_private *i915)
>  	 */
>  	fsb = intel_uncore_read(&i915->uncore, CLKCFG) & CLKCFG_FSB_MASK;
>  
> -	if (IS_PINEVIEW(i915) || IS_MOBILE(i915)) {
> +	if (display->platform.pineview || display->platform.mobile) {
>  		switch (fsb) {
>  		case CLKCFG_FSB_400:
>  			return 400000;
> @@ -207,8 +212,9 @@ static unsigned int i9xx_fsb_freq(struct drm_i915_private *i915)
>  	}
>  }
>  
> -static unsigned int ilk_fsb_freq(struct drm_i915_private *dev_priv)
> +static unsigned int ilk_fsb_freq(struct intel_display *display)
>  {
> +	struct drm_i915_private *dev_priv = to_i915(display->drm);
>  	u16 fsb;
>  
>  	fsb = intel_uncore_read16(&dev_priv->uncore, CSIPLL0) & 0x3ff;
> @@ -229,33 +235,33 @@ static unsigned int ilk_fsb_freq(struct drm_i915_private *dev_priv)
>  	case 0x018:
>  		return 6400000;
>  	default:
> -		drm_dbg(&dev_priv->drm, "unknown fsb frequency 0x%04x\n", fsb);
> +		drm_dbg_kms(display->drm, "unknown fsb frequency 0x%04x\n", fsb);
>  		return 0;
>  	}
>  }
>  
> -unsigned int intel_fsb_freq(struct drm_i915_private *i915)
> +unsigned int intel_fsb_freq(struct intel_display *display)
>  {
> -	if (GRAPHICS_VER(i915) == 5)
> -		return ilk_fsb_freq(i915);
> -	else if (GRAPHICS_VER(i915) == 3 || GRAPHICS_VER(i915) == 4)
> -		return i9xx_fsb_freq(i915);
> +	if (DISPLAY_VER(display) == 5)
> +		return ilk_fsb_freq(display);
> +	else if (IS_DISPLAY_VER(display, 3, 4))
> +		return i9xx_fsb_freq(display);
>  	else
>  		return 0;
>  }
>  
> -static int i915_get_dram_info(struct drm_i915_private *i915, struct dram_info *dram_info)
> +static int i915_get_dram_info(struct intel_display *display, struct dram_info *dram_info)
>  {
> -	dram_info->fsb_freq = intel_fsb_freq(i915);
> +	dram_info->fsb_freq = intel_fsb_freq(display);
>  	if (dram_info->fsb_freq)
> -		drm_dbg(&i915->drm, "FSB frequency: %d kHz\n", dram_info->fsb_freq);
> +		drm_dbg_kms(display->drm, "FSB frequency: %d kHz\n", dram_info->fsb_freq);
>  
> -	dram_info->mem_freq = intel_mem_freq(i915);
> +	dram_info->mem_freq = intel_mem_freq(display);
>  	if (dram_info->mem_freq)
> -		drm_dbg(&i915->drm, "DDR speed: %d kHz\n", dram_info->mem_freq);
> +		drm_dbg_kms(display->drm, "DDR speed: %d kHz\n", dram_info->mem_freq);
>  
> -	if (IS_PINEVIEW(i915))
> -		dram_info->type = pnv_dram_type(i915);
> +	if (display->platform.pineview)
> +		dram_info->type = pnv_dram_type(display);
>  
>  	return 0;
>  }
> @@ -339,11 +345,11 @@ skl_is_16gb_dimm(const struct dram_dimm_info *dimm)
>  }
>  
>  static void
> -skl_dram_get_dimm_info(struct drm_i915_private *i915,
> +skl_dram_get_dimm_info(struct intel_display *display,
>  		       struct dram_dimm_info *dimm,
>  		       int channel, char dimm_name, u16 val)
>  {
> -	if (GRAPHICS_VER(i915) >= 11) {
> +	if (DISPLAY_VER(display) >= 11) {
>  		dimm->size = icl_get_dimm_size(val);
>  		dimm->width = icl_get_dimm_width(val);
>  		dimm->ranks = icl_get_dimm_ranks(val);
> @@ -353,24 +359,24 @@ skl_dram_get_dimm_info(struct drm_i915_private *i915,
>  		dimm->ranks = skl_get_dimm_ranks(val);
>  	}
>  
> -	drm_dbg_kms(&i915->drm,
> +	drm_dbg_kms(display->drm,
>  		    "CH%u DIMM %c size: %u Gb, width: X%u, ranks: %u, 16Gb+ DIMMs: %s\n",
>  		    channel, dimm_name, dimm->size, dimm->width, dimm->ranks,
>  		    str_yes_no(skl_is_16gb_dimm(dimm)));
>  }
>  
>  static int
> -skl_dram_get_channel_info(struct drm_i915_private *i915,
> +skl_dram_get_channel_info(struct intel_display *display,
>  			  struct dram_channel_info *ch,
>  			  int channel, u32 val)
>  {
> -	skl_dram_get_dimm_info(i915, &ch->dimm_l,
> +	skl_dram_get_dimm_info(display, &ch->dimm_l,
>  			       channel, 'L', val & 0xffff);
> -	skl_dram_get_dimm_info(i915, &ch->dimm_s,
> +	skl_dram_get_dimm_info(display, &ch->dimm_s,
>  			       channel, 'S', val >> 16);
>  
>  	if (ch->dimm_l.size == 0 && ch->dimm_s.size == 0) {
> -		drm_dbg_kms(&i915->drm, "CH%u not populated\n", channel);
> +		drm_dbg_kms(display->drm, "CH%u not populated\n", channel);
>  		return -EINVAL;
>  	}
>  
> @@ -384,7 +390,7 @@ skl_dram_get_channel_info(struct drm_i915_private *i915,
>  	ch->is_16gb_dimm = skl_is_16gb_dimm(&ch->dimm_l) ||
>  		skl_is_16gb_dimm(&ch->dimm_s);
>  
> -	drm_dbg_kms(&i915->drm, "CH%u ranks: %u, 16Gb+ DIMMs: %s\n",
> +	drm_dbg_kms(display->drm, "CH%u ranks: %u, 16Gb+ DIMMs: %s\n",
>  		    channel, ch->ranks, str_yes_no(ch->is_16gb_dimm));
>  
>  	return 0;
> @@ -400,8 +406,9 @@ intel_is_dram_symmetric(const struct dram_channel_info *ch0,
>  }
>  
>  static int
> -skl_dram_get_channels_info(struct drm_i915_private *i915, struct dram_info *dram_info)
> +skl_dram_get_channels_info(struct intel_display *display, struct dram_info *dram_info)
>  {
> +	struct drm_i915_private *i915 = to_i915(display->drm);
>  	struct dram_channel_info ch0 = {}, ch1 = {};
>  	u32 val;
>  	int ret;
> @@ -411,23 +418,23 @@ skl_dram_get_channels_info(struct drm_i915_private *i915, struct dram_info *dram
>  
>  	val = intel_uncore_read(&i915->uncore,
>  				SKL_MAD_DIMM_CH0_0_0_0_MCHBAR_MCMAIN);
> -	ret = skl_dram_get_channel_info(i915, &ch0, 0, val);
> +	ret = skl_dram_get_channel_info(display, &ch0, 0, val);
>  	if (ret == 0)
>  		dram_info->num_channels++;
>  
>  	val = intel_uncore_read(&i915->uncore,
>  				SKL_MAD_DIMM_CH1_0_0_0_MCHBAR_MCMAIN);
> -	ret = skl_dram_get_channel_info(i915, &ch1, 1, val);
> +	ret = skl_dram_get_channel_info(display, &ch1, 1, val);
>  	if (ret == 0)
>  		dram_info->num_channels++;
>  
>  	if (dram_info->num_channels == 0) {
> -		drm_info(&i915->drm, "Number of memory channels is zero\n");
> +		drm_info(display->drm, "Number of memory channels is zero\n");
>  		return -EINVAL;
>  	}
>  
>  	if (ch0.ranks == 0 && ch1.ranks == 0) {
> -		drm_info(&i915->drm, "couldn't get memory rank information\n");
> +		drm_info(display->drm, "couldn't get memory rank information\n");
>  		return -EINVAL;
>  	}
>  
> @@ -435,18 +442,19 @@ skl_dram_get_channels_info(struct drm_i915_private *i915, struct dram_info *dram
>  
>  	dram_info->symmetric_memory = intel_is_dram_symmetric(&ch0, &ch1);
>  
> -	drm_dbg_kms(&i915->drm, "Memory configuration is symmetric? %s\n",
> +	drm_dbg_kms(display->drm, "Memory configuration is symmetric? %s\n",
>  		    str_yes_no(dram_info->symmetric_memory));
>  
> -	drm_dbg_kms(&i915->drm, "16Gb+ DIMMs: %s\n",
> +	drm_dbg_kms(display->drm, "16Gb+ DIMMs: %s\n",
>  		    str_yes_no(dram_info->has_16gb_dimms));
>  
>  	return 0;
>  }
>  
>  static enum intel_dram_type
> -skl_get_dram_type(struct drm_i915_private *i915)
> +skl_get_dram_type(struct intel_display *display)
>  {
> +	struct drm_i915_private *i915 = to_i915(display->drm);
>  	u32 val;
>  
>  	val = intel_uncore_read(&i915->uncore,
> @@ -468,13 +476,13 @@ skl_get_dram_type(struct drm_i915_private *i915)
>  }
>  
>  static int
> -skl_get_dram_info(struct drm_i915_private *i915, struct dram_info *dram_info)
> +skl_get_dram_info(struct intel_display *display, struct dram_info *dram_info)
>  {
>  	int ret;
>  
> -	dram_info->type = skl_get_dram_type(i915);
> +	dram_info->type = skl_get_dram_type(display);
>  
> -	ret = skl_dram_get_channels_info(i915, dram_info);
> +	ret = skl_dram_get_channels_info(display, dram_info);
>  	if (ret)
>  		return ret;
>  
> @@ -559,8 +567,9 @@ static void bxt_get_dimm_info(struct dram_dimm_info *dimm, u32 val)
>  	dimm->size = bxt_get_dimm_size(val) * intel_dimm_num_devices(dimm);
>  }
>  
> -static int bxt_get_dram_info(struct drm_i915_private *i915, struct dram_info *dram_info)
> +static int bxt_get_dram_info(struct intel_display *display, struct dram_info *dram_info)
>  {
> +	struct drm_i915_private *i915 = to_i915(display->drm);
>  	u32 val;
>  	u8 valid_ranks = 0;
>  	int i;
> @@ -581,11 +590,11 @@ static int bxt_get_dram_info(struct drm_i915_private *i915, struct dram_info *dr
>  		bxt_get_dimm_info(&dimm, val);
>  		type = bxt_get_dimm_type(val);
>  
> -		drm_WARN_ON(&i915->drm, type != INTEL_DRAM_UNKNOWN &&
> +		drm_WARN_ON(display->drm, type != INTEL_DRAM_UNKNOWN &&
>  			    dram_info->type != INTEL_DRAM_UNKNOWN &&
>  			    dram_info->type != type);
>  
> -		drm_dbg_kms(&i915->drm,
> +		drm_dbg_kms(display->drm,
>  			    "CH%u DIMM size: %u Gb, width: X%u, ranks: %u\n",
>  			    i - BXT_D_CR_DRP0_DUNIT_START,
>  			    dimm.size, dimm.width, dimm.ranks);
> @@ -598,25 +607,25 @@ static int bxt_get_dram_info(struct drm_i915_private *i915, struct dram_info *dr
>  	}
>  
>  	if (dram_info->type == INTEL_DRAM_UNKNOWN || valid_ranks == 0) {
> -		drm_info(&i915->drm, "couldn't get memory information\n");
> +		drm_info(display->drm, "couldn't get memory information\n");
>  		return -EINVAL;
>  	}
>  
>  	return 0;
>  }
>  
> -static int icl_pcode_read_mem_global_info(struct drm_i915_private *dev_priv,
> +static int icl_pcode_read_mem_global_info(struct intel_display *display,
>  					  struct dram_info *dram_info)
>  {
>  	u32 val = 0;
>  	int ret;
>  
> -	ret = intel_pcode_read(&dev_priv->drm, ICL_PCODE_MEM_SUBSYSYSTEM_INFO |
> +	ret = intel_pcode_read(display->drm, ICL_PCODE_MEM_SUBSYSYSTEM_INFO |
>  			       ICL_PCODE_MEM_SS_READ_GLOBAL_INFO, &val, NULL);
>  	if (ret)
>  		return ret;
>  
> -	if (GRAPHICS_VER(dev_priv) == 12) {
> +	if (DISPLAY_VER(display) == 12) {
>  		switch (val & 0xf) {
>  		case 0:
>  			dram_info->type = INTEL_DRAM_DDR4;
> @@ -667,25 +676,25 @@ static int icl_pcode_read_mem_global_info(struct drm_i915_private *dev_priv,
>  	return 0;
>  }
>  
> -static int gen11_get_dram_info(struct drm_i915_private *i915, struct dram_info *dram_info)
> +static int gen11_get_dram_info(struct intel_display *display, struct dram_info *dram_info)
>  {
>  	int ret;
>  
> -	ret = skl_dram_get_channels_info(i915, dram_info);
> +	ret = skl_dram_get_channels_info(display, dram_info);
>  	if (ret)
>  		return ret;
>  
> -	return icl_pcode_read_mem_global_info(i915, dram_info);
> +	return icl_pcode_read_mem_global_info(display, dram_info);
>  }
>  
> -static int gen12_get_dram_info(struct drm_i915_private *i915, struct dram_info *dram_info)
> +static int gen12_get_dram_info(struct intel_display *display, struct dram_info *dram_info)
>  {
> -	return icl_pcode_read_mem_global_info(i915, dram_info);
> +	return icl_pcode_read_mem_global_info(display, dram_info);
>  }
>  
> -static int xelpdp_get_dram_info(struct drm_i915_private *i915, struct dram_info *dram_info)
> +static int xelpdp_get_dram_info(struct intel_display *display, struct dram_info *dram_info)
>  {
> -	struct intel_display *display = i915->display;
> +	struct drm_i915_private *i915 = to_i915(display->drm);
>  	u32 val = intel_uncore_read(&i915->uncore, MTL_MEM_SS_INFO_GLOBAL);
>  
>  	switch (REG_FIELD_GET(MTL_DDR_TYPE_MASK, val)) {
> @@ -708,11 +717,11 @@ static int xelpdp_get_dram_info(struct drm_i915_private *i915, struct dram_info
>  		dram_info->type = INTEL_DRAM_LPDDR3;
>  		break;
>  	case 8:
> -		drm_WARN_ON(&i915->drm, !IS_DGFX(i915));
> +		drm_WARN_ON(display->drm, !display->platform.dgfx);
>  		dram_info->type = INTEL_DRAM_GDDR;
>  		break;
>  	case 9:
> -		drm_WARN_ON(&i915->drm, !IS_DGFX(i915));
> +		drm_WARN_ON(display->drm, !display->platform.dgfx);
>  		dram_info->type = INTEL_DRAM_GDDR_ECC;
>  		break;
>  	default:
> @@ -730,41 +739,41 @@ static int xelpdp_get_dram_info(struct drm_i915_private *i915, struct dram_info
>  	return 0;
>  }
>  
> -int intel_dram_detect(struct drm_i915_private *i915)
> +int intel_dram_detect(struct intel_display *display)
>  {
> -	struct intel_display *display = i915->display;
> +	struct drm_i915_private *i915 = to_i915(display->drm);
>  	struct dram_info *dram_info;
>  	int ret;
>  
> -	if (IS_DG2(i915) || !intel_display_device_present(display))
> +	if (display->platform.dg2 || !HAS_DISPLAY(display))
>  		return 0;
>  
> -	dram_info = drmm_kzalloc(&i915->drm, sizeof(*dram_info), GFP_KERNEL);
> +	dram_info = drmm_kzalloc(display->drm, sizeof(*dram_info), GFP_KERNEL);
>  	if (!dram_info)
>  		return -ENOMEM;
>  
>  	i915->dram_info = dram_info;
>  
>  	if (DISPLAY_VER(display) >= 14)
> -		ret = xelpdp_get_dram_info(i915, dram_info);
> -	else if (GRAPHICS_VER(i915) >= 12)
> -		ret = gen12_get_dram_info(i915, dram_info);
> -	else if (GRAPHICS_VER(i915) >= 11)
> -		ret = gen11_get_dram_info(i915, dram_info);
> -	else if (IS_BROXTON(i915) || IS_GEMINILAKE(i915))
> -		ret = bxt_get_dram_info(i915, dram_info);
> -	else if (GRAPHICS_VER(i915) >= 9)
> -		ret = skl_get_dram_info(i915, dram_info);
> +		ret = xelpdp_get_dram_info(display, dram_info);
> +	else if (DISPLAY_VER(display) >= 12)
> +		ret = gen12_get_dram_info(display, dram_info);

I was wondering if we have any situations here where the display
vs. graphics ver differs, but can't immediately think of anything
that would go wrong here. So seems fine.

I think we should land https://patchwork.freedesktop.org/series/156793/
before this one though, just in case we late discover that we need
a stable backport of it.

> +	else if (DISPLAY_VER(display) >= 11)
> +		ret = gen11_get_dram_info(display, dram_info);
> +	else if (display->platform.broxton || display->platform.geminilake)
> +		ret = bxt_get_dram_info(display, dram_info);
> +	else if (DISPLAY_VER(display) >= 9)
> +		ret = skl_get_dram_info(display, dram_info);
>  	else
> -		ret = i915_get_dram_info(i915, dram_info);
> +		ret = i915_get_dram_info(display, dram_info);
>  
> -	drm_dbg_kms(&i915->drm, "DRAM type: %s\n",
> +	drm_dbg_kms(display->drm, "DRAM type: %s\n",
>  		    intel_dram_type_str(dram_info->type));
>  
> -	drm_dbg_kms(&i915->drm, "DRAM channels: %u\n", dram_info->num_channels);
> +	drm_dbg_kms(display->drm, "DRAM channels: %u\n", dram_info->num_channels);
>  
> -	drm_dbg_kms(&i915->drm, "Num QGV points %u\n", dram_info->num_qgv_points);
> -	drm_dbg_kms(&i915->drm, "Num PSF GV points %u\n", dram_info->num_psf_gv_points);
> +	drm_dbg_kms(display->drm, "Num QGV points %u\n", dram_info->num_qgv_points);
> +	drm_dbg_kms(display->drm, "Num PSF GV points %u\n", dram_info->num_psf_gv_points);
>  
>  	/* TODO: Do we want to abort probe on dram detection failures? */
>  	if (ret)
> @@ -778,9 +787,9 @@ int intel_dram_detect(struct drm_i915_private *i915)
>   * checks, and prefer not dereferencing on platforms that shouldn't look at dram
>   * info, to catch accidental and incorrect dram info checks.
>   */
> -const struct dram_info *intel_dram_info(struct drm_device *drm)
> +const struct dram_info *intel_dram_info(struct intel_display *display)
>  {
> -	struct drm_i915_private *i915 = to_i915(drm);
> +	struct drm_i915_private *i915 = to_i915(display->drm);
>  
>  	return i915->dram_info;
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_dram.h b/drivers/gpu/drm/i915/display/intel_dram.h
> index 58aaf2f91afe..5800b7b4e614 100644
> --- a/drivers/gpu/drm/i915/display/intel_dram.h
> +++ b/drivers/gpu/drm/i915/display/intel_dram.h
> @@ -8,8 +8,7 @@
>  
>  #include <linux/types.h>
>  
> -struct drm_i915_private;
> -struct drm_device;
> +struct intel_display;
>  
>  struct dram_info {
>  	enum intel_dram_type {
> @@ -35,10 +34,10 @@ struct dram_info {
>  	bool has_16gb_dimms;
>  };
>  
> -int intel_dram_detect(struct drm_i915_private *i915);
> -unsigned int intel_fsb_freq(struct drm_i915_private *i915);
> -unsigned int intel_mem_freq(struct drm_i915_private *i915);
> -const struct dram_info *intel_dram_info(struct drm_device *drm);
> +int intel_dram_detect(struct intel_display *display);
> +unsigned int intel_fsb_freq(struct intel_display *display);
> +unsigned int intel_mem_freq(struct intel_display *display);
> +const struct dram_info *intel_dram_info(struct intel_display *display);
>  const char *intel_dram_type_str(enum intel_dram_type type);
>  
>  #endif /* __INTEL_DRAM_H__ */
> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
> index a33e0cec8cba..7964cfffdaae 100644
> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> @@ -3125,7 +3125,7 @@ static bool skl_watermark_ipc_can_enable(struct intel_display *display)
>  	if (display->platform.kabylake ||
>  	    display->platform.coffeelake ||
>  	    display->platform.cometlake) {
> -		const struct dram_info *dram_info = intel_dram_info(display->drm);
> +		const struct dram_info *dram_info = intel_dram_info(display);
>  
>  		return dram_info->symmetric_memory;
>  	}
> @@ -3169,7 +3169,7 @@ static void increase_wm_latency(struct intel_display *display, int inc)
>  
>  static bool need_16gb_dimm_wa(struct intel_display *display)
>  {
> -	const struct dram_info *dram_info = intel_dram_info(display->drm);
> +	const struct dram_info *dram_info = intel_dram_info(display);
>  
>  	return (display->platform.skylake || display->platform.kabylake ||
>  		display->platform.coffeelake || display->platform.cometlake ||
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> index 356f7fa5cdb8..1dc6ba4cf5a9 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -573,7 +573,7 @@ static int i915_driver_hw_probe(struct drm_i915_private *dev_priv)
>  	 * Fill the dram structure to get the system dram info. This will be
>  	 * used for memory latency calculation.
>  	 */
> -	ret = intel_dram_detect(dev_priv);
> +	ret = intel_dram_detect(display);
>  	if (ret)
>  		goto err_opregion;
>  
> diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
> index c29f96da0617..1127a699cded 100644
> --- a/drivers/gpu/drm/xe/display/xe_display.c
> +++ b/drivers/gpu/drm/xe/display/xe_display.c
> @@ -122,7 +122,7 @@ int xe_display_init_early(struct xe_device *xe)
>  	 * Fill the dram structure to get the system dram info. This will be
>  	 * used for memory latency calculation.
>  	 */
> -	err = intel_dram_detect(xe);
> +	err = intel_dram_detect(display);
>  	if (err)
>  		goto err_opregion;
>  
> -- 
> 2.47.3

-- 
Ville Syrjälä
Intel
