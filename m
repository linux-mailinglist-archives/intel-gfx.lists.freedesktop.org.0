Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DEF296F82B
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Sep 2024 17:29:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E57310EA9E;
	Fri,  6 Sep 2024 15:29:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WQl9t+h1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3BFD410EA9E
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Sep 2024 15:29:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725636592; x=1757172592;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=QwehdU74hO4JhbhWpIWnnuEwgUYAp5wqkGTCnwtBIRQ=;
 b=WQl9t+h1Q8dmAjCHoG+qaZvSeVFXC4EWp/rChE5JfoMamYQTSpdLrAFx
 SB6Gqvbt5RUGv9AcAHlwLYE6SPqvbjkjxzZhXnrM4PqY5GB7jv3HHeizQ
 2hq3PzKz36PkKucZDzbbGcswy77dPJCbIt/ZYHX/R5ZviKK+foloeD2oH
 IyaizwWJUT2mrPsS/jtrbm390w6J3sbZyLMT/8+B/8aQ7CsYVj9b9Xhk+
 YAPbrVpKYN3Nzmxy2HmayRLXR+fCmdROmuTXX/4KkW23CV8OA7tX/dlBP
 EfAd/Jsj4mZMCrKT/7en+lCtiN0BVlc2/7t9bU9qyN9BUGvX75ir55qKj Q==;
X-CSE-ConnectionGUID: KbqdmgCIQLO6/xDhb22Z8w==
X-CSE-MsgGUID: nRy3FBQ0S8m6t2WTgqokfA==
X-IronPort-AV: E=McAfee;i="6700,10204,11187"; a="34974785"
X-IronPort-AV: E=Sophos;i="6.10,208,1719903600"; d="scan'208";a="34974785"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2024 08:29:52 -0700
X-CSE-ConnectionGUID: beZW+KqhTqSnyfYa+SaxuQ==
X-CSE-MsgGUID: Q2icmCzsSRqNHyp2nnNbXQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,208,1719903600"; d="scan'208";a="66017589"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 06 Sep 2024 08:29:48 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 06 Sep 2024 18:29:47 +0300
Date: Fri, 6 Sep 2024 18:29:47 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, jani.saarinen@intel.com
Subject: Re: [PATCH 06/14] drm/i915: Split current joiner hw state readout
Message-ID: <Ztsf67BgD4z_BA50@intel.com>
References: <20240906125807.3960642-1-ankit.k.nautiyal@intel.com>
 <20240906125807.3960642-7-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240906125807.3960642-7-ankit.k.nautiyal@intel.com>
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

