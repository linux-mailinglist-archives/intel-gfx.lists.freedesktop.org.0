Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 67A113A4B10
	for <lists+intel-gfx@lfdr.de>; Sat, 12 Jun 2021 01:10:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F274D6F3E4;
	Fri, 11 Jun 2021 23:10:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1BEDD6F3E4
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Jun 2021 23:10:13 +0000 (UTC)
IronPort-SDR: IRZ6rKQerZUY+9nhyr2cdFoPynaDd1x9JHzn4ntwywPjSC1LTElx3e98qaxauk5MvymFETKnXN
 QWWeDHlPtXdQ==
X-IronPort-AV: E=McAfee;i="6200,9189,10012"; a="202601795"
X-IronPort-AV: E=Sophos;i="5.83,267,1616482800"; d="scan'208";a="202601795"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2021 16:10:11 -0700
IronPort-SDR: C15cTJCz+X+XrAhwZKu+1hygzJIQ/DJF+rKCVHqrOfF4xFrHMYiCrPIER7M2pJReAycXDq0NMz
 aESVyExQszPw==
X-IronPort-AV: E=Sophos;i="5.83,267,1616482800"; d="scan'208";a="449268718"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO labuser-Z97X-UD5H)
 ([10.165.21.211])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2021 16:10:10 -0700
