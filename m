Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CE40B5A1A8
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Sep 2025 21:51:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EA76D10E779;
	Tue, 16 Sep 2025 19:51:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eE1qKMkU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 501DF10E3F7;
 Tue, 16 Sep 2025 19:51:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758052281; x=1789588281;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=BsUaMhfHQuaxszHVzjwKBieBbvGhzdgLALdml7qzdIs=;
 b=eE1qKMkU19udC5OpI5fKQKa6PEZM5Vf+i9a+N0owNzVCmKAtzj/OupQj
 KofNBU0aAmUbZJ8lwDH6qFCo8ZcNx13/aMkazZbeH4bwg2NvmAoCFQZAU
 NIAXV3sRGeCRtWgQ8Dp4UiceLvHWo+MjNxeXf5qtMPK6r3qwLacwNNLQt
 JgwpWw3rMTxDXBHDR9jCFdWt5kNeFL2oHD5YCs+m2nX2TAIcxTKBEdWVn
 OBuMcnpRsIBu6Ywr3v8wSxRk5/0JIuBKD1eU5HSmvIVYbvbJebitPJB5g
 aNjU+u5RORmc5gAe1M+o1DqN/gHBZfvAbEnJG4bQWqVIJWyA0xeD936cF Q==;
X-CSE-ConnectionGUID: EZIc+GOiRJeM4i2woNcKdQ==
X-CSE-MsgGUID: 4iXwnhRZSfeCY51cWSqKBA==
X-IronPort-AV: E=McAfee;i="6800,10657,11555"; a="62981436"
X-IronPort-AV: E=Sophos;i="6.18,269,1751266800"; d="scan'208";a="62981436"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2025 12:51:21 -0700
X-CSE-ConnectionGUID: li47KffORK6j4lFfv8UPJQ==
X-CSE-MsgGUID: zwK+qG1eTLSHsvoywxv3dw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,269,1751266800"; d="scan'208";a="175462773"
Received: from ijarvine-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.245.225])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2025 12:51:19 -0700
Date: Tue, 16 Sep 2025 22:51:11 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 michal.grzelak@intel.com
Subject: Re: [PATCH v2 10/15] drm/i915: cache the results in
 vlv_clock_get_hpll_vco() and use it more
Message-ID: <aMm_r5PJtPNYFq8i@intel.com>
References: <cover.1757688216.git.jani.nikula@intel.com>
 <14695618682d8d8fad1adc485de7a122c8e1494a.1757688216.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <14695618682d8d8fad1adc485de7a122c8e1494a.1757688216.git.jani.nikula@intel.com>
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

