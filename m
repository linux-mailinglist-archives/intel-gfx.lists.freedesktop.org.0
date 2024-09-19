Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 963AA97CD6B
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Sep 2024 20:02:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DD42210E742;
	Thu, 19 Sep 2024 18:02:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="djTJ0amP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7E5CE10E741;
 Thu, 19 Sep 2024 18:02:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726768959; x=1758304959;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=bD7u2cO7/XXIoWYGr23gTsk9go6agJfWZATUSJ+vEWs=;
 b=djTJ0amPSrINN258XFMhz0OYf/XglKXXk8DJYKhjQtEdBDS0zkwBOsud
 vlfqFmiQ+AWnId6FM8OkjnfHOhgF0SMb13pAXdhXxhkMckSvIjk8JaiBa
 MS01wmGaGHdZYChTDv/vcQ/heeSpT6getbFZtVyuPV3DC+mfFQMhVXRJs
 +qDD1pD/ptF66CHKHqBq40TG0ydLZsWW12ePht3xh9fATOjh7vsre5GzA
 12NzBYXTI43LekwNTvhrLmnszdf54so2QkhmOdIDuAa6Z4B7Bdr1HllrO
 OMw3/ekHZzFOj2kOOy47qgDs6DpwM8rSOOA2JnNyV4AGQxKKFq9FiNV16 g==;
X-CSE-ConnectionGUID: GkRUdxbRSPCBqWaNKqW+tw==
X-CSE-MsgGUID: 9+RnpMrXQvSl9H72B7yQBA==
X-IronPort-AV: E=McAfee;i="6700,10204,11200"; a="25577420"
X-IronPort-AV: E=Sophos;i="6.10,242,1719903600"; d="scan'208";a="25577420"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2024 11:02:38 -0700
X-CSE-ConnectionGUID: Y9up3LvNRqCS+jgVS4l6eQ==
X-CSE-MsgGUID: 06G9DJhoQymhYWj+U+oOuA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,242,1719903600"; d="scan'208";a="70148414"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 19 Sep 2024 11:02:35 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 19 Sep 2024 21:02:34 +0300
Date: Thu, 19 Sep 2024 21:02:34 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 suraj.kandpal@intel.com
Subject: Re: [PATCH 11/15] drm/i915/display: Refactor enable_joiner_pipes
Message-ID: <ZuxnOjflMkxPrK17@intel.com>
References: <20240918144343.2876184-1-ankit.k.nautiyal@intel.com>
 <20240918144343.2876184-12-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240918144343.2876184-12-ankit.k.nautiyal@intel.com>
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

