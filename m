Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ABF3C97F0DC
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Sep 2024 20:52:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E995910E46C;
	Mon, 23 Sep 2024 18:52:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GPndJvc+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D417410E46B;
 Mon, 23 Sep 2024 18:52:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727117557; x=1758653557;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=mG3iTEEJGLZuHXkc9VbSE6Sw6l3J/ozLhm7bsWsEyoM=;
 b=GPndJvc+OvyXMDsa1rPwBx5WjjsFCzk1WZQaRW490v4MJucSPaeAiwzv
 m28Aa4r8ZfOLTQWj2ApsDbpUPvOww+JNsJyMELdUfYZpx9QpqmuwPKcep
 SGFU/IN14rFpNkWwqItXTTOCjBnaAi+Ml8IY1t9l9aqrFJgBahyQymjLu
 XXoqAzoL/CDaHKK+/R8Ke6ekktiIFR8mQnaX8n/FMWjrDmPExf2puAkRx
 zeHzD7azm7wqaHaY1YPdVuqICUVikmfY7xorO9EjWKgGDIbrxeJZ40gDe
 46/cO2dqu781Xd3UFamC4YiJx7PFo/9JwkXzBDNS8qB+GP3rsF4yUp9e1 A==;
X-CSE-ConnectionGUID: d6HYft+jSfiNwYIZWaDrGA==
X-CSE-MsgGUID: eAuxsXM4Sp+RMk21qSBooQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11204"; a="13713854"
X-IronPort-AV: E=Sophos;i="6.10,252,1719903600"; d="scan'208";a="13713854"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2024 11:52:32 -0700
X-CSE-ConnectionGUID: tYZ4rFgeRP+OIA9AGSXIPg==
X-CSE-MsgGUID: rRSKM59IRaazJ3H1ZC1L3A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,252,1719903600"; d="scan'208";a="71300972"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 23 Sep 2024 11:52:29 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 23 Sep 2024 21:52:28 +0300
Date: Mon, 23 Sep 2024 21:52:28 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 suraj.kandpal@intel.com
Subject: Re: [PATCH 10/16] drm/i915/display: Refactor enable_joiner_pipes
Message-ID: <ZvG47MoTIBJOO4EV@intel.com>
References: <20240923181336.3303940-1-ankit.k.nautiyal@intel.com>
 <20240923181336.3303940-11-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240923181336.3303940-11-ankit.k.nautiyal@intel.com>
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

