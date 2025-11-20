Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E18CC72DF3
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Nov 2025 09:31:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4933A10E70C;
	Thu, 20 Nov 2025 08:31:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hqERbvsH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8328910E049;
 Thu, 20 Nov 2025 08:31:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763627471; x=1795163471;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=cP23oxiEgUv76/ynCtto7wMDVPV0USQsieGXOV9QnRk=;
 b=hqERbvsHQL3u0ENkgBVm5VD3mBf03Ic8+yb28+8KSlFN1QiLinTq+ULA
 UNSe+8MB+YvNsbmqexILdkkfK1YYo+yPopEkycue4Wtssgg6BESrUrMp8
 ra8FVYGHOxkbvlgNs2m5bffObGtB1KPSSmJ8S0zKlT6qgpjIv0guXvvaH
 moR7ByFszqq4KjhlWAsQKqIXlB0pr1Szj2hwf+0eXhpudoc1hdzbyR9a3
 hDrc6MEOz0PdicZfrvhCAsnQ5Yl4dloQBtAP+loR/EH4fyVlQL7sEXfDh
 NfKjXMuWcLs2LaEUkjApMcdboEcmZI5F3wVp3ubvF2C9w3pjWtHPdT7Pp g==;
X-CSE-ConnectionGUID: 89lDD+45Qh2JOafDWGSj5Q==
X-CSE-MsgGUID: SaTIlxZRR+ySv/Pcdxq0Bg==
X-IronPort-AV: E=McAfee;i="6800,10657,11618"; a="69556451"
X-IronPort-AV: E=Sophos;i="6.19,317,1754982000"; d="scan'208";a="69556451"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2025 00:31:11 -0800
X-CSE-ConnectionGUID: 88HL7rzVRWGIHcV84/emcA==
X-CSE-MsgGUID: 29TUNEb9SWOEzQGkJDfdlw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,317,1754982000"; d="scan'208";a="195778693"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.6])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2025 00:31:09 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 ville.syrjala@linux.intel.com
Subject: Re: [PATCH v2 05/13] drm/i915/dram: convert to struct intel_display
In-Reply-To: <b77d1fe4d12fd47ae0edee7ad8c0e9f44ca9246d.1763578288.git.jani.nikula@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1763578288.git.jani.nikula@intel.com>
 <b77d1fe4d12fd47ae0edee7ad8c0e9f44ca9246d.1763578288.git.jani.nikula@intel.com>
