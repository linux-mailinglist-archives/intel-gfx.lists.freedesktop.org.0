Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DD678FC922
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Jun 2024 12:32:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D6BB710E412;
	Wed,  5 Jun 2024 10:31:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="On1HMUmY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D0FED10E412;
 Wed,  5 Jun 2024 10:31:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717583516; x=1749119516;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=VqD9tUTiV13b94TJwRR6p9gCzG3JFRA6UtuCQujPf+o=;
 b=On1HMUmYPhSjTpzwhiuxgPtxTZjBivFYSCoZrF90NsoLLhf/6S/JkYgl
 c4J+EzdTqbdlVrA03EAqOI8xoiTF5NmeyWTw83tDPDHuERItHc91R3F7c
 TUJ0C+hKHhb27aqIHFErKWdjWrKLf0qeBc/AnpXV22YgwGp7IbIbiEm+n
 b1/JfgWKc3dq5BYcjYjC1koTLXy4L1mNUmPY/Blq4GsDHns3FDjbEH7Il
 7H5+Mo5CAA9meSSDTfr63JqSyXNO6sJbJwiZM1hKHzRhPe1V4l+Sv2PLq
 poa+tGPzBHvBbdiV7+r+QYWQB7SPFCMbFURWpaeyZRn9NX+wXd0rlU0WY g==;
X-CSE-ConnectionGUID: DqETnqiNQ1qzs7xhy8HfIw==
X-CSE-MsgGUID: yYHJYH/+SNKM1NRs/y5hxQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11093"; a="31721577"
X-IronPort-AV: E=Sophos;i="6.08,216,1712646000"; d="scan'208";a="31721577"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2024 03:31:56 -0700
X-CSE-ConnectionGUID: 9Jji5mIdSjWG2DzkorNiTQ==
X-CSE-MsgGUID: 1qRJt5nbRsymClJdqjHY9A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,216,1712646000"; d="scan'208";a="37559082"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 05 Jun 2024 03:31:55 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 05 Jun 2024 13:31:53 +0300
Date: Wed, 5 Jun 2024 13:31:53 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 09/12] drm/i915/cdclk: use i9xx_fsb_freq() for
 rawclk_freq initialization
Message-ID: <ZmA-mcwUW7r50rIT@intel.com>
References: <cover.1716906179.git.jani.nikula@intel.com>
 <83e668584c898e445552275a09cc4fa55d68f62a.1716906179.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <83e668584c898e445552275a09cc4fa55d68f62a.1716906179.git.jani.nikula@intel.com>
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

On Tue, May 28, 2024 at 05:24:58PM +0300, Jani Nikula wrote:
> Instead of duplicating the CLKCFG parsing, reuse i9xx_fsb_freq() to
> figure out rawclk_freq where applicable.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cdclk.c | 46 ++--------------------
>  1 file changed, 3 insertions(+), 43 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
> index b78154c82a71..c731c489c925 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -23,6 +23,7 @@
>  
>  #include <linux/time.h>
>  
> +#include "soc/intel_dram.h"
>  #include "hsw_ips.h"
>  #include "i915_reg.h"
>  #include "intel_atomic.h"
> @@ -3529,10 +3530,8 @@ static int vlv_hrawclk(struct drm_i915_private *dev_priv)
>  				      CCK_DISPLAY_REF_CLOCK_CONTROL);
>  }
>  
> -static int i9xx_hrawclk(struct drm_i915_private *dev_priv)
> +static int i9xx_hrawclk(struct drm_i915_private *i915)
>  {
> -	u32 clkcfg;
> -
>  	/*
>  	 * hrawclock is 1/4 the FSB frequency
>  	 *
> @@ -3543,46 +3542,7 @@ static int i9xx_hrawclk(struct drm_i915_private *dev_priv)
>  	 * don't know which registers have that information,
>  	 * and all the relevant docs have gone to bit heaven :(
>  	 */

^ the note about the actual clock vs. straps should probably be moved
into i9xx_fsb_freq() as a followup.

> -	clkcfg = intel_de_read(dev_priv, CLKCFG) & CLKCFG_FSB_MASK;
> -
> -	if (IS_MOBILE(dev_priv)) {
> -		switch (clkcfg) {
> -		case CLKCFG_FSB_400:
> -			return 100000;
> -		case CLKCFG_FSB_533:
> -			return 133333;
> -		case CLKCFG_FSB_667:
> -			return 166667;
> -		case CLKCFG_FSB_800:
> -			return 200000;
> -		case CLKCFG_FSB_1067:
> -			return 266667;
> -		case CLKCFG_FSB_1333:
> -			return 333333;
> -		default:
> -			MISSING_CASE(clkcfg);
> -			return 133333;
> -		}
> -	} else {
> -		switch (clkcfg) {
> -		case CLKCFG_FSB_400_ALT:
> -			return 100000;
> -		case CLKCFG_FSB_533:
> -			return 133333;
> -		case CLKCFG_FSB_667:
> -			return 166667;
> -		case CLKCFG_FSB_800:
> -			return 200000;
> -		case CLKCFG_FSB_1067_ALT:
> -			return 266667;
> -		case CLKCFG_FSB_1333_ALT:
> -			return 333333;
> -		case CLKCFG_FSB_1600_ALT:
> -			return 400000;
> -		default:
> -			return 133333;
> -		}
> -	}
> +	return DIV_ROUND_CLOSEST(i9xx_fsb_freq(i915), 4);
>  }
>  
>  /**
> -- 
> 2.39.2

-- 
Ville Syrjälä
Intel
