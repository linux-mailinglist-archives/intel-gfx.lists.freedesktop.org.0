Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E8DC97BFEF
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Sep 2024 19:56:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CBC3B10E616;
	Wed, 18 Sep 2024 17:56:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Abtjue6j";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0779010E613;
 Wed, 18 Sep 2024 17:56:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726682174; x=1758218174;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=W9TWB4m41QsCpEMXu0lFK4QxyYICUenek+EhkWJOi4E=;
 b=Abtjue6j2V+hg3xhFVNaANSOooChslJmoof+1Xo6ddrL49tydTXGEhyI
 F0M+AjYhigxBTp3iat4C8K3P/Qr2FpWPhyOcvApxnqT0R/91D9iGEs9XA
 kWwH15pfhJ7CekWObsk4f62VyCzzGhTkSfD2A2eBm0PCM/or1vUkq6UqA
 CvNWgqm+cjXW8k5bEAV4lCV1rtoMddiaD9kl0e3kosX2SehG9Dto3VWZX
 sVLiH45TI0W2AF1vC5l5e2PO6I7oJJm7lnb5KuOAvIChLCLDM4+9iRpKH
 vrqgtiMd32Lvl/bhtaj3cqW65ObVSlLtwds2QpQc29PNiCfCBwE18ln6m Q==;
X-CSE-ConnectionGUID: 6Gf2XneBSyqV47aqhTIjlg==
X-CSE-MsgGUID: QhgUspbRR2KCsrMplyliXA==
X-IronPort-AV: E=McAfee;i="6700,10204,11199"; a="43129572"
X-IronPort-AV: E=Sophos;i="6.10,239,1719903600"; d="scan'208";a="43129572"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2024 10:56:14 -0700
X-CSE-ConnectionGUID: SHxxD9a9SpGY/3qSETqDyw==
X-CSE-MsgGUID: WREUsotuSTS3sC63n+9noA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,239,1719903600"; d="scan'208";a="69764820"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 18 Sep 2024 10:56:11 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 18 Sep 2024 20:56:10 +0300
Date: Wed, 18 Sep 2024 20:56:10 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 2/2] drm/i915/soc: stop using IS_GEN9_LP() and IS_GEN9_BC()
Message-ID: <ZusUOrwUYY3rpMW3@intel.com>
References: <20240918145042.1447857-1-jani.nikula@intel.com>
 <20240918145042.1447857-2-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240918145042.1447857-2-jani.nikula@intel.com>
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

On Wed, Sep 18, 2024 at 05:50:42PM +0300, Jani Nikula wrote:
> Replace IS_GEN9_LP() and IS_GEN9_BC() with direct platform checks. This
> lets us remove their compat counterparts, as neither soc/ nor /display
> now no longer needs them.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/soc/intel_dram.c             | 4 ++--
>  drivers/gpu/drm/i915/soc/intel_pch.c              | 9 ++++++---
>  drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h | 3 ---
>  3 files changed, 8 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/soc/intel_dram.c b/drivers/gpu/drm/i915/soc/intel_dram.c
> index 4aba47bccc63..9e310f4099f4 100644
> --- a/drivers/gpu/drm/i915/soc/intel_dram.c
> +++ b/drivers/gpu/drm/i915/soc/intel_dram.c
> @@ -714,7 +714,7 @@ void intel_dram_detect(struct drm_i915_private *i915)
>  	 * Assume level 0 watermark latency adjustment is needed until proven
>  	 * otherwise, this w/a is not needed by bxt/glk.
>  	 */
> -	dram_info->wm_lv_0_adjust_needed = !IS_GEN9_LP(i915);
> +	dram_info->wm_lv_0_adjust_needed = !IS_BROXTON(i915) && !IS_GEMINILAKE(i915);

This reminds me that this is a mess. Need to dig up
whatever branch I had to make it less so...

>  
>  	if (DISPLAY_VER(i915) >= 14)
>  		ret = xelpdp_get_dram_info(i915);
> @@ -722,7 +722,7 @@ void intel_dram_detect(struct drm_i915_private *i915)
>  		ret = gen12_get_dram_info(i915);
>  	else if (GRAPHICS_VER(i915) >= 11)
>  		ret = gen11_get_dram_info(i915);
> -	else if (IS_GEN9_LP(i915))
> +	else if (IS_BROXTON(i915) || IS_GEMINILAKE(i915))
>  		ret = bxt_get_dram_info(i915);
>  	else
>  		ret = skl_get_dram_info(i915);
> diff --git a/drivers/gpu/drm/i915/soc/intel_pch.c b/drivers/gpu/drm/i915/soc/intel_pch.c
> index 542eea50093c..f7e3745bb1dc 100644
> --- a/drivers/gpu/drm/i915/soc/intel_pch.c
> +++ b/drivers/gpu/drm/i915/soc/intel_pch.c
> @@ -122,9 +122,12 @@ intel_pch_type(const struct drm_i915_private *dev_priv, unsigned short id)
>  	case INTEL_PCH_TGP_DEVICE_ID_TYPE:
>  	case INTEL_PCH_TGP2_DEVICE_ID_TYPE:
>  		drm_dbg_kms(&dev_priv->drm, "Found Tiger Lake LP PCH\n");
> -		drm_WARN_ON(&dev_priv->drm, !IS_TIGERLAKE(dev_priv) &&
> -			    !IS_ROCKETLAKE(dev_priv) &&
> -			    !IS_GEN9_BC(dev_priv));
> +		drm_WARN_ON(&dev_priv->drm, !(IS_TIGERLAKE(dev_priv) ||
> +					      IS_ROCKETLAKE(dev_priv) ||
> +					      IS_SKYLAKE(dev_priv) ||
> +					      IS_KABYLAKE(dev_priv) ||
> +					      IS_COFFEELAKE(dev_priv) ||
> +					      IS_COMETLAKE(dev_priv)));

The !A&&!B form seems more popular in these, so I'd suggest
using that. JSP looks to be the only one that had to do it
differently for whatever reason...

Either way
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

>  		return PCH_TGP;
>  	case INTEL_PCH_JSP_DEVICE_ID_TYPE:
>  		drm_dbg_kms(&dev_priv->drm, "Found Jasper Lake PCH\n");
> diff --git a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
> index c43673bcecde..684e7a25e3ef 100644
> --- a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
> +++ b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
> @@ -75,9 +75,6 @@ static inline struct drm_i915_private *to_i915(const struct drm_device *dev)
>  
>  #define IS_MOBILE(xe) (xe && 0)
>  
> -#define IS_GEN9_LP(xe) ((xe) && 0)
> -#define IS_GEN9_BC(xe) ((xe) && 0)
> -
>  #define IS_TIGERLAKE_UY(xe) (xe && 0)
>  #define IS_COMETLAKE_ULX(xe) (xe && 0)
>  #define IS_COFFEELAKE_ULX(xe) (xe && 0)
> -- 
> 2.39.2

-- 
Ville Syrjälä
Intel
