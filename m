Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D6D9191E866
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Jul 2024 21:17:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE50610E4FA;
	Mon,  1 Jul 2024 19:17:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MfmhaRkF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 67EB410E4E5
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Jul 2024 19:17:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719861470; x=1751397470;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=HGphuortjYpLXkQae69lp6m1OvR477PMNTr5gNNkUuA=;
 b=MfmhaRkFSv4m+IAbW8cbYfuRBnX1Cp3HEl/Wfwbq6Fae0zNMWr1S4kdP
 etosvPe8SIq9HD4pFXwbbpNFzSDrXfdeyjRWBJaTock/F6EBoiFsBe3c8
 8mYGaGeW4SELNY//HJT0F5pPmLzv8eKZn1ckaK5l44U71ZpFoUjdhB29U
 PXU/gvBu8WNdouvFICKsMCLU/lE6aXLtSC2zcHg4Y07E/PH62mplYQ8K0
 PsTyTYyIq0B1QcfY1crb/fGIbik6KIti9ZQmpiURsyUq4gjCEct1gk8pK
 q5U176+uAV+pe1Gozhslgy/Xg191WI93cX0rqKf9C03Qsxu75/aH6JBFp A==;
X-CSE-ConnectionGUID: CzmnZ6moRCe7MwQiFgFvqw==
X-CSE-MsgGUID: zgI1NE81QqyvBY91xrODKg==
X-IronPort-AV: E=McAfee;i="6700,10204,11120"; a="16851348"
X-IronPort-AV: E=Sophos;i="6.09,177,1716274800"; d="scan'208";a="16851348"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2024 12:17:50 -0700
X-CSE-ConnectionGUID: SwL5AfLhTl29Dx1EVi6Gxw==
X-CSE-MsgGUID: 7yF3WvXQRaGBThMQ/QWe3w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,177,1716274800"; d="scan'208";a="45594581"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 01 Jul 2024 12:17:46 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 01 Jul 2024 22:17:45 +0300
Date: Mon, 1 Jul 2024 22:17:45 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Cc: intel-gfx@lists.freedesktop.org, jani.saarinen@intel.com
Subject: Re: [PATCH 2/4] drm/i915: Implement hw state readout for ultrajoiner
Message-ID: <ZoMA2T5qTKB7wdwl@intel.com>
References: <20240626081842.10614-1-stanislav.lisovskiy@intel.com>
 <20240626081842.10614-3-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240626081842.10614-3-stanislav.lisovskiy@intel.com>
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