On Mon, Sep 23, 2024 at 11:43:30PM +0530, Ankit Nautiyal wrote:
> Pass the current pipe into enabled_joiner_pipes(), and let it figure out
> the proper bitmasks for us.
> 
> v2:
> -Simplify helper get_joiner_primary_pipes. (Ville)
> -Nuke get_joiner_secondary_pipes. (Ville)
> -Add more drm_WARNs and checks for final primary/secondary pipes.
> (Ville)
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Suggested-by: Ville Syrj�l� <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 85 +++++++++++---------
>  1 file changed, 48 insertions(+), 37 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index c42ba377d247..f35d1e1fdb8a 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -3706,7 +3706,14 @@ static void enabled_ultrajoiner_pipes(struct drm_i915_private *i915,
>  	}
>  }
>  
> -static void enabled_joiner_pipes(struct drm_i915_private *dev_priv,
> +static u8 get_joiner_primary_pipe(enum pipe pipe, u8 primary_pipes)
> +{
> +	primary_pipes &= GENMASK(pipe, 0);
> +
> +	return primary_pipes ? BIT(fls(primary_pipes) - 1) : 0;
> +}
> +
> +static void enabled_joiner_pipes(struct drm_i915_private *dev_priv, enum pipe pipe,
>  				 u8 *primary_pipes, u8 *secondary_pipes)
>  {
>  	struct intel_display *display = to_intel_display(&dev_priv->drm);
> @@ -3774,41 +3781,47 @@ static void enabled_joiner_pipes(struct drm_i915_private *dev_priv,
>  		 expected_ultrajoiner_secondary_pipes(primary_ultrajoiner_pipes),
>  		 secondary_ultrajoiner_pipes);
>  
> -	*primary_pipes = primary_uncompressed_joiner_pipes | primary_bigjoiner_pipes |
> -			 primary_ultrajoiner_pipes;
> -	*secondary_pipes = secondary_uncompressed_joiner_pipes | secondary_bigjoiner_pipes |
> -			 secondary_ultrajoiner_pipes;
> -}
> -
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
> +	*primary_pipes = 0;
> +	*secondary_pipes = 0;
>  
> -static u8 get_joiner_secondary_pipes(enum pipe pipe, u8 primary_pipes, u8 secondary_pipes)
> -{
> -	enum pipe primary_pipe, next_primary_pipe;
> +	if (ultrajoiner_pipes & BIT(pipe)) {
> +		*primary_pipes = get_joiner_primary_pipe(pipe, primary_ultrajoiner_pipes);
> +		*secondary_pipes = secondary_ultrajoiner_pipes &
> +				   expected_ultrajoiner_secondary_pipes(primary_ultrajoiner_pipes);
                                                                        ^^^^^^^^^^^^^^^^^^^^^^^^^
That should be '*primary_pipes'.

This branch is missing the final WARN_ON you have in the
bigjoiner uncompressed joiner branches below.

> +		return;
> +	}
>  
> -	primary_pipe = get_joiner_primary_pipe(pipe, primary_pipes, secondary_pipes);
> +	if (uncompressed_joiner_pipes & BIT(pipe)) {
> +		*primary_pipes = get_joiner_primary_pipe(pipe, primary_uncompressed_joiner_pipes);
> +		*secondary_pipes =
> +			secondary_uncompressed_joiner_pipes &
> +			expected_uncompressed_joiner_secondary_pipes(primary_uncompressed_joiner_pipes);
> +	} else if (bigjoiner_pipes & BIT(pipe)) {
> +		*primary_pipes = get_joiner_primary_pipe(pipe, primary_bigjoiner_pipes);
> +		*secondary_pipes = secondary_bigjoiner_pipes &
> +				   expected_bigjoiner_secondary_pipes(primary_bigjoiner_pipes);

Same '*primary_pipes' thing in these two.

> +	}

I would probably get rid of the if-else construct here, and just
handle each joiner type completely independently, just like ultrajoiner
above. Makes the code more regular and thus easier to reason about.

>  
> -	if ((primary_pipes & BIT(primary_pipe)) == 0)
> -		return 0;
> +	drm_WARN(display->drm,
> +		 expected_bigjoiner_secondary_pipes(*primary_pipes) != *secondary_pipes,
> +		 "Wrong bigjoiner secondary pipes for primary_pipes %#x (expected %#x, current %#x for)\n",
> +		 *primary_pipes,
> +		 expected_bigjoiner_secondary_pipes(*primary_pipes),
> +		 *secondary_pipes);
>  
> -	/* ignore our primary pipe and everything below it */
> -	primary_pipes &= ~GENMASK(primary_pipe, 0);
> -	/* make sure a high bit is set for the ffs() */
> -	primary_pipes |= BIT(7);
> -	/* lowest remaining bit should be the next primary pipe */
> -	next_primary_pipe = ffs(primary_pipes) - 1;
> +	drm_WARN(display->drm,
> +		 expected_uncompressed_joiner_secondary_pipes(*primary_pipes) != *secondary_pipes,
> +		 "Wrong uncompressed joiner secondary pipes for primary_pipes %#x (expected %#x, current %#x for)\n",
> +		 *primary_pipes,
> +		 expected_uncompressed_joiner_secondary_pipes(*primary_pipes),
> +		 *secondary_pipes);
>  
> -	return secondary_pipes & GENMASK(next_primary_pipe - 1, primary_pipe);
> +	drm_WARN(display->drm,
> +		 expected_ultrajoiner_secondary_pipes(*primary_pipes) != *secondary_pipes,
> +		 "Wrong ultrajoiner secondary pipes for primary_pipes %#x (expected %#x, current %#x for)\n",
> +		 *primary_pipes,
> +		 expected_ultrajoiner_secondary_pipes(*primary_pipes),
> +		 *secondary_pipes);

I'm not quite sure what's happening here. We already bailed out for
ultrajoiner earlier.

The patch is pretty hard to read. Did you try --patience vs. not when
generating it in case one or the other makes for a more readalbe end
result?

>  }
>  
>  static u8 hsw_panel_transcoders(struct drm_i915_private *i915)
> @@ -3880,10 +3893,10 @@ static u8 hsw_enabled_transcoders(struct intel_crtc *crtc)
>  		enabled_transcoders |= BIT(cpu_transcoder);
>  
>  	/* joiner secondary -> consider the primary pipe's transcoder as well */
> -	enabled_joiner_pipes(dev_priv, &primary_pipes, &secondary_pipes);
> +	enabled_joiner_pipes(dev_priv, crtc->pipe, &primary_pipes, &secondary_pipes);
>  	if (secondary_pipes & BIT(crtc->pipe)) {
>  		cpu_transcoder = (enum transcoder)
> -			get_joiner_primary_pipe(crtc->pipe, primary_pipes, secondary_pipes);
> +			ffs(get_joiner_primary_pipe(crtc->pipe, primary_pipes)) - 1;
>  		if (transcoder_ddi_func_is_enabled(dev_priv, cpu_transcoder))
>  			enabled_transcoders |= BIT(cpu_transcoder);
>  	}
> @@ -4017,14 +4030,12 @@ static void intel_joiner_get_config(struct intel_crtc_state *crtc_state)
>  	u8 primary_pipes, secondary_pipes;
>  	enum pipe pipe = crtc->pipe;
>  
> -	enabled_joiner_pipes(i915, &primary_pipes, &secondary_pipes);
> +	enabled_joiner_pipes(i915, pipe, &primary_pipes, &secondary_pipes);
>  
>  	if (((primary_pipes | secondary_pipes) & BIT(pipe)) == 0)
>  		return;
>  
> -	crtc_state->joiner_pipes =
> -		BIT(get_joiner_primary_pipe(pipe, primary_pipes, secondary_pipes)) |
> -		get_joiner_secondary_pipes(pipe, primary_pipes, secondary_pipes);
> +	crtc_state->joiner_pipes = primary_pipes | secondary_pipes;
>  }
>  
>  static bool hsw_get_pipe_config(struct intel_crtc *crtc,
> -- 
> 2.45.2

-- 
Ville Syrj�l�
Intel