On Fri, Sep 06, 2024 at 06:27:59PM +0530, Ankit Nautiyal wrote:
> From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> 
> We need to add a new sanity checks and also do
> some preparations for adding ultrajoiner hw state readout.
> Lets first split reading of the uncompressed joiner and bigjoiner
> bit masks into separate functions.
> 
> v2: Fixed checkpatch warnings (Ankit)
> 
> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 65 +++++++++++++++-----
>  1 file changed, 48 insertions(+), 17 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 3278debf47cc..cdc7531311fc 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -3580,51 +3580,82 @@ static bool transcoder_ddi_func_is_enabled(struct drm_i915_private *dev_priv,
>  	return tmp & TRANS_DDI_FUNC_ENABLE;
>  }
>  
> -static void enabled_joiner_pipes(struct drm_i915_private *dev_priv,
> -				 u8 *primary_pipes, u8 *secondary_pipes)
> +static void enabled_uncompressed_joiner_pipes(struct drm_i915_private *dev_priv,
> +					      u8 *primary_pipes, u8 *secondary_pipes)
>  {
>  	struct intel_crtc *crtc;
>  
>  	*primary_pipes = 0;
>  	*secondary_pipes = 0;
>  
> +	if (DISPLAY_VER(dev_priv) < 13)
> +		return;
> +
>  	for_each_intel_crtc_in_pipe_mask(&dev_priv->drm, crtc,
>  					 joiner_pipes(dev_priv)) {
>  		enum intel_display_power_domain power_domain;
>  		enum pipe pipe = crtc->pipe;
>  		intel_wakeref_t wakeref;
>  
> -		power_domain = intel_dsc_power_domain(crtc, (enum transcoder) pipe);
> +		power_domain = POWER_DOMAIN_PIPE(pipe);
>  		with_intel_display_power_if_enabled(dev_priv, power_domain, wakeref) {
>  			u32 tmp = intel_de_read(dev_priv, ICL_PIPE_DSS_CTL1(pipe));
>  
> -			if (!(tmp & BIG_JOINER_ENABLE))
> -				continue;
> -
> -			if (tmp & PRIMARY_BIG_JOINER_ENABLE)
> +			if (tmp & UNCOMPRESSED_JOINER_PRIMARY)
>  				*primary_pipes |= BIT(pipe);
> -			else
> +			if (tmp & UNCOMPRESSED_JOINER_SECONDARY)
>  				*secondary_pipes |= BIT(pipe);
>  		}
> +	}
> +}
>  
> -		if (DISPLAY_VER(dev_priv) < 13)
> -			continue;
> +static void enabled_bigjoiner_pipes(struct drm_i915_private *dev_priv,
> +				    u8 *primary_pipes, u8 *secondary_pipes)
> +{
> +	struct intel_crtc *crtc;
>  
> -		power_domain = POWER_DOMAIN_PIPE(pipe);
> +	*primary_pipes = 0;
> +	*secondary_pipes = 0;

We seem to be missing any kind of check to make sure bigjoiner
is actually present in the hardware. Or am I just blind?
If that is the case we need to fix it up before the
refactoring goes in.

> +
> +	for_each_intel_crtc_in_pipe_mask(&dev_priv->drm, crtc,
> +					 joiner_pipes(dev_priv)) {
> +		enum intel_display_power_domain power_domain;
> +		enum pipe pipe = crtc->pipe;
> +		intel_wakeref_t wakeref;
> +
> +		power_domain = intel_dsc_power_domain(crtc, (enum transcoder)pipe);
>  		with_intel_display_power_if_enabled(dev_priv, power_domain, wakeref) {
>  			u32 tmp = intel_de_read(dev_priv, ICL_PIPE_DSS_CTL1(pipe));
>  
> -			if (tmp & UNCOMPRESSED_JOINER_PRIMARY)
> +			if (!(tmp & BIG_JOINER_ENABLE))
> +				continue;
> +
> +			if (tmp & PRIMARY_BIG_JOINER_ENABLE)
>  				*primary_pipes |= BIT(pipe);
> -			if (tmp & UNCOMPRESSED_JOINER_SECONDARY)
> +			else
>  				*secondary_pipes |= BIT(pipe);
>  		}
>  	}
> +}
> +
> +static void enabled_joiner_pipes(struct drm_i915_private *dev_priv,
> +				 u8 *primary_pipes, u8 *secondary_pipes)
> +{
> +	u8 primary_uncompressed_joiner_pipes, primary_bigjoiner_pipes;
> +	u8 secondary_uncompressed_joiner_pipes, secondary_bigjoiner_pipes;
> +
> +	enabled_uncompressed_joiner_pipes(dev_priv, &primary_uncompressed_joiner_pipes,
> +					  &secondary_uncompressed_joiner_pipes);
> +
> +	enabled_bigjoiner_pipes(dev_priv, &primary_bigjoiner_pipes,
> +				&secondary_bigjoiner_pipes);
> +
> +	*primary_pipes = 0;
> +	*secondary_pipes = 0;

These seem redundant.

> +
> +	*primary_pipes = primary_uncompressed_joiner_pipes | primary_bigjoiner_pipes;
>  
> -	/* Joiner pipes should always be consecutive primary and secondary */
> -	drm_WARN(&dev_priv->drm, *secondary_pipes != *primary_pipes << 1,
> -		 "Joiner misconfigured (primary pipes 0x%x, secondary pipes 0x%x)\n",
> -		 *primary_pipes, *secondary_pipes);

Where did this go?


> +	*secondary_pipes = secondary_uncompressed_joiner_pipes | secondary_bigjoiner_pipes;
>  }
>  
>  static enum pipe get_joiner_primary_pipe(enum pipe pipe, u8 primary_pipes, u8 secondary_pipes)
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