On Wed, Jun 26, 2024 at 11:18:40AM +0300, Stanislav Lisovskiy wrote:
> Ultrajoiner mode has some new bits and states to be
> read out from the hw. Lets make changes accordingly.
> 
> v2: - Split enabled_joiner_pipes readout procedure into
>       3 parts, each of them taking care of uncompressed joiner,
>       bigjoiner and ultrajoiner respectively and then do
>       some sanity check(for example all the pipes which are used
>       in ultrajoiner, should also belong to bigjoiner)
> 
> SIgned-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c  | 162 +++++++++++++++---
>  .../gpu/drm/i915/display/intel_vdsc_regs.h    |   3 +
>  2 files changed, 142 insertions(+), 23 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 5bc867ff81e1..f702ead9b5f3 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -3580,8 +3580,42 @@ static bool transcoder_ddi_func_is_enabled(struct drm_i915_private *dev_priv,
>  	return tmp & TRANS_DDI_FUNC_ENABLE;
>  }
>  
> -static void enabled_joiner_pipes(struct drm_i915_private *dev_priv,
> -				 u8 *primary_pipes, u8 *secondary_pipes)
> +static void enabled_uncompressed_joiner_pipes(struct drm_i915_private *dev_priv,
> +					      u8 *primary_pipes, u8 *secondary_pipes)
> +{
> +	struct intel_crtc *crtc;
> +
> +	*primary_pipes = 0;
> +	*secondary_pipes = 0;
> +
> +	for_each_intel_crtc_in_pipe_mask(&dev_priv->drm, crtc,
> +					 joiner_pipes(dev_priv)) {
> +		enum intel_display_power_domain power_domain;
> +		enum pipe pipe = crtc->pipe;
> +		intel_wakeref_t wakeref;
> +
> +		if (DISPLAY_VER(dev_priv) < 13)
> +			continue;

That check can be done before the loop.

> +
> +		power_domain = POWER_DOMAIN_PIPE(pipe);
> +		with_intel_display_power_if_enabled(dev_priv, power_domain, wakeref) {
> +			u32 tmp = intel_de_read(dev_priv, ICL_PIPE_DSS_CTL1(pipe));
> +
> +			if (tmp & UNCOMPRESSED_JOINER_PRIMARY)
> +				*primary_pipes |= BIT(pipe);
> +			if (tmp & UNCOMPRESSED_JOINER_SECONDARY)
> +				*secondary_pipes |= BIT(pipe);
> +		}
> +	}
> +
> +	/* Joiner pipes should always be consecutive primary and secondary */
> +	drm_WARN(&dev_priv->drm, *secondary_pipes != *primary_pipes << 1,
> +		 "Uncompressed joiner misconfigured (primary pipes 0x%x, secondary pipes 0x%x)\n",
> +		 *primary_pipes, *secondary_pipes);

We should move these checks into the caller.

> +}
> +
> +static void enabled_bigjoiner_pipes(struct drm_i915_private *dev_priv,
> +				    u8 *primary_pipes, u8 *secondary_pipes)
>  {
>  	struct intel_crtc *crtc;
>  
> @@ -3606,28 +3640,95 @@ static void enabled_joiner_pipes(struct drm_i915_private *dev_priv,
>  			else
>  				*secondary_pipes |= BIT(pipe);
>  		}
> +	}
>  
> -		if (DISPLAY_VER(dev_priv) < 13)
> -			continue;
> +	/* Joiner pipes should always be consecutive primary and secondary */
> +	drm_WARN(&dev_priv->drm, *secondary_pipes != *primary_pipes << 1,
> +		 "Bigjoiner misconfigured (primary pipes 0x%x, secondary pipes 0x%x)\n",
> +		 *primary_pipes, *secondary_pipes);
> +}
>  
> -		power_domain = POWER_DOMAIN_PIPE(pipe);
> +static void enabled_ultrajoiner_pipes(struct drm_i915_private *dev_priv,
> +				      u8 *primary_pipes, u8 *secondary_pipes)
> +{
> +	struct intel_crtc *crtc;
> +
> +	*primary_pipes = 0;
> +	*secondary_pipes = 0;

Needs a platform/feature check of some sort.

Please split this patch into smaller parts:
1) split the bigjoiner/uncompressed joiners readouts
2) add more asserts relevant for bigjoiner/uncompressed joiner
3..n) bigjoiner stuff