Date: Thu, 20 Nov 2025 10:31:06 +0200
Message-ID: <096de67d74882f91f10af67f6d740e3c6b4dee0c@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Wed, 19 Nov 2025, Jani Nikula <jani.nikula@intel.com> wrote:
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
>  drivers/gpu/drm/i915/display/intel_dram.c     | 205 +++++++++---------
>  drivers/gpu/drm/i915/display/intel_dram.h     |  11 +-
>  drivers/gpu/drm/i915/display/skl_watermark.c  |   4 +-
>  drivers/gpu/drm/i915/i915_driver.c            |   2 +-
>  drivers/gpu/drm/xe/display/xe_display.c       |   2 +-
>  9 files changed, 120 insertions(+), 114 deletions(-)
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
> index 9c5f0277d8c2..08db9bbbfcb1 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -1616,7 +1616,7 @@ static const struct buddy_page_mask wa_1409767108_buddy_page_masks[] = {
>  
>  static void tgl_bw_buddy_init(struct intel_display *display)
>  {
> -	const struct dram_info *dram_info = intel_dram_info(display->drm);
> +	const struct dram_info *dram_info = intel_dram_info(display);
>  	const struct buddy_page_mask *table;
>  	unsigned long abox_mask = DISPLAY_INFO(display)->abox_mask;
>  	int config, i;
> diff --git a/drivers/gpu/drm/i915/display/intel_dram.c b/drivers/gpu/drm/i915/display/intel_dram.c
> index 7142772f2a6e..3dfcc7938740 100644
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
> @@ -391,22 +397,22 @@ skl_is_16gb_dimm(const struct dram_dimm_info *dimm)
>  }
>  
>  static void
> -skl_dram_print_dimm_info(struct drm_i915_private *i915,
> +skl_dram_print_dimm_info(struct intel_display *display,
>  			 struct dram_dimm_info *dimm,
>  			 int channel, char dimm_name)
>  {
> -	drm_dbg_kms(&i915->drm,
> +	drm_dbg_kms(display->drm,
>  		    "CH%u DIMM %c size: %u Gb, width: X%u, ranks: %u, 16Gb+ DIMMs: %s\n",
>  		    channel, dimm_name, dimm->size, dimm->width, dimm->ranks,
>  		    str_yes_no(skl_is_16gb_dimm(dimm)));
>  }
>  
>  static void
> -skl_dram_get_dimm_l_info(struct drm_i915_private *i915,
> +skl_dram_get_dimm_l_info(struct intel_display *display,
>  			 struct dram_dimm_info *dimm,
>  			 int channel, u32 val)
>  {
> -	if (GRAPHICS_VER(i915) >= 11) {
> +	if (DISPLAY_VER(display) >= 11) {
>  		dimm->size = icl_get_dimm_l_size(val);
>  		dimm->width = icl_get_dimm_l_width(val);
>  		dimm->ranks = icl_get_dimm_l_ranks(val);
> @@ -416,15 +422,15 @@ skl_dram_get_dimm_l_info(struct drm_i915_private *i915,
>  		dimm->ranks = skl_get_dimm_l_ranks(val);
>  	}
>  
> -	skl_dram_print_dimm_info(i915, dimm, channel, 'L');
> +	skl_dram_print_dimm_info(display, dimm, channel, 'L');
>  }
>  
>  static void
> -skl_dram_get_dimm_s_info(struct drm_i915_private *i915,
> +skl_dram_get_dimm_s_info(struct intel_display *display,
>  			 struct dram_dimm_info *dimm,
>  			 int channel, u32 val)
>  {
> -	if (GRAPHICS_VER(i915) >= 11) {
> +	if (DISPLAY_VER(display) >= 11) {
>  		dimm->size = icl_get_dimm_s_size(val);
>  		dimm->width = icl_get_dimm_s_width(val);
>  		dimm->ranks = icl_get_dimm_s_ranks(val);
> @@ -434,19 +440,19 @@ skl_dram_get_dimm_s_info(struct drm_i915_private *i915,
>  		dimm->ranks = skl_get_dimm_s_ranks(val);
>  	}
>  
> -	skl_dram_print_dimm_info(i915, dimm, channel, 'S');
> +	skl_dram_print_dimm_info(display, dimm, channel, 'S');
>  }
>  
>  static int
> -skl_dram_get_channel_info(struct drm_i915_private *i915,
> +skl_dram_get_channel_info(struct intel_display *display,
>  			  struct dram_channel_info *ch,
>  			  int channel, u32 val)
>  {
> -	skl_dram_get_dimm_l_info(i915, &ch->dimm_l, channel, val);
> -	skl_dram_get_dimm_s_info(i915, &ch->dimm_s, channel, val);
> +	skl_dram_get_dimm_l_info(display, &ch->dimm_l, channel, val);
> +	skl_dram_get_dimm_s_info(display, &ch->dimm_s, channel, val);
>  
>  	if (ch->dimm_l.size == 0 && ch->dimm_s.size == 0) {
> -		drm_dbg_kms(&i915->drm, "CH%u not populated\n", channel);
> +		drm_dbg_kms(display->drm, "CH%u not populated\n", channel);
>  		return -EINVAL;
>  	}
>  
> @@ -460,7 +466,7 @@ skl_dram_get_channel_info(struct drm_i915_private *i915,
>  	ch->is_16gb_dimm = skl_is_16gb_dimm(&ch->dimm_l) ||
>  		skl_is_16gb_dimm(&ch->dimm_s);
>  
> -	drm_dbg_kms(&i915->drm, "CH%u ranks: %u, 16Gb+ DIMMs: %s\n",
> +	drm_dbg_kms(display->drm, "CH%u ranks: %u, 16Gb+ DIMMs: %s\n",
>  		    channel, ch->ranks, str_yes_no(ch->is_16gb_dimm));
>  
>  	return 0;
> @@ -476,8 +482,9 @@ intel_is_dram_symmetric(const struct dram_channel_info *ch0,
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
> @@ -487,23 +494,23 @@ skl_dram_get_channels_info(struct drm_i915_private *i915, struct dram_info *dram
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
> @@ -511,18 +518,19 @@ skl_dram_get_channels_info(struct drm_i915_private *i915, struct dram_info *dram
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
> @@ -544,13 +552,13 @@ skl_get_dram_type(struct drm_i915_private *i915)
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
> @@ -635,8 +643,9 @@ static void bxt_get_dimm_info(struct dram_dimm_info *dimm, u32 val)
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
> @@ -657,11 +666,11 @@ static int bxt_get_dram_info(struct drm_i915_private *i915, struct dram_info *dr
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
> @@ -674,25 +683,25 @@ static int bxt_get_dram_info(struct drm_i915_private *i915, struct dram_info *dr
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

CI tells me this goes south on e.g. ADL-P (or TWL) which has graphics
version 12 but display version 13.

What to do.


BR,
Jani.

>  		switch (val & 0xf) {
>  		case 0:
>  			dram_info->type = INTEL_DRAM_DDR4;
> @@ -743,25 +752,25 @@ static int icl_pcode_read_mem_global_info(struct drm_i915_private *dev_priv,
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
> @@ -784,11 +793,11 @@ static int xelpdp_get_dram_info(struct drm_i915_private *i915, struct dram_info
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
> @@ -806,41 +815,41 @@ static int xelpdp_get_dram_info(struct drm_i915_private *i915, struct dram_info
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
> @@ -854,9 +863,9 @@ int intel_dram_detect(struct drm_i915_private *i915)
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
> index d1f573f1b6cc..2369e2b55096 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -574,7 +574,7 @@ static int i915_driver_hw_probe(struct drm_i915_private *dev_priv)
>  	 * Fill the dram structure to get the system dram info. This will be
>  	 * used for memory latency calculation.
>  	 */
> -	ret = intel_dram_detect(dev_priv);
> +	ret = intel_dram_detect(display);
>  	if (ret)
>  		goto err_opregion;
>  
> diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
> index 9b1d21e03df0..793115077615 100644
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

-- 
Jani Nikula, Intel