On Wed, Sep 18, 2024 at 08:13:39PM +0530, Ankit Nautiyal wrote:
> Pass the current pipe into enabled_joiner_pipes(), and let it figure out
> the proper bitmasks for us.
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Suggested-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 58 +++++++++++++-------
>  1 file changed, 39 insertions(+), 19 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 1ce334f3a3ae..65119c26ec88 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -3717,7 +3717,19 @@ static void enabled_ultrajoiner_pipes(struct drm_i915_private *i915,
>  	}
>  }
>  
> -static void enabled_joiner_pipes(struct drm_i915_private *dev_priv,
> +static enum pipe get_joiner_primary_pipe(enum pipe pipe, u8 primary_pipes, u8 secondary_pipes)
> +{
> +	if ((secondary_pipes & BIT(pipe)) == 0)
> +		return pipe;
> +
> +	/* ignore everything above our pipe */
> +	primary_pipes &= ~GENMASK(7, pipe);
> +
> +	/* highest remaining bit should be our primary pipe */
> +	return fls(primary_pipes) - 1;

I think this could now be simplified to something like:

{
	primary_pipes &= GENMASK(pipe, 0);

	return primary_pipes ? BIT(fls(primary_pipes) - 1) : 0;
}

And returning a bitmask like that would perhaps be easier
for enabled_joiner_pipes() to handle.

> +}
> +
> +static void enabled_joiner_pipes(struct drm_i915_private *dev_priv, enum pipe pipe,
>  				 u8 *primary_pipes, u8 *secondary_pipes)
>  {
>  	struct intel_display *display = to_intel_display(&dev_priv->drm);
> @@ -3782,10 +3794,30 @@ static void enabled_joiner_pipes(struct drm_i915_private *dev_priv,
>  		 expected_ultrajoiner_secondary_pipes(primary_ultrajoiner_pipes),
>  		 secondary_ultrajoiner_pipes);
>  
> -	*primary_pipes = primary_uncompressed_joiner_pipes | primary_bigjoiner_pipes |
> -			 primary_ultrajoiner_pipes;
> -	*secondary_pipes = secondary_uncompressed_joiner_pipes | secondary_bigjoiner_pipes |
> -			 secondary_ultrajoiner_pipes;
> +	*primary_pipes = 0;
> +	*secondary_pipes = 0;
> +
> +	if (ultrajoiner_pipes & BIT(pipe)) {
> +		*primary_pipes = BIT(get_joiner_primary_pipe(pipe, primary_ultrajoiner_pipes,
> +							     secondary_ultrajoiner_pipes));
> +		*secondary_pipes = secondary_ultrajoiner_pipes &
> +				   expected_ultrajoiner_secondary_pipes(primary_ultrajoiner_pipes);
> +		return;
> +	}
> +
> +	if (uncompressed_joiner_pipes & BIT(pipe)) {
> +		*primary_pipes = BIT(get_joiner_primary_pipe(pipe,
> +							     primary_uncompressed_joiner_pipes,
> +							     secondary_uncompressed_joiner_pipes));
> +		*secondary_pipes =
> +			secondary_uncompressed_joiner_pipes &
> +			expected_uncompjoiner_secondary_pipes(primary_uncompressed_joiner_pipes);
> +	} else if (bigjoiner_pipes & BIT(pipe)) {
> +		*primary_pipes = BIT(get_joiner_primary_pipe(pipe, primary_bigjoiner_pipes,
> +							     secondary_bigjoiner_pipes));
> +		*secondary_pipes = secondary_bigjoiner_pipes &
> +				   expected_bigjoiner_secondary_pipes(primary_bigjoiner_pipes);
> +	}
>  
>  	/* Joiner pipes should always be consecutive primary and secondary */
>  	drm_WARN(display->drm, *secondary_pipes != *primary_pipes << 1,

This would now have to be something like:
drm_WARN(expected_*_secondary_pipes(*primary_pipes) != *secondary_pipes);
(wich I suppose manes it has to be done for each joiner type
separately.

> @@ -3793,18 +3825,6 @@ static void enabled_joiner_pipes(struct drm_i915_private *dev_priv,
>  		 *primary_pipes, *secondary_pipes);
>  }
>  
> -static enum pipe get_joiner_primary_pipe(enum pipe pipe, u8 primary_pipes, u8 secondary_pipes)
> -{
> -	if ((secondary_pipes & BIT(pipe)) == 0)
> -		return pipe;
> -
> -	/* ignore everything above our pipe */
> -	primary_pipes &= ~GENMASK(7, pipe);
> -
> -	/* highest remaining bit should be our primary pipe */
> -	return fls(primary_pipes) - 1;
> -}
> -
>  static u8 get_joiner_secondary_pipes(enum pipe pipe, u8 primary_pipes, u8 secondary_pipes)
>  {
>  	enum pipe primary_pipe, next_primary_pipe;

I think this guy could be nuked, and callers should just use the
bitmasks returned by enabled_joiner_pipes directly.

> @@ -3893,7 +3913,7 @@ static u8 hsw_enabled_transcoders(struct intel_crtc *crtc)
>  		enabled_transcoders |= BIT(cpu_transcoder);
>  
>  	/* joiner secondary -> consider the primary pipe's transcoder as well */
> -	enabled_joiner_pipes(dev_priv, &primary_pipes, &secondary_pipes);
> +	enabled_joiner_pipes(dev_priv, crtc->pipe, &primary_pipes, &secondary_pipes);
>  	if (secondary_pipes & BIT(crtc->pipe)) {
>  		cpu_transcoder = (enum transcoder)
>  			get_joiner_primary_pipe(crtc->pipe, primary_pipes, secondary_pipes);
> @@ -4030,7 +4050,7 @@ static void intel_joiner_get_config(struct intel_crtc_state *crtc_state)
>  	u8 primary_pipes, secondary_pipes;
>  	enum pipe pipe = crtc->pipe;
>  
> -	enabled_joiner_pipes(i915, &primary_pipes, &secondary_pipes);
> +	enabled_joiner_pipes(i915, pipe, &primary_pipes, &secondary_pipes);
>  
>  	if (((primary_pipes | secondary_pipes) & BIT(pipe)) == 0)
>  		return;
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