Date: Fri, 11 Jun 2021 16:18:51 -0700
From: "Navare, Manasi" <manasi.d.navare@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20210611231846.GA12407@labuser-Z97X-UD5H>
References: <20210610090528.20511-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210610090528.20511-1-jani.nikula@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/dsc: abstract helpers to get
 bigjoiner primary/secondary crtc
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jun 10, 2021 at 12:05:28PM +0300, Jani Nikula wrote:
> Add a single point of truth for figuring out the primary/secondary crtc
> for bigjoiner instead of duplicating the magic pipe +/- 1 in multiple
> places.
> 
> Also fix the pipe validity checks to properly take non-contiguous pipes
> into account. The current checks may theoretically overflow
> i915->pipe_to_crtc_mapping[pipe], albeit with a warning, due to fused
> off pipes, as INTEL_NUM_PIPES() returns the actual number of pipes on
> the platform, and the check is for INTEL_NUM_PIPES() == pipe + 1.
> 
> Prefer primary/secondary terminology going forward.
> 
> v2:
> - Improved abstractions for pipe validity etc.
> 
> Fixes: 8a029c113b17 ("drm/i915/dp: Modify VDSC helpers to configure DSC for Bigjoiner slave")
> Fixes: d961eb20adb6 ("drm/i915/bigjoiner: atomic commit changes for uncompressed joiner")
> Cc: Animesh Manna <animesh.manna@intel.com>
> Cc: Manasi Navare <manasi.d.navare@intel.com>
> Cc: Vandita Kulkarni <vandita.kulkarni@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> 
> ---
> 
> Dropped patch 2/2 [1], as the pipes need to be adjacent for big joiner,
> even if pipes have been fused off.
> 
> [1] https://patchwork.freedesktop.org/patch/msgid/20210603122842.22496-2-jani.nikula@intel.com
> ---
>  drivers/gpu/drm/i915/display/intel_display.c  |  7 ++--
>  .../drm/i915/display/intel_display_types.h    |  8 ++++
>  drivers/gpu/drm/i915/display/intel_vdsc.c     | 40 +++++++++++++------
>  drivers/gpu/drm/i915/display/intel_vdsc.h     |  1 +
>  4 files changed, 40 insertions(+), 16 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 362bff9beb5c..3bad4e00f7be 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -9618,7 +9618,6 @@ static int intel_atomic_check_bigjoiner(struct intel_atomic_state *state,
>  					struct intel_crtc_state *old_crtc_state,
>  					struct intel_crtc_state *new_crtc_state)
>  {
> -	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
>  	struct intel_crtc_state *slave_crtc_state, *master_crtc_state;
>  	struct intel_crtc *slave, *master;
>  
> @@ -9634,15 +9633,15 @@ static int intel_atomic_check_bigjoiner(struct intel_atomic_state *state,
>  	if (!new_crtc_state->bigjoiner)
>  		return 0;
>  
> -	if (1 + crtc->pipe >= INTEL_NUM_PIPES(dev_priv)) {
> +	slave = intel_dsc_get_bigjoiner_secondary(crtc);
> +	if (!slave) {
>  		DRM_DEBUG_KMS("[CRTC:%d:%s] Big joiner configuration requires "
>  			      "CRTC + 1 to be used, doesn't exist\n",
>  			      crtc->base.base.id, crtc->base.name);
>  		return -EINVAL;
>  	}
>  
> -	slave = new_crtc_state->bigjoiner_linked_crtc =
> -		intel_get_crtc_for_pipe(dev_priv, crtc->pipe + 1);
> +	new_crtc_state->bigjoiner_linked_crtc = slave;
>  	slave_crtc_state = intel_atomic_get_crtc_state(&state->base, slave);
>  	master = crtc;
>  	if (IS_ERR(slave_crtc_state))
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 15e91a99c8b9..7d64d8487fbe 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1723,6 +1723,14 @@ vlv_pipe_to_channel(enum pipe pipe)
>  	}
>  }
>  
> +static inline bool intel_pipe_valid(struct drm_i915_private *i915, enum pipe pipe)
> +{
> +	return (pipe >= 0 &&
> +		pipe < ARRAY_SIZE(i915->pipe_to_crtc_mapping) &&
> +		INTEL_INFO(i915)->pipe_mask & BIT(pipe) &&
> +		i915->pipe_to_crtc_mapping[pipe]);

So no need to check INTEL_NUM_PIPES as long as the index exists in pipe_to_crtc_mappings correct?

> +}
> +
>  static inline struct intel_crtc *
>  intel_get_first_crtc(struct drm_i915_private *dev_priv)
>  {
> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
> index 7121b66bf96d..85749370508c 100644
> --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
> +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
> @@ -1106,6 +1106,27 @@ static i915_reg_t dss_ctl2_reg(const struct intel_crtc_state *crtc_state)
>  	return is_pipe_dsc(crtc_state) ? ICL_PIPE_DSS_CTL2(pipe) : DSS_CTL2;
>  }
>  
> +static struct intel_crtc *
> +_get_crtc_for_pipe(struct drm_i915_private *i915, enum pipe pipe)
> +{
> +	if (!intel_pipe_valid(i915, pipe))
> +		return NULL;
> +
> +	return intel_get_crtc_for_pipe(i915, pipe);
> +}

Can we not include intel_pipe_valid() check in intel_get_crtc_for_pipe() so that any other function that calls intel_get_crtc_for_pipe() also
validates the pipe ?

Manasi


> +
> +struct intel_crtc *
> +intel_dsc_get_bigjoiner_secondary(const struct intel_crtc *primary_crtc)
> +{
> +	return _get_crtc_for_pipe(to_i915(primary_crtc->base.dev), primary_crtc->pipe + 1);
> +}
> +
> +static struct intel_crtc *
> +intel_dsc_get_bigjoiner_primary(const struct intel_crtc *secondary_crtc)
> +{
> +	return _get_crtc_for_pipe(to_i915(secondary_crtc->base.dev), secondary_crtc->pipe - 1);
> +}
> +
>  void intel_uncompressed_joiner_enable(const struct intel_crtc_state *crtc_state)
>  {
>  	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> @@ -1178,15 +1199,13 @@ void intel_uncompressed_joiner_get_config(struct intel_crtc_state *crtc_state)
>  	dss_ctl1 = intel_de_read(dev_priv, dss_ctl1_reg(crtc_state));
>  	if (dss_ctl1 & UNCOMPRESSED_JOINER_MASTER) {
>  		crtc_state->bigjoiner = true;
> -		if (!WARN_ON(INTEL_NUM_PIPES(dev_priv) == crtc->pipe + 1))
> -			crtc_state->bigjoiner_linked_crtc =
> -				intel_get_crtc_for_pipe(dev_priv, crtc->pipe + 1);
> +		crtc_state->bigjoiner_linked_crtc = intel_dsc_get_bigjoiner_secondary(crtc);
> +		drm_WARN_ON(&dev_priv->drm, !crtc_state->bigjoiner_linked_crtc);
>  	} else if (dss_ctl1 & UNCOMPRESSED_JOINER_SLAVE) {
>  		crtc_state->bigjoiner = true;
>  		crtc_state->bigjoiner_slave = true;
> -		if (!WARN_ON(crtc->pipe == PIPE_A))
> -			crtc_state->bigjoiner_linked_crtc =
> -				intel_get_crtc_for_pipe(dev_priv, crtc->pipe - 1);
> +		crtc_state->bigjoiner_linked_crtc = intel_dsc_get_bigjoiner_primary(crtc);
> +		drm_WARN_ON(&dev_priv->drm, !crtc_state->bigjoiner_linked_crtc);
>  	}
>  }
>  
> @@ -1224,14 +1243,11 @@ void intel_dsc_get_config(struct intel_crtc_state *crtc_state)
>  
>  		if (!(dss_ctl1 & MASTER_BIG_JOINER_ENABLE)) {
>  			crtc_state->bigjoiner_slave = true;
> -			if (!WARN_ON(crtc->pipe == PIPE_A))
> -				crtc_state->bigjoiner_linked_crtc =
> -					intel_get_crtc_for_pipe(dev_priv, crtc->pipe - 1);
> +			crtc_state->bigjoiner_linked_crtc = intel_dsc_get_bigjoiner_primary(crtc);
>  		} else {
> -			if (!WARN_ON(INTEL_NUM_PIPES(dev_priv) == crtc->pipe + 1))
> -				crtc_state->bigjoiner_linked_crtc =
> -					intel_get_crtc_for_pipe(dev_priv, crtc->pipe + 1);
> +			crtc_state->bigjoiner_linked_crtc = intel_dsc_get_bigjoiner_secondary(crtc);
>  		}
> +		drm_WARN_ON(&dev_priv->drm, !crtc_state->bigjoiner_linked_crtc);
>  	}
>  
>  	/* FIXME: add more state readout as needed */
> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.h b/drivers/gpu/drm/i915/display/intel_vdsc.h
> index fe4d45561253..dfb1fd38deb4 100644
> --- a/drivers/gpu/drm/i915/display/intel_vdsc.h
> +++ b/drivers/gpu/drm/i915/display/intel_vdsc.h
> @@ -22,5 +22,6 @@ void intel_uncompressed_joiner_get_config(struct intel_crtc_state *crtc_state);
>  void intel_dsc_get_config(struct intel_crtc_state *crtc_state);
>  enum intel_display_power_domain
>  intel_dsc_power_domain(const struct intel_crtc_state *crtc_state);
> +struct intel_crtc *intel_dsc_get_bigjoiner_secondary(const struct intel_crtc *primary_crtc);
>  
>  #endif /* __INTEL_VDSC_H__ */
> -- 
> 2.20.1
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
