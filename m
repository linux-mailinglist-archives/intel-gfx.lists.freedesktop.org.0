Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BF358FC8E6
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Jun 2024 12:24:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4558A10E32F;
	Wed,  5 Jun 2024 10:24:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KPmEu4O3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 765B610E28E;
 Wed,  5 Jun 2024 10:24:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717583079; x=1749119079;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=ko25lNUQk0xtQzxdo29wPvNfh9AoAqlS/uYJ/Na9V7c=;
 b=KPmEu4O3ltNJpc5mJSUfid2Wq+h8Y4rnzEjTc9PabKAHw+iacM7StuAL
 n5eoo+fsdccoVWXpldp5j8cs4897xPHJSBRAUAFM5/7pKAMNB+mEMZwet
 ZWa+3fky0fsZlDiZ/FZKmTPQCPgPix0fUaFrMa4KD/9ZIpnz0ldoH4kUA
 oyQEmOPG1EgI/8LG5OAobM7+fl6jOj3feBWy1gP5w1HnsCkR2x+NAM+pu
 IlD6zgw2O5uNYoJOiMoivnz6WOurLiG0ifdWVrtEoQ5/tKnspXQ8omD97
 FNNhT9x4cJLlPfEZee8q5Qx+H+dDAQYoBvu+92dOzwzHv9VcsCObBG0qz g==;
X-CSE-ConnectionGUID: OLOgw9AwTDSaav+gsvadhw==
X-CSE-MsgGUID: mpyL3nvTQducwlvk0m1kLA==
X-IronPort-AV: E=McAfee;i="6600,9927,11093"; a="31720743"
X-IronPort-AV: E=Sophos;i="6.08,216,1712646000"; d="scan'208";a="31720743"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2024 03:24:38 -0700
X-CSE-ConnectionGUID: 9KlU85FKSx6WFXIZPx5RLg==
X-CSE-MsgGUID: 8BY7tRIVSNqBFFISt7akIA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,216,1712646000"; d="scan'208";a="37557285"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 05 Jun 2024 03:24:36 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 05 Jun 2024 13:24:34 +0300
Date: Wed, 5 Jun 2024 13:24:34 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 07/12] drm/i915: extend the fsb_freq initialization to
 more platforms
Message-ID: <ZmA84kK3SgPSbMOB@intel.com>
References: <cover.1716906179.git.jani.nikula@intel.com>
 <31252aa5da27d111b9156904ab4f97325431303d.1716906179.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <31252aa5da27d111b9156904ab4f97325431303d.1716906179.git.jani.nikula@intel.com>
X-Patchwork-Hint: comment
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

On Tue, May 28, 2024 at 05:24:56PM +0300, Jani Nikula wrote:
> Initialize fsb frequency for more platforms to be able to use it for GT
> clock and rawclk frequency initialization.
> 
> Note: There's a discrepancy between existing pnv_fsb_freq() and
> i9xx_hrawclk() regarding CLKCFG interpretation. Presume all PNV is
> mobile.
> 
> FIXME: What should the default or failure mode be when the value is
> unknown?
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/soc/intel_dram.c | 54 ++++++++++++++++++++-------
>  1 file changed, 40 insertions(+), 14 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/soc/intel_dram.c b/drivers/gpu/drm/i915/soc/intel_dram.c
> index ace9372244a4..74b5b70e91f9 100644
> --- a/drivers/gpu/drm/i915/soc/intel_dram.c
> +++ b/drivers/gpu/drm/i915/soc/intel_dram.c
> @@ -142,24 +142,50 @@ static void detect_mem_freq(struct drm_i915_private *i915)
>  		drm_dbg(&i915->drm, "DDR speed: %d kHz\n", i915->mem_freq);
>  }
>  
> -static unsigned int pnv_fsb_freq(struct drm_i915_private *i915)
> +static unsigned int i9xx_fsb_freq(struct drm_i915_private *i915)
>  {
>  	u32 fsb;
>  
>  	fsb = intel_uncore_read(&i915->uncore, CLKCFG) & CLKCFG_FSB_MASK;
>  
> -	switch (fsb) {
> -	case CLKCFG_FSB_400:
> -		return 400000;
> -	case CLKCFG_FSB_533:
> -		return 533333;
> -	case CLKCFG_FSB_667:
> -		return 666667;
> -	case CLKCFG_FSB_800:
> -		return 800000;
> +	if (IS_PINEVIEW(i915) || IS_MOBILE(i915)) {
> +		switch (fsb) {
> +		case CLKCFG_FSB_400:
> +			return 400000;
> +		case CLKCFG_FSB_533:
> +			return 533333;
> +		case CLKCFG_FSB_667:
> +			return 666667;
> +		case CLKCFG_FSB_800:
> +			return 800000;
> +		case CLKCFG_FSB_1067:
> +			return 1066667;
> +		case CLKCFG_FSB_1333:
> +			return 1333333;
> +		default:
> +			MISSING_CASE(fsb);
> +			return 1333333;
> +		}
> +	} else {
> +		switch (fsb) {
> +		case CLKCFG_FSB_400_ALT:
> +			return 400000;
> +		case CLKCFG_FSB_533:
> +			return 533333;
> +		case CLKCFG_FSB_667:
> +			return 666667;
> +		case CLKCFG_FSB_800:
> +			return 800000;
> +		case CLKCFG_FSB_1067_ALT:
> +			return 1066667;
> +		case CLKCFG_FSB_1333_ALT:
> +			return 1333333;
> +		case CLKCFG_FSB_1600_ALT:
> +			return 1600000;
> +		default:

No MISSING_CASE() here?

> +			return 533333;

Why a different default value vs. the other branch?

> +		}
>  	}
> -
> -	return 0;
>  }
>  
>  static unsigned int ilk_fsb_freq(struct drm_i915_private *dev_priv)
> @@ -193,8 +219,8 @@ static void detect_fsb_freq(struct drm_i915_private *i915)
>  {
>  	if (GRAPHICS_VER(i915) == 5)
>  		i915->fsb_freq = ilk_fsb_freq(i915);
> -	else if (IS_PINEVIEW(i915))
> -		i915->fsb_freq = pnv_fsb_freq(i915);
> +	else if (GRAPHICS_VER(i915) == 3 || GRAPHICS_VER(i915) == 4)
> +		i915->fsb_freq = i9xx_fsb_freq(i915);
>  
>  	if (i915->fsb_freq)
>  		drm_dbg(&i915->drm, "FSB frequency: %d kHz\n", i915->fsb_freq);
> -- 
> 2.39.2

-- 
Ville Syrjälä
Intel
