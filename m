Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F8FE97F112
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Sep 2024 21:07:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC64F10E47B;
	Mon, 23 Sep 2024 19:07:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YyBEYWk/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0CED010E479;
 Mon, 23 Sep 2024 19:06:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727118419; x=1758654419;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=K+F07Y7kxJfGGp8hWpqgAbPRgbc6sErjLy7W53yb8QY=;
 b=YyBEYWk/adJcmNqrFmWze1xszNGtif2XsunVx/0JZmjG7B1z3uJ93lrd
 5dcC9CgAE/NOH8dDzQ/nhLrzvf0QiuLpF3M1aF5x0TLQJ7lZsMUKcd7rY
 YJ9bc+D3v/+jErwJsWHLgePtojb9U3g7xYamdouVoA2x/CqW5G6mniinQ
 3ctPPAp+6+nBmIQSBa82yFPUX0PuGa6itSVypMhC41Q9d5RxHZlVwacP+
 DoWRfXblsj2EWv370xvkN5oU6MkK34FTLSGypxu8OAPaOio70c8B68VkX
 Q+coVrUCDJxBCgNr03TIrSq11x0jNWF4SPvNBF3Y/zzGelT62aGRqaxB+ Q==;
X-CSE-ConnectionGUID: VTyU2DA+Qc6FJQEPVfBjhA==
X-CSE-MsgGUID: 4duIXGqIR1GNK5l2tZIjXQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11204"; a="28978378"
X-IronPort-AV: E=Sophos;i="6.10,252,1719903600"; d="scan'208";a="28978378"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2024 12:06:59 -0700
X-CSE-ConnectionGUID: LlnFti+fSF6jPX6ij2TVbA==
X-CSE-MsgGUID: T41D0vX8TnOW7tbg3C0niw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,252,1719903600"; d="scan'208";a="71303591"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 23 Sep 2024 12:06:56 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 23 Sep 2024 22:06:55 +0300
Date: Mon, 23 Sep 2024 22:06:55 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 suraj.kandpal@intel.com
Subject: Re: [PATCH 14/16] drm/i915: Compute config and mode valid changes
 for ultrajoiner
Message-ID: <ZvG8T-BuC_OmE9Sl@intel.com>
References: <20240923181336.3303940-1-ankit.k.nautiyal@intel.com>
 <20240923181336.3303940-15-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240923181336.3303940-15-ankit.k.nautiyal@intel.com>
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

On Mon, Sep 23, 2024 at 11:43:34PM +0530, Ankit Nautiyal wrote:
> From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> 
> Implement required changes for mode validation and compute config,
> to support Ultrajoiner.
> 
> v2:
> -Drop changes for HDMI.
> -Separate out DSC changes into another patch.
> v3: Fix check in can_ultrajoiner. (Ankit)
> v4:
> -Unify helper to check joiner requirement. (Ville)
> -Split patches for ultrajoiner changes for max dsc slices and compressed
> bpp.(Ankit)
> 
> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 26 +++++++++++++++++++------
>  1 file changed, 20 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 115d8468bb91..8e0cb6c77c64 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1280,26 +1280,38 @@ intel_dp_mode_valid_downstream(struct intel_connector *connector,
>  }
>  
>  static
> -bool intel_dp_needs_bigjoiner(struct intel_dp *intel_dp,
> -			      struct intel_connector *connector,
> -			      int hdisplay, int clock)
> +bool intel_dp_needs_joiner(struct intel_dp *intel_dp,
> +			   struct intel_connector *connector,
> +			   int hdisplay, int clock,
> +			   int num_joined_pipes)
>  {
>  	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
>  
>  	if (!intel_dp_has_joiner(intel_dp))
>  		return false;
>  
> -	return clock > i915->display.cdclk.max_dotclk_freq || hdisplay > 5120;
> +	num_joined_pipes /= 2;
> +
> +	return clock > num_joined_pipes * i915->display.cdclk.max_dotclk_freq ||
> +	       hdisplay > 5120;

'num_joined_pipes * 5120'

With that
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

>  }
>  
>  int intel_dp_num_joined_pipes(struct intel_dp *intel_dp,
>  			      struct intel_connector *connector,
>  			      int hdisplay, int clock)
>  {
> +	struct intel_display *display = to_intel_display(intel_dp);
> +	struct drm_i915_private *i915 = to_i915(display->drm);
> +
>  	if (connector->force_joined_pipes)
>  		return connector->force_joined_pipes;
>  
> -	if (intel_dp_needs_bigjoiner(intel_dp, connector, hdisplay, clock))
> +	if (HAS_ULTRAJOINER(i915) &&
> +	    intel_dp_needs_joiner(intel_dp, connector, hdisplay, clock, 4))
> +		return 4;
> +
> +	if ((HAS_BIGJOINER(i915) || HAS_UNCOMPRESSED_JOINER(i915)) &&
> +	    intel_dp_needs_joiner(intel_dp, connector, hdisplay, clock, 2))
>  		return 2;
>  
>  	return 1;
> @@ -2505,8 +2517,10 @@ bool intel_dp_joiner_needs_dsc(struct drm_i915_private *i915,
>  	 * Pipe joiner needs compression up to display 12 due to bandwidth
>  	 * limitation. DG2 onwards pipe joiner can be enabled without
>  	 * compression.
> +	 * Ultrajoiner always needs compression.
>  	 */
> -	return !HAS_UNCOMPRESSED_JOINER(i915) && num_joined_pipes == 2;
> +	return (!HAS_UNCOMPRESSED_JOINER(i915) && num_joined_pipes == 2) ||
> +		num_joined_pipes == 4;
>  }
>  
>  static int
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
