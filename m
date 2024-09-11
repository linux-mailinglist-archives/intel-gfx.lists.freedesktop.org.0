Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 70DC7975BBA
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Sep 2024 22:28:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D760D10E2D7;
	Wed, 11 Sep 2024 20:28:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ObXdv79H";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 743BD10E2D7
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Sep 2024 20:28:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726086537; x=1757622537;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=bHHrYOgb3uMY27lRYOzHUKlIztSIE1D+j8qjYwplQbI=;
 b=ObXdv79HcxDxwbEANcb9NuhExs7gX8+MgzmPIfhya3/Lya97rqJb1kCg
 ej6sbxuXmKhQ7QS9trBSq6UT7bzFoQjssUokMpR7ObL3z3w9XXUuea/NG
 OtlmzYRjqAW7xeFfjCV3avSGGPPQ0mJQ6wtmVSF2Po8DmxJyAQTOLGzG8
 cmFtpT6IzrdDdjATUSKtltlWHPknbW9fcdGIWWzWMxXJ025FJeaoE7ZMm
 3StpcwIGOTltFuBogt0rbcc/mVEBkqc16c59KH+flC2PD0DO7H61nccjL
 KcYQ53sC1LMLZcMMtED98DLh83IeddYxyb0eVPZXL/WiD68bXpyz7UwUg g==;
X-CSE-ConnectionGUID: AJhhu/T7QjCYBRYZwktRnA==
X-CSE-MsgGUID: RJhGHSmWQpuH3zZvLGHk+w==
X-IronPort-AV: E=McAfee;i="6700,10204,11192"; a="36263124"
X-IronPort-AV: E=Sophos;i="6.10,221,1719903600"; d="scan'208";a="36263124"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2024 13:28:57 -0700
X-CSE-ConnectionGUID: +mH/gqrNQeyhIU0HSEj4QQ==
X-CSE-MsgGUID: MnAR/w+XQXqTF+hsgGpEUg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,221,1719903600"; d="scan'208";a="67542894"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 11 Sep 2024 13:28:53 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 11 Sep 2024 23:28:52 +0300
Date: Wed, 11 Sep 2024 23:28:52 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, suraj.kandpal@intel.com,
 jani.saarinen@intel.com
Subject: Re: [PATCH 11/19] drm/i915: Split current joiner hw state readout
Message-ID: <ZuH9hFdHFn2U3YsU@intel.com>
References: <20240911131349.933814-1-ankit.k.nautiyal@intel.com>
 <20240911131349.933814-12-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240911131349.933814-12-ankit.k.nautiyal@intel.com>
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

