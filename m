Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EF75D46513A
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Dec 2021 16:15:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C18C66EC0E;
	Wed,  1 Dec 2021 15:15:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CCB6B6EC0E
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Dec 2021 15:15:15 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10184"; a="223353792"
X-IronPort-AV: E=Sophos;i="5.87,278,1631602800"; d="scan'208";a="223353792"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2021 07:14:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,278,1631602800"; d="scan'208";a="477570373"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga002.jf.intel.com with SMTP; 01 Dec 2021 07:14:38 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 01 Dec 2021 17:14:38 +0200
Date: Wed, 1 Dec 2021 17:14:38 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <YaeRXtmn3j/yYvjH@intel.com>
References: <cover.1638366969.git.jani.nikula@intel.com>
 <9f882eff78cdc6b28c18e73f5e53f57e413240dc.1638366969.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <9f882eff78cdc6b28c18e73f5e53f57e413240dc.1638366969.git.jani.nikula@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v2 08/10] drm/i915: move enum hpd_pin to
 intel_display.h
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

On Wed, Dec 01, 2021 at 03:57:10PM +0200, Jani Nikula wrote:
> It's not the ideal location, but a better alternative than
> i915_drv.h. The goal is to break the intel_display_types.h to i915_drv.h
> dependency.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display.h | 24 ++++++++++++++++++++
>  drivers/gpu/drm/i915/i915_drv.h              | 24 --------------------
>  2 files changed, 24 insertions(+), 24 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
> index 38c15ec30ee7..8d8725b45d99 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.h
> +++ b/drivers/gpu/drm/i915/display/intel_display.h
> @@ -346,6 +346,30 @@ enum phy_fia {
>  	FIA3,
>  };
>  
> +enum hpd_pin {
> +	HPD_NONE = 0,
> +	HPD_TV = HPD_NONE,     /* TV is known to be unreliable */
> +	HPD_CRT,
> +	HPD_SDVO_B,
> +	HPD_SDVO_C,
> +	HPD_PORT_A,
> +	HPD_PORT_B,
> +	HPD_PORT_C,
> +	HPD_PORT_D,
> +	HPD_PORT_E,
> +	HPD_PORT_TC1,
> +	HPD_PORT_TC2,
> +	HPD_PORT_TC3,
> +	HPD_PORT_TC4,
> +	HPD_PORT_TC5,
> +	HPD_PORT_TC6,
> +
> +	HPD_NUM_PINS
> +};
> +
> +#define for_each_hpd_pin(__pin) \
> +	for ((__pin) = (HPD_NONE + 1); (__pin) < HPD_NUM_PINS; (__pin)++)
> +
>  #define for_each_pipe(__dev_priv, __p) \
>  	for ((__p) = 0; (__p) < I915_MAX_PIPES; (__p)++) \
>  		for_each_if(INTEL_INFO(__dev_priv)->pipe_mask & BIT(__p))
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index e2ccc0696df7..27677bb18a6b 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -117,30 +117,6 @@
>  
>  struct drm_i915_gem_object;
>  
> -enum hpd_pin {
> -	HPD_NONE = 0,
> -	HPD_TV = HPD_NONE,     /* TV is known to be unreliable */
> -	HPD_CRT,
> -	HPD_SDVO_B,
> -	HPD_SDVO_C,
> -	HPD_PORT_A,
> -	HPD_PORT_B,
> -	HPD_PORT_C,
> -	HPD_PORT_D,
> -	HPD_PORT_E,
> -	HPD_PORT_TC1,
> -	HPD_PORT_TC2,
> -	HPD_PORT_TC3,
> -	HPD_PORT_TC4,
> -	HPD_PORT_TC5,
> -	HPD_PORT_TC6,
> -
> -	HPD_NUM_PINS
> -};
> -
> -#define for_each_hpd_pin(__pin) \
> -	for ((__pin) = (HPD_NONE + 1); (__pin) < HPD_NUM_PINS; (__pin)++)
> -
>  /* Threshold == 5 for long IRQs, 50 for short */
>  #define HPD_STORM_DEFAULT_THRESHOLD 50
>  
> -- 
> 2.30.2

-- 
Ville Syrjälä
Intel
