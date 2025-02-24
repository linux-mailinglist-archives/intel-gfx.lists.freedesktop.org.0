Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4498FA42182
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Feb 2025 14:44:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4596610E531;
	Mon, 24 Feb 2025 13:42:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="d5pIUE23";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1E0F789F35;
 Mon, 24 Feb 2025 09:14:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740388445; x=1771924445;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=8nqkTPo40v4sfiDwW+3JGWWXLwWiP21pDbBjKDn3cOA=;
 b=d5pIUE232PSJwHYk02vzyWA4yh6F3Se2C6YOfyIm7JM9yKP/YZTjD4w7
 KgjLjvukj3NsW+MEoa5Yc7lpDb2o6ZD5rB61megRQoGFHfn2u3iDHrFoC
 CuDcCGKFi8O5qJvBiRf05IqFVu1m1rhxSTv9c+4aT7eKeTVS6QU3UmqfC
 NBKW1ffgJmDeixgGXmqP/rLJ8FwC3q7XgWV8wBESTBXE2n4ZE11aVj2OA
 z/SolpyPhuUI5RneQ4N3Y+hOsncCbqc8OqIGWA17RFr+lH2wSOu1BVtGB
 mYZzo305UG7snI3WBAWCDalkPTLKSZlLKpWRQSxJvl2LpGxAEga8dMqA8 g==;
X-CSE-ConnectionGUID: 1xkm/rnsTcGYLEhiVEIWyg==
X-CSE-MsgGUID: cJq3h06ASEe4d7XKf+nGDQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11354"; a="63603210"
X-IronPort-AV: E=Sophos;i="6.13,309,1732608000"; d="scan'208";a="63603210"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2025 01:14:04 -0800
X-CSE-ConnectionGUID: Hp6+tUu4QoCfPgkM5kHM/g==
X-CSE-MsgGUID: N0OXaPx/RJSR7JJfrlLuVw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,309,1732608000"; d="scan'208";a="121094576"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.133])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2025 01:14:01 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Matt Roper <matthew.d.roper@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Cc: matthew.d.roper@intel.com
Subject: Re: [PATCH 1/4] drm/i915/display: Make refclk fetching logic reusable
In-Reply-To: <20250221003843.443559-7-matthew.d.roper@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250221003843.443559-6-matthew.d.roper@intel.com>
 <20250221003843.443559-7-matthew.d.roper@intel.com>
Date: Mon, 24 Feb 2025 11:13:58 +0200
Message-ID: <87ikoz902x.fsf@intel.com>
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

On Thu, 20 Feb 2025, Matt Roper <matthew.d.roper@intel.com> wrote:
> There's cdclk-specific code to obtain the display reference clock,
> either by reading a strap register, or by using a platform-specific
> hardcoded value.  There's at least one other place in our drivers that
> potentially needs this clock frequency, so refactor the logic to make it
> more generally usable.
>
> While we're at it, change the fallback frequency we assume if the strap
> readout gives us something unrecognizable to 38.4MHz for platforms with
> display version 14 and above.  38.4MHz seems to be the sole frequency
> that's actually been used in recent history (since MTL), so this is
> probably the safest guess to make going forward.

Refactoring and functional changes should be kept separate.

>
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cdclk.c | 44 +++++++++++++---------
>  drivers/gpu/drm/i915/display/intel_cdclk.h |  1 +
>  2 files changed, 28 insertions(+), 17 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
> index c6cfc57a0346..57b01f8a7be8 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -1636,38 +1636,48 @@ static u8 xe3lpd_calc_voltage_level(int cdclk)
>  	return 0;
>  }
>  
> -static void icl_readout_refclk(struct intel_display *display,
> -			       struct intel_cdclk_config *cdclk_config)
> +static u32 icl_readout_refclk(struct intel_display *display)

Wondering about the use of u32 for this. The cdclk_config->ref member is
unsigned int.

>  {
>  	u32 dssm = intel_de_read(display, SKL_DSSM) & ICL_DSSM_CDCLK_PLL_REFCLK_MASK;
>  
>  	switch (dssm) {
> -	default:
> -		MISSING_CASE(dssm);
> -		fallthrough;
>  	case ICL_DSSM_CDCLK_PLL_REFCLK_24MHz:
> -		cdclk_config->ref = 24000;
> -		break;
> +		return 24000;
>  	case ICL_DSSM_CDCLK_PLL_REFCLK_19_2MHz:
> -		cdclk_config->ref = 19200;
> -		break;
> +		return 19200;
>  	case ICL_DSSM_CDCLK_PLL_REFCLK_38_4MHz:
> -		cdclk_config->ref = 38400;
> -		break;
> +		return 38400;
> +	default:
> +		MISSING_CASE(dssm);
> +		return DISPLAY_VER(display) >= 14 ? 38400 : 24000;
>  	}
>  }
>  
> +/**
> + * intel_display_get_refclk - Returns the display reference clock
> + * @display: display instance
> + *
> + * Returns the display reference clock in KHz.  The display reference clock
> + * is defined by the SoC; on some platforms the proper value should be read
> + * from a hardware strap register, while on others there's only a single
> + * possible value.
> + */

The comment is useful in general, but I don't think there's any need to
make it a kernel-doc comment.

> +u32 intel_display_get_refclk(struct intel_display *display)

The file's intel_cdclk.c, the name should be intel_cdclk_<something>.


BR,
Jani.

> +{
> +	if (display->platform.dg2)
> +		return 38400;
> +	else if (DISPLAY_VER(display) >= 11)
> +		return icl_readout_refclk(display);
> +	else
> +		return 19200;
> +}
> +
>  static void bxt_de_pll_readout(struct intel_display *display,
>  			       struct intel_cdclk_config *cdclk_config)
>  {
>  	u32 val, ratio;
>  
> -	if (display->platform.dg2)
> -		cdclk_config->ref = 38400;
> -	else if (DISPLAY_VER(display) >= 11)
> -		icl_readout_refclk(display, cdclk_config);
> -	else
> -		cdclk_config->ref = 19200;
> +	cdclk_config->ref = intel_display_get_refclk(display);
>  
>  	val = intel_de_read(display, BXT_DE_PLL_ENABLE);
>  	if ((val & BXT_DE_PLL_PLL_ENABLE) == 0 ||
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.h b/drivers/gpu/drm/i915/display/intel_cdclk.h
> index 6b0e7a41eba3..3cfbe1f2b6b5 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.h
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.h
> @@ -65,6 +65,7 @@ void intel_init_cdclk_hooks(struct intel_display *display);
>  void intel_update_max_cdclk(struct intel_display *display);
>  void intel_update_cdclk(struct intel_display *display);
>  u32 intel_read_rawclk(struct intel_display *display);
> +u32 intel_display_get_refclk(struct intel_display *display);
>  bool intel_cdclk_clock_changed(const struct intel_cdclk_config *a,
>  			       const struct intel_cdclk_config *b);
>  int intel_mdclk_cdclk_ratio(struct intel_display *display,

-- 
Jani Nikula, Intel