On Wed, Sep 11, 2024 at 06:43:41PM +0530, Ankit Nautiyal wrote:
> From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> 
> We need to add a new sanity checks and also do
> some preparations for adding ultrajoiner hw state readout.
> Lets first split reading of the uncompressed joiner and bigjoiner
> bit masks into separate functions.
> 
> v2: Fixed checkpatch warnings (Ankit)
> v3: Use struct intel_display in the new functions. (Ankit)
> 
> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 75 ++++++++++++++------
>  1 file changed, 55 insertions(+), 20 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 248ad63b0ba8..e93af02aa859 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -3582,27 +3582,54 @@ static bool intel_display_can_use_joiner(struct intel_display *display)
>  	return (DISPLAY_VER(display) >= 11);
>  }
>  
> -static void enabled_joiner_pipes(struct drm_i915_private *dev_priv,
> -				 u8 *primary_pipes, u8 *secondary_pipes)
> +static void enabled_uncompressed_joiner_pipes(struct intel_display *display,
> +					      u8 *primary_pipes, u8 *secondary_pipes)
>  {
> -	struct intel_display *display = to_intel_display(&dev_priv->drm);
> +	struct drm_i915_private *i915 = to_i915(display->drm);
>  	struct intel_crtc *crtc;
>  
>  	*primary_pipes = 0;
>  	*secondary_pipes = 0;
>  
> -	if (!intel_display_can_use_joiner(display))
> +	if (DISPLAY_VER(display) < 13)
>  		return;
>  
> -	for_each_intel_crtc_in_pipe_mask(&dev_priv->drm, crtc,
> -					 joiner_pipes(dev_priv)) {
> +	for_each_intel_crtc_in_pipe_mask(&i915->drm, crtc,
> +					 joiner_pipes(i915)) {
>  		enum intel_display_power_domain power_domain;
>  		enum pipe pipe = crtc->pipe;
>  		intel_wakeref_t wakeref;
>  
> -		power_domain = intel_dsc_power_domain(crtc, (enum transcoder) pipe);
> -		with_intel_display_power_if_enabled(dev_priv, power_domain, wakeref) {
> -			u32 tmp = intel_de_read(dev_priv, ICL_PIPE_DSS_CTL1(pipe));
> +		power_domain = POWER_DOMAIN_PIPE(pipe);
> +		with_intel_display_power_if_enabled(i915, power_domain, wakeref) {
> +			u32 tmp = intel_de_read(display, ICL_PIPE_DSS_CTL1(pipe));
> +
> +			if (tmp & UNCOMPRESSED_JOINER_PRIMARY)
> +				*primary_pipes |= BIT(pipe);
> +			if (tmp & UNCOMPRESSED_JOINER_SECONDARY)
> +				*secondary_pipes |= BIT(pipe);
> +		}
> +	}
> +}
> +
> +static void enabled_bigjoiner_pipes(struct intel_display *display,
> +				    u8 *primary_pipes, u8 *secondary_pipes)
> +{
> +	struct drm_i915_private *i915 = to_i915(display->drm);
> +	struct intel_crtc *crtc;
> +
> +	*primary_pipes = 0;
> +	*secondary_pipes = 0;
> +
> +	for_each_intel_crtc_in_pipe_mask(&i915->drm, crtc,
> +					 joiner_pipes(i915)) {
> +		enum intel_display_power_domain power_domain;
> +		enum pipe pipe = crtc->pipe;
> +		intel_wakeref_t wakeref;
> +
> +		power_domain = intel_dsc_power_domain(crtc, (enum transcoder)pipe);
> +		with_intel_display_power_if_enabled(i915, power_domain, wakeref) {
> +			u32 tmp = intel_de_read(display, ICL_PIPE_DSS_CTL1(pipe));
>  
>  			if (!(tmp & BIG_JOINER_ENABLE))
>  				continue;
> @@ -3612,20 +3639,28 @@ static void enabled_joiner_pipes(struct drm_i915_private *dev_priv,
>  			else
>  				*secondary_pipes |= BIT(pipe);
>  		}
> +	}
> +}
>  
> -		if (DISPLAY_VER(dev_priv) < 13)
> -			continue;
> +static void enabled_joiner_pipes(struct drm_i915_private *dev_priv,
> +				 u8 *primary_pipes, u8 *secondary_pipes)
> +{
> +	struct intel_display *display = to_intel_display(&dev_priv->drm);
> +	u8 primary_uncompressed_joiner_pipes, primary_bigjoiner_pipes;
> +	u8 secondary_uncompressed_joiner_pipes, secondary_bigjoiner_pipes;
>  
> -		power_domain = POWER_DOMAIN_PIPE(pipe);
> -		with_intel_display_power_if_enabled(dev_priv, power_domain, wakeref) {
> -			u32 tmp = intel_de_read(dev_priv, ICL_PIPE_DSS_CTL1(pipe));
> +	if (!intel_display_can_use_joiner(display))
> +		return;

I think we should just have the check in enabled_bigjoiner_pipes()
and this function shouldn't really have to care whether joiners
are supported or not (or which types are supported).

>  
> -			if (tmp & UNCOMPRESSED_JOINER_PRIMARY)
> -				*primary_pipes |= BIT(pipe);
> -			if (tmp & UNCOMPRESSED_JOINER_SECONDARY)
> -				*secondary_pipes |= BIT(pipe);
> -		}
> -	}
> +	enabled_uncompressed_joiner_pipes(display, &primary_uncompressed_joiner_pipes,
> +					  &secondary_uncompressed_joiner_pipes);
> +
> +	enabled_bigjoiner_pipes(display, &primary_bigjoiner_pipes,
> +				&secondary_bigjoiner_pipes);
> +
> +	*primary_pipes = primary_uncompressed_joiner_pipes | primary_bigjoiner_pipes;
> +
> +	*secondary_pipes = secondary_uncompressed_joiner_pipes | secondary_bigjoiner_pipes;
>  
>  	/* Joiner pipes should always be consecutive primary and secondary */
>  	drm_WARN(&dev_priv->drm, *secondary_pipes != *primary_pipes << 1,
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
