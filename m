Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BF68B975BFC
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Sep 2024 22:45:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B01A510E1AB;
	Wed, 11 Sep 2024 20:45:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VP8E7Uhd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 47ACB10E1AB
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Sep 2024 20:45:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726087554; x=1757623554;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=UDEWkou3/YCaFbSYKKGlCNyvwgI6WmG7z7/zYg85VBI=;
 b=VP8E7UhdqHgB2LY69niWwI6iA0zz8bbm9TYv0cwlswzZsU1vp888Q4Fq
 5vsWspbazXSaoNcP20JCHMCUvWVjIYdkKF+8iL5YvjKaHrHGByFa6MnLJ
 7E/LsdWzRlhNJqmUDX6d5yGt0rTmobQNPMHYxskDZb/soZXL1S7lXR07p
 E+rEjJLiNPLVxM7Pbtp4iYO4tGlPDJ4xiZ9wZgheWk76tG5msYaGh+3Q1
 I2mewo/Pe8Yx/2A5fzylBqc88VKnLsCQfbru+iXjueGfbh9t0xm47SCt/
 ZRacazG4+MemfmmeVxnHkbc3cU5CIR1qmgoWwr+2vtQfiVTCM3G4xUEiV Q==;
X-CSE-ConnectionGUID: 9CAVxOLFSUeKe9uFXpI+Bw==
X-CSE-MsgGUID: 02mTWUVSQByadVq1ewl9+w==
X-IronPort-AV: E=McAfee;i="6700,10204,11192"; a="36265260"
X-IronPort-AV: E=Sophos;i="6.10,221,1719903600"; d="scan'208";a="36265260"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2024 13:45:54 -0700
X-CSE-ConnectionGUID: bjtbd7QaRIW9uB5hXRtG7Q==
X-CSE-MsgGUID: hNICYMVpSsKputybHgpBXQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,221,1719903600"; d="scan'208";a="67545824"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 11 Sep 2024 13:45:51 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 11 Sep 2024 23:45:50 +0300
Date: Wed, 11 Sep 2024 23:45:50 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, suraj.kandpal@intel.com,
 jani.saarinen@intel.com
Subject: Re: [PATCH 14/19] drm/i915/display: Percolate ultrajoiner info to
 get_joiner_config
Message-ID: <ZuIBfkP4QcHTCHRh@intel.com>
References: <20240911131349.933814-1-ankit.k.nautiyal@intel.com>
 <20240911131349.933814-15-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240911131349.933814-15-ankit.k.nautiyal@intel.com>
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

On Wed, Sep 11, 2024 at 06:43:44PM +0530, Ankit Nautiyal wrote:
> From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> 
> Modify the helpers get_primary/secondary_pipes to account for
> ultrajoiner usage. Use the modified helpers to retrieve ultrajoiner
> information in get_joiner_config.
> 
> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 57 +++++++++++++-------
>  1 file changed, 37 insertions(+), 20 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 02926a8ef7c5..24698d8ed5d6 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -3716,7 +3716,8 @@ static void enabled_ultrajoiner_pipes(struct drm_i915_private *i915,
>  }
>  
>  static void enabled_joiner_pipes(struct drm_i915_private *dev_priv,
> -				 u8 *primary_pipes, u8 *secondary_pipes)
> +				 u8 *primary_pipes, u8 *secondary_pipes,
> +				 bool *ultrajoiner_used)

I think life will be simpler if we just pass the current pipe into
enabled_joiner_pipes(), and let it figure out the proper bitmasks
for us.

We should be able to just do somehting like:

if (ultrajoiner_pipes & BIT(pipe)) {
	*primary_pipes = BIT(get_primary_pipe(ultrajoiner_primary_pipes, pipe));
	*secondary_pipes = ultrajoiner_secondary_pipes &
                       expected_ultrajoiner_secondary_pipes(*primary_pipes);
	return;
}
// same for uncompressed joiner
// same for bigjoiner

to get the approriate primary pipe and secondary pipes for the current
pipe.