> +
> +	for_each_intel_crtc_in_pipe_mask(&dev_priv->drm, crtc,
> +					 joiner_pipes(dev_priv)) {
> +		enum intel_display_power_domain power_domain;
> +		enum pipe pipe = crtc->pipe;
> +		intel_wakeref_t wakeref;
> +
> +		power_domain = intel_dsc_power_domain(crtc, (enum transcoder) pipe);
>  		with_intel_display_power_if_enabled(dev_priv, power_domain, wakeref) {
>  			u32 tmp = intel_de_read(dev_priv, ICL_PIPE_DSS_CTL1(pipe));
>  
> -			if (tmp & UNCOMPRESSED_JOINER_PRIMARY)
> +			if (!(tmp & ULTRA_JOINER_ENABLE))
> +				continue;
> +
> +			/*
> +			 * As of now we always assume primary master to be PIPE A.
> +			 * Otherwise we need a new field in crtc_state to track
> +			 * primary master as well.
> +			 */
> +			drm_WARN(&dev_priv->drm,
> +				 (tmp & PRIMARY_ULTRA_JOINER_ENABLE) && crtc->pipe != PIPE_A,
> +				 "Ultrajoiner primary master isn't PIPE A(pipe %c)",
> +				 pipe_name(crtc->pipe));

This feels rather misplaced. I think all the asserts should be in 
the caller.

Could also write it more like this:
 WARN((ultrajoiner_primaries & possible_ultrajoiner_primaries()) != 0)
which makes it trivial to add more pipes to the set of possible 
ultrajoiner primaries in the future.

> +
> +			if (tmp & PRIMARY_ULTRA_JOINER_ENABLE)
>  				*primary_pipes |= BIT(pipe);
> -			if (tmp & UNCOMPRESSED_JOINER_SECONDARY)
> +			else
>  				*secondary_pipes |= BIT(pipe);
>  		}
>  	}
> +}
>  
> -	/* Joiner pipes should always be consecutive primary and secondary */
> -	drm_WARN(&dev_priv->drm, *secondary_pipes != *primary_pipes << 1,
> -		 "Joiner misconfigured (primary pipes 0x%x, secondary pipes 0x%x)\n",
> -		 *primary_pipes, *secondary_pipes);
> +static void enabled_joiner_pipes(struct drm_i915_private *dev_priv,
> +				 u8 *primary_pipes, u8 *secondary_pipes,
> +				 bool *ultrajoiner_used)
> +{
> +	u8 primary_uncompressed_joiner_pipes, primary_bigjoiner_pipes;
> +	u8 primary_ultrajoiner_pipes;
> +	u8 secondary_uncompressed_joiner_pipes, secondary_bigjoiner_pipes;
> +	u8 secondary_ultrajoiner_pipes;
> +	u8 ultrajoiner_pipes, bigjoiner_pipes;
> +
> +	enabled_uncompressed_joiner_pipes(dev_priv, &primary_uncompressed_joiner_pipes,
> +					  &secondary_uncompressed_joiner_pipes);
> +
> +	enabled_bigjoiner_pipes(dev_priv, &primary_bigjoiner_pipes,
> +				&secondary_bigjoiner_pipes);
> +
> +	enabled_ultrajoiner_pipes(dev_priv, &primary_ultrajoiner_pipes,
> +				  &secondary_ultrajoiner_pipes);
> +
> +	*primary_pipes = 0;
> +	*secondary_pipes = 0;
> +	*ultrajoiner_used = primary_ultrajoiner_pipes && secondary_ultrajoiner_pipes;
> +	ultrajoiner_pipes = primary_ultrajoiner_pipes | secondary_ultrajoiner_pipes;
> +	bigjoiner_pipes = primary_bigjoiner_pipes | secondary_bigjoiner_pipes;
> +
> +	drm_WARN(&dev_priv->drm,
> +		(ultrajoiner_pipes & bigjoiner_pipes) == ultrajoiner_pipes,

!=

> +		"Ultrajoiner/Bigjoiner misconfigured:"
> +		"Ultrajoiner pipes: 0x%x(primary) 0x%x(secondary),"
> +		"Bigjoiner pipes: 0x%x(primary) 0x%x(secondary)",
> +		primary_ultrajoiner_pipes, secondary_ultrajoiner_pipes,
> +		primary_bigjoiner_pipes, secondary_bigjoiner_pipes);

Some additional checks we could have:

Make sure the ultrajoiner primaries are also bigjoiner primaries:
 WARN((ultrajoiner_primaries & bigjoiner_primaries) != ultrajoiner_primaries)

Make sure bigjoiner and uncompressed joiner don't conflict:
 WARN((uncompressed_pipes & bigjoiner_pipes) != 0);

And something validate that the ultrajoiner primaries vs. secondaries are
correct, Basically the same as what we already had for bigjoiner and
uncompressed joiner, but constructing the expected secondaries from the
primaries is a bit move involved than the simple <<1 we used in those
cases.

I guess we could have something like this to generate the secondaries
masks from the primaries masks:
expected_secondaries(primaries, num_pipes)
{
	secondaries = 0;
	for (i = 1 ; i < num_pipes; i++)
		secondaries |= primaries << i;
	return secondaries;
}

and then we could write all those checks like so:
 WARN(bigjoiner_secondaries != expected_secondaries(bigjoiner_primaries, 2));
 WARN(uncompressed_secondaries != expected_secondaries(uncompressed_primaries, 2));
 WARN(ultrajoiner_secondaries != expected_secondaries(ultrajoiner_primaries, 4));
 
And we should probably also check for conflicts between each primary
and secondary masks:
 WARN((foo_secondaries & foo_primaries) != 0);
Only really possible with uncompressed joiner due to the way the bits 
work, but no real harm in asserting it for all the joiner types.

> +
> +	*primary_pipes = primary_uncompressed_joiner_pipes | primary_bigjoiner_pipes |
> +			 primary_ultrajoiner_pipes;
> +
> +	*secondary_pipes = secondary_uncompressed_joiner_pipes | secondary_bigjoiner_pipes |
> +			   secondary_ultrajoiner_pipes;
>  }
>  
> -static enum pipe get_joiner_primary_pipe(enum pipe pipe, u8 primary_pipes, u8 secondary_pipes)
> +static enum pipe get_joiner_primary_pipe(enum pipe pipe, u8 primary_pipes,
> +					 u8 secondary_pipes, bool ultrajoiner_used)
>  {
>  	if ((secondary_pipes & BIT(pipe)) == 0)
>  		return pipe;
> @@ -3635,15 +3736,22 @@ static enum pipe get_joiner_primary_pipe(enum pipe pipe, u8 primary_pipes, u8 se
>  	/* ignore everything above our pipe */
>  	primary_pipes &= ~GENMASK(7, pipe);
>  
> -	/* highest remaining bit should be our primary pipe */
> -	return fls(primary_pipes) - 1;
> +	if (!ultrajoiner_used) {
> +		/* highest remaining bit should be our master pipe */
> +		return fls(primary_pipes) - 1;
> +	} else {
> +		/* lowest remaining bit should be our primary master pipe */
> +		return ffs(primary_pipes) - 1;
> +	}
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
> @@ -3655,7 +3763,10 @@ static u8 get_joiner_secondary_pipes(enum pipe pipe, u8 primary_pipes, u8 second
>  	/* lowest remaining bit should be the next primary pipe */
>  	next_primary_pipe = ffs(primary_pipes) - 1;
>  
> -	return secondary_pipes & GENMASK(next_primary_pipe - 1, primary_pipe);
> +	if (!ultrajoiner_used)
> +		return secondary_pipes & GENMASK(next_primary_pipe - 1, primary_pipe);
> +	else
> +		return (secondary_pipes | primary_pipes) & ~BIT(primary_pipe);
>  }
>  
>  static u8 hsw_panel_transcoders(struct drm_i915_private *i915)
> @@ -3676,6 +3787,7 @@ static u8 hsw_enabled_transcoders(struct intel_crtc *crtc)
>  	enum transcoder cpu_transcoder;
>  	u8 primary_pipes, secondary_pipes;
>  	u8 enabled_transcoders = 0;
> +	bool ultrajoiner_used;
>  
>  	/*
>  	 * XXX: Do intel_display_power_get_if_enabled before reading this (for
> @@ -3726,11 +3838,12 @@ static u8 hsw_enabled_transcoders(struct intel_crtc *crtc)
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
> +					       secondary_pipes, ultrajoiner_used);
>  		if (transcoder_ddi_func_is_enabled(dev_priv, cpu_transcoder))
>  			enabled_transcoders |= BIT(cpu_transcoder);
>  	}
> @@ -3863,15 +3976,18 @@ static void intel_joiner_get_config(struct intel_crtc_state *crtc_state)
>  	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
>  	u8 primary_pipes, secondary_pipes;
>  	enum pipe pipe = crtc->pipe;
> +	bool ultrajoiner_used;
>  
> -	enabled_joiner_pipes(i915, &primary_pipes, &secondary_pipes);
> +	enabled_joiner_pipes(i915, &primary_pipes, &secondary_pipes, &ultrajoiner_used);
>  
>  	if (((primary_pipes | secondary_pipes) & BIT(pipe)) == 0)
>  		return;
>  
>  	crtc_state->joiner_pipes =
> -		BIT(get_joiner_primary_pipe(pipe, primary_pipes, secondary_pipes)) |
> -		get_joiner_secondary_pipes(pipe, primary_pipes, secondary_pipes);
> +		BIT(get_joiner_primary_pipe(pipe, primary_pipes,
> +					    secondary_pipes, ultrajoiner_used)) |
> +			get_joiner_secondary_pipes(pipe, primary_pipes,
> +						   secondary_pipes, ultrajoiner_used);
>  }
>  
>  static bool hsw_get_pipe_config(struct intel_crtc *crtc,
> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc_regs.h b/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
> index f921ad67b587..016d7ce48215 100644
> --- a/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
> @@ -37,6 +37,9 @@
>  #define  SPLITTER_CONFIGURATION_MASK		REG_GENMASK(26, 25)
>  #define  SPLITTER_CONFIGURATION_2_SEGMENT	REG_FIELD_PREP(SPLITTER_CONFIGURATION_MASK, 0)
>  #define  SPLITTER_CONFIGURATION_4_SEGMENT	REG_FIELD_PREP(SPLITTER_CONFIGURATION_MASK, 1)
> +
> +#define  ULTRA_JOINER_ENABLE			(1 << 23)
> +#define  PRIMARY_ULTRA_JOINER_ENABLE		(1 << 22)
>  #define  UNCOMPRESSED_JOINER_PRIMARY		(1 << 21)
>  #define  UNCOMPRESSED_JOINER_SECONDARY		(1 << 20)
>  
> -- 
> 2.37.3

-- 
Ville Syrjälä
Intel