On Fri, Sep 12, 2025 at 05:48:49PM +0300, Jani Nikula wrote:
> Use vlv_clock_get_hpll_vco() helper more to avoid looking at
> i915->hpll_freq directly. Cache and return the cached results to avoid
> repeated lookups.
> 
> v2: Rebase
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cdclk.c   | 10 +++-----
>  drivers/gpu/drm/i915/display/intel_display.c | 27 ++++++++------------
>  2 files changed, 14 insertions(+), 23 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
> index ea1e6d964764..e77efa0f33ed 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -563,8 +563,7 @@ static void hsw_get_cdclk(struct intel_display *display,
>  
>  static int vlv_calc_cdclk(struct intel_display *display, int min_cdclk)
>  {
> -	struct drm_i915_private *dev_priv = to_i915(display->drm);
> -	int freq_320 = (dev_priv->hpll_freq <<  1) % 320000 != 0 ?
> +	int freq_320 = (vlv_clock_get_hpll_vco(display->drm) <<  1) % 320000 != 0 ?
>  		333333 : 320000;

The somewhat dodgy thing here is that the device might not even be
awake when this is called. So this on-demand caching only works
correctly if the first call happens to be done at the right time
by accident.

I suppose we do end up calling most of these at some point during
the driver initialization when everything is powered on, but the
whole thing does feel rather fragile. I suppose we can hope that
the limited CI coverage was enough to catch most of that.

It would probably make sense to introduce an explicit initalization
function that can be called under controlled circumstances. But we
could do that as a followup, and in the meantime maybe toss in a
few remarks somewhere to remind us about this potential trap...

Series is
Acked-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

>  
>  	/*
> @@ -584,8 +583,6 @@ static int vlv_calc_cdclk(struct intel_display *display, int min_cdclk)
>  
>  static u8 vlv_calc_voltage_level(struct intel_display *display, int cdclk)
>  {
> -	struct drm_i915_private *dev_priv = to_i915(display->drm);
> -
>  	if (display->platform.valleyview) {
>  		if (cdclk >= 320000) /* jump to highest voltage for 400MHz too */
>  			return 2;
> @@ -599,7 +596,7 @@ static u8 vlv_calc_voltage_level(struct intel_display *display, int cdclk)
>  		 * hardware has shown that we just need to write the desired
>  		 * CCK divider into the Punit register.
>  		 */
> -		return DIV_ROUND_CLOSEST(dev_priv->hpll_freq << 1, cdclk) - 1;
> +		return DIV_ROUND_CLOSEST(vlv_clock_get_hpll_vco(display->drm) << 1, cdclk) - 1;
>  	}
>  }
>  
> @@ -664,7 +661,6 @@ static void vlv_set_cdclk(struct intel_display *display,
>  			  const struct intel_cdclk_config *cdclk_config,
>  			  enum pipe pipe)
>  {
> -	struct drm_i915_private *dev_priv = to_i915(display->drm);
>  	int cdclk = cdclk_config->cdclk;
>  	u32 val, cmd = cdclk_config->voltage_level;
>  	intel_wakeref_t wakeref;
> @@ -709,7 +705,7 @@ static void vlv_set_cdclk(struct intel_display *display,
>  	if (cdclk == 400000) {
>  		u32 divider;
>  
> -		divider = DIV_ROUND_CLOSEST(dev_priv->hpll_freq << 1,
> +		divider = DIV_ROUND_CLOSEST(vlv_clock_get_hpll_vco(display->drm) << 1,
>  					    cdclk) - 1;
>  
>  		/* adjust cdclk divider */
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 022f32ffd697..7b5379262a37 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -144,17 +144,20 @@ static void bdw_set_pipe_misc(struct intel_dsb *dsb,
>  /* returns HPLL frequency in kHz */
>  int vlv_clock_get_hpll_vco(struct drm_device *drm)
>  {
> +	struct drm_i915_private *i915 = to_i915(drm);
>  	int hpll_freq, vco_freq[] = { 800, 1600, 2000, 2400 };
>  
> -	vlv_cck_get(drm);
> -
> -	/* Obtain SKU information */
> -	hpll_freq = vlv_cck_read(drm, CCK_FUSE_REG) &
> -		CCK_FUSE_HPLL_FREQ_MASK;
> +	if (!i915->hpll_freq) {
> +		vlv_cck_get(drm);
> +		/* Obtain SKU information */
> +		hpll_freq = vlv_cck_read(drm, CCK_FUSE_REG) &
> +			CCK_FUSE_HPLL_FREQ_MASK;
> +		vlv_cck_put(drm);
>  
> -	vlv_cck_put(drm);
> +		i915->hpll_freq = vco_freq[hpll_freq] * 1000;
> +	}
>  
> -	return vco_freq[hpll_freq] * 1000;
> +	return i915->hpll_freq;
>  }
>  
>  static int vlv_get_cck_clock(struct drm_device *drm,
> @@ -179,15 +182,7 @@ static int vlv_get_cck_clock(struct drm_device *drm,
>  static int vlv_get_cck_clock_hpll(struct drm_device *drm,
>  				  const char *name, u32 reg)
>  {
> -	struct drm_i915_private *dev_priv = to_i915(drm);
> -	int hpll;
> -
> -	if (dev_priv->hpll_freq == 0)
> -		dev_priv->hpll_freq = vlv_clock_get_hpll_vco(drm);
> -
> -	hpll = vlv_get_cck_clock(drm, name, reg, dev_priv->hpll_freq);
> -
> -	return hpll;
> +	return vlv_get_cck_clock(drm, name, reg, vlv_clock_get_hpll_vco(drm));
>  }
>  
>  int vlv_clock_get_hrawclk(struct drm_device *drm)
> -- 
> 2.47.3

-- 
Ville Syrjälä
Intel