>  {
>  	struct intel_display *display = to_intel_display(&dev_priv->drm);
>  	u8 primary_uncompressed_joiner_pipes, primary_bigjoiner_pipes;
> @@ -3760,6 +3761,7 @@ static void enabled_joiner_pipes(struct drm_i915_private *dev_priv,
>  				    secondary_uncompressed_joiner_pipes;
>  	bigjoiner_pipes = primary_bigjoiner_pipes | secondary_bigjoiner_pipes;
>  	ultrajoiner_pipes = primary_ultrajoiner_pipes | secondary_ultrajoiner_pipes;
> +	*ultrajoiner_used = ultrajoiner_pipes != 0;
>  
>  	drm_WARN(display->drm, (uncompressed_joiner_pipes & bigjoiner_pipes) != 0,
>  		 "Uncomressed joiner pipes(%#x) and bigjoiner pipes(%#x) can't intersect\n",
> @@ -3794,7 +3796,8 @@ static void enabled_joiner_pipes(struct drm_i915_private *dev_priv,
>  		 *primary_pipes, *secondary_pipes);
>  }
>  
> -static enum pipe get_joiner_primary_pipe(enum pipe pipe, u8 primary_pipes, u8 secondary_pipes)
> +static enum pipe get_joiner_primary_pipe(enum pipe pipe, u8 primary_pipes,
> +					 u8 secondary_pipes, bool ultrajoiner_used)
>  {
>  	if ((secondary_pipes & BIT(pipe)) == 0)
>  		return pipe;
> @@ -3802,27 +3805,37 @@ static enum pipe get_joiner_primary_pipe(enum pipe pipe, u8 primary_pipes, u8 se
>  	/* ignore everything above our pipe */
>  	primary_pipes &= ~GENMASK(7, pipe);
>  
> -	/* highest remaining bit should be our primary pipe */
> -	return fls(primary_pipes) - 1;
> +	if (!ultrajoiner_used)
> +		/* highest remaining bit should be our master pipe */
> +		return fls(primary_pipes) - 1;
> +
> +	/* lowest remaining bit should be our primary master pipe */
> +	return ffs(primary_pipes) - 1;
>  }
>  
> -static u8 get_joiner_secondary_pipes(enum pipe pipe, u8 primary_pipes, u8 secondary_pipes)
> +static u8 get_joiner_secondary_pipes(enum pipe pipe, u8 primary_pipes,
> +				     u8 secondary_pipes, bool ultrajoiner_used)
>  {
>  	enum pipe primary_pipe, next_primary_pipe;
>  
> -	primary_pipe = get_joiner_primary_pipe(pipe, primary_pipes, secondary_pipes);
> +	primary_pipe = get_joiner_primary_pipe(pipe, primary_pipes,
> +					       secondary_pipes, ultrajoiner_used);
>  
>  	if ((primary_pipes & BIT(primary_pipe)) == 0)
>  		return 0;
>  
> -	/* ignore our primary pipe and everything below it */
> -	primary_pipes &= ~GENMASK(primary_pipe, 0);
> -	/* make sure a high bit is set for the ffs() */
> -	primary_pipes |= BIT(7);
> -	/* lowest remaining bit should be the next primary pipe */
> -	next_primary_pipe = ffs(primary_pipes) - 1;
> +	if (!ultrajoiner_used) {
> +		/* ignore our primary pipe and everything below it */
> +		primary_pipes &= ~GENMASK(primary_pipe, 0);
> +		/* make sure a high bit is set for the ffs() */
> +		primary_pipes |= BIT(7);
> +		/* lowest remaining bit should be the next primary pipe */
> +		next_primary_pipe = ffs(primary_pipes) - 1;
>  
> -	return secondary_pipes & GENMASK(next_primary_pipe - 1, primary_pipe);
> +		return secondary_pipes & GENMASK(next_primary_pipe - 1, primary_pipe);
> +	} else {
> +		return (secondary_pipes | primary_pipes) & ~BIT(primary_pipe);
> +	}
>  }
>  
>  static u8 hsw_panel_transcoders(struct drm_i915_private *i915)
> @@ -3843,6 +3856,7 @@ static u8 hsw_enabled_transcoders(struct intel_crtc *crtc)
>  	enum transcoder cpu_transcoder;
>  	u8 primary_pipes, secondary_pipes;
>  	u8 enabled_transcoders = 0;
> +	bool ultrajoiner_used;
>  
>  	/*
>  	 * XXX: Do intel_display_power_get_if_enabled before reading this (for
> @@ -3893,11 +3907,12 @@ static u8 hsw_enabled_transcoders(struct intel_crtc *crtc)
>  	if (transcoder_ddi_func_is_enabled(dev_priv, cpu_transcoder))
>  		enabled_transcoders |= BIT(cpu_transcoder);
>  
> -	/* joiner secondary -> consider the primary pipe's transcoder as well */
> -	enabled_joiner_pipes(dev_priv, &primary_pipes, &secondary_pipes);
> +	/* joiner slave -> consider the master pipe's transcoder as well */
> +	enabled_joiner_pipes(dev_priv, &primary_pipes, &secondary_pipes, &ultrajoiner_used);
>  	if (secondary_pipes & BIT(crtc->pipe)) {
>  		cpu_transcoder = (enum transcoder)
> -			get_joiner_primary_pipe(crtc->pipe, primary_pipes, secondary_pipes);
> +			get_joiner_primary_pipe(crtc->pipe, primary_pipes,
> +						secondary_pipes, ultrajoiner_used);
>  		if (transcoder_ddi_func_is_enabled(dev_priv, cpu_transcoder))
>  			enabled_transcoders |= BIT(cpu_transcoder);
>  	}
> @@ -4029,16 +4044,18 @@ static void intel_joiner_get_config(struct intel_crtc_state *crtc_state)
>  	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>  	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
>  	u8 primary_pipes, secondary_pipes;
> +	bool ultrajoiner_used;
>  	enum pipe pipe = crtc->pipe;
>  
> -	enabled_joiner_pipes(i915, &primary_pipes, &secondary_pipes);
> +	enabled_joiner_pipes(i915, &primary_pipes, &secondary_pipes, &ultrajoiner_used);
>  
>  	if (((primary_pipes | secondary_pipes) & BIT(pipe)) == 0)
>  		return;
>  
> -	crtc_state->joiner_pipes =
> -		BIT(get_joiner_primary_pipe(pipe, primary_pipes, secondary_pipes)) |
> -		get_joiner_secondary_pipes(pipe, primary_pipes, secondary_pipes);
> +	crtc_state->joiner_pipes = BIT(get_joiner_primary_pipe(pipe, primary_pipes,
> +							       secondary_pipes, ultrajoiner_used)) |
> +				   get_joiner_secondary_pipes(pipe, primary_pipes,
> +							      secondary_pipes, ultrajoiner_used);
>  }
>  
>  static bool hsw_get_pipe_config(struct intel_crtc *crtc,
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
