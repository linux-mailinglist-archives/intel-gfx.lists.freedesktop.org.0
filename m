Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C37A7EC50B
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Nov 2023 15:23:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3368510E010;
	Wed, 15 Nov 2023 14:23:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DAC7110E010
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Nov 2023 14:23:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700058195; x=1731594195;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=k9p+FbveJS0qhUrvFW8eQYdN+EaTLYDTTPfVpSIBNos=;
 b=H7SUPYK1m0Zb5MVNN+QDKe72K8WnieiV097iZPzCyCuU32S4s6eaYpqv
 qRmXLsd1vOamcusHUYbfUOBe1ygILMvWBUQK3lvvB7w7a9Uc6t5fDtlJ7
 rbUqB5CqU44qw1lyl5qM2z0kgNTfoXDyTG5QtP8fD2HcWAvHu5Cf/w9eL
 vcM2zY6D+/y1fRzaVz0Xym3RaclU0Px+QUey32FjDOXFBN5DTGz7FRVdV
 lhgdB1oqgfn5xbip35jlddKMIFNFv5hQn6tQiMSy7c4MVahXkQReZZXEr
 e2eGXgnovxhrBoi+AszZKY1NxDFxzTSaexuoHwNeyOswxHJhheK8e9eSp Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10895"; a="394802209"
X-IronPort-AV: E=Sophos;i="6.03,305,1694761200"; d="scan'208";a="394802209"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Nov 2023 06:23:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10895"; a="855651525"
X-IronPort-AV: E=Sophos;i="6.03,305,1694761200"; d="scan'208";a="855651525"
Received: from aklett-mobl4.ger.corp.intel.com (HELO localhost)
 ([10.252.38.156])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Nov 2023 06:23:12 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20231115134326.3794326-3-mitulkumar.ajitkumar.golani@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20231115134326.3794326-1-mitulkumar.ajitkumar.golani@intel.com>
 <20231115134326.3794326-3-mitulkumar.ajitkumar.golani@intel.com>
Date: Wed, 15 Nov 2023 16:23:10 +0200
Message-ID: <877cmjqenl.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915: Add Enable/Disable for CMRR
 based on VRR state
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
Cc: ville.syrjala@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 15 Nov 2023, Mitul Golani <mitulkumar.ajitkumar.golani@intel.com> wrote:
> Add CMRR/Fixed Average Vtotal mode enable and disable
> functions based on change in VRR mode of operation.
> When Adaptive Sync Vtotal is enabled, Fixed Average Vtotal
> mode is disabled and vice versa. With this commit setting
> the stage for subsequent CMRR enablement.
>

Where's the patch changelog?

> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> ---
>  .../drm/i915/display/intel_crtc_state_dump.c  |  4 ++-
>  drivers/gpu/drm/i915/display/intel_display.c  | 27 +++++++++++++++---
>  drivers/gpu/drm/i915/display/intel_vrr.c      | 28 +++++++++++++------
>  3 files changed, 46 insertions(+), 13 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
> index 2d15e82c0b3d..908a4c4ccb00 100644
> --- a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
> +++ b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
> @@ -299,7 +299,9 @@ void intel_crtc_state_dump(const struct intel_crtc_state *pipe_config,
>  		intel_dump_buffer(i915, "ELD: ", pipe_config->eld,
>  				  drm_eld_size(pipe_config->eld));
>  
> -	drm_dbg_kms(&i915->drm, "vrr: %s, vmin: %d, vmax: %d, pipeline full: %d, guardband: %d flipline: %d, vmin vblank: %d, vmax vblank: %d\n",
> +	drm_dbg_kms(&i915->drm,
> +		    "cmrr: %s, vrr: %s, vmin: %d, vmax: %d, pipeline full: %d, guardband: %d, flipline: %d, vmin vblank: %d, vmax vblank: %d\n",
> +		    str_yes_no(pipe_config->cmrr.enable),
>  		    str_yes_no(pipe_config->vrr.enable),
>  		    pipe_config->vrr.vmin, pipe_config->vrr.vmax,
>  		    pipe_config->vrr.pipeline_full, pipe_config->vrr.guardband,
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index f99d2de840bc..ae7cc4eca064 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -937,6 +937,15 @@ static bool vrr_enabling(const struct intel_crtc_state *old_crtc_state,
>  		  vrr_params_changed(old_crtc_state, new_crtc_state)));
>  }
>  
> +static bool cmrr_enabling(const struct intel_crtc_state *old_crtc_state,
> +			  const struct intel_crtc_state *new_crtc_state)
> +{
> +	if (!new_crtc_state->hw.active)
> +		return false;
> +
> +	return is_enabling(cmrr.enable, old_crtc_state, new_crtc_state);
> +}
> +
>  static bool vrr_disabling(const struct intel_crtc_state *old_crtc_state,
>  			  const struct intel_crtc_state *new_crtc_state)
>  {
> @@ -946,6 +955,12 @@ static bool vrr_disabling(const struct intel_crtc_state *old_crtc_state,
>  		  vrr_params_changed(old_crtc_state, new_crtc_state)));
>  }
>  
> +static bool cmrr_disabling(const struct intel_crtc_state *old_crtc_state,
> +			   const struct intel_crtc_state *new_crtc_state)
> +{

And the hw.active check here?

> +	return is_disabling(cmrr.enable, old_crtc_state, new_crtc_state);
> +}
> +
>  #undef is_disabling
>  #undef is_enabling
>  
> @@ -1064,7 +1079,8 @@ static void intel_pre_plane_update(struct intel_atomic_state *state,
>  		intel_atomic_get_new_crtc_state(state, crtc);
>  	enum pipe pipe = crtc->pipe;
>  
> -	if (vrr_disabling(old_crtc_state, new_crtc_state)) {
> +	if (vrr_disabling(old_crtc_state, new_crtc_state) ||
> +	    cmrr_disabling(old_crtc_state, new_crtc_state)) {
>  		intel_vrr_disable(old_crtc_state);
>  		intel_crtc_update_active_timings(old_crtc_state, false);
>  	}
> @@ -6754,7 +6770,8 @@ static void commit_pipe_post_planes(struct intel_atomic_state *state,
>  	    !intel_crtc_needs_modeset(new_crtc_state))
>  		skl_detach_scalers(new_crtc_state);
>  
> -	if (vrr_enabling(old_crtc_state, new_crtc_state))
> +	if (vrr_enabling(old_crtc_state, new_crtc_state) ||
> +	    cmrr_enabling(old_crtc_state, new_crtc_state))
>  		intel_vrr_enable(new_crtc_state);
>  }
>  
> @@ -6851,9 +6868,11 @@ static void intel_update_crtc(struct intel_atomic_state *state,
>  	 * FIXME Should be synchronized with the start of vblank somehow...
>  	 */
>  	if (vrr_enabling(old_crtc_state, new_crtc_state) ||
> -	    new_crtc_state->update_m_n || new_crtc_state->update_lrr)
> +	    new_crtc_state->update_m_n || new_crtc_state->update_lrr ||
> +	    cmrr_enabling(old_crtc_state, new_crtc_state))
>  		intel_crtc_update_active_timings(new_crtc_state,
> -						 new_crtc_state->vrr.enable);
> +						 new_crtc_state->vrr.enable ||
> +						 new_crtc_state->cmrr.enable);
>  
>  	/*
>  	 * We usually enable FIFO underrun interrupts as part of the
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index c889b0aa69a4..6da14c18a3e3 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -224,7 +224,7 @@ void intel_vrr_send_push(const struct intel_crtc_state *crtc_state)
>  	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
>  	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
>  
> -	if (!crtc_state->vrr.enable)
> +	if (!(crtc_state->vrr.enable || crtc_state->cmrr.enable))
>  		return;
>  
>  	intel_de_write(dev_priv, TRANS_PUSH(cpu_transcoder),
> @@ -237,7 +237,7 @@ bool intel_vrr_is_push_sent(const struct intel_crtc_state *crtc_state)
>  	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
>  	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
>  
> -	if (!crtc_state->vrr.enable)
> +	if (!(crtc_state->vrr.enable || crtc_state->cmrr.enable))
>  		return false;
>  
>  	return intel_de_read(dev_priv, TRANS_PUSH(cpu_transcoder)) & TRANS_PUSH_SEND;
> @@ -248,12 +248,24 @@ void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
>  	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
>  	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
>  
> -	if (!crtc_state->vrr.enable)
> +	if (drm_WARN_ON(&dev_priv->drm, crtc_state->vrr.enable &&
> +			crtc_state->cmrr.enable))
>  		return;
>  
> -	intel_de_write(dev_priv, TRANS_PUSH(cpu_transcoder), TRANS_PUSH_EN);
> -	intel_de_write(dev_priv, TRANS_VRR_CTL(cpu_transcoder),
> -		       VRR_CTL_VRR_ENABLE | trans_vrr_ctl(crtc_state));
> +	if (!crtc_state->vrr.enable && crtc_state->cmrr.enable) {

You already checked that vrr.enable and cmrr.enable can't both be true
at the same time. Now you only check vrr.enable here.

Yeah, the conditions are bogus. Please don't rush it.

> +		intel_de_write(dev_priv,
> +			       TRANS_PUSH(cpu_transcoder), TRANS_PUSH_EN);
> +		intel_de_write(dev_priv, TRANS_VRR_CTL(cpu_transcoder),
> +			       VRR_CTL_VRR_ENABLE | trans_vrr_ctl(crtc_state));
> +	}
> +
> +	if (!crtc_state->vrr.enable && crtc_state->cmrr.enable) {

Ditto here.

> +		intel_de_write(dev_priv,
> +			       TRANS_PUSH(cpu_transcoder), TRANS_PUSH_EN);
> +		intel_de_write(dev_priv, TRANS_VRR_CTL(cpu_transcoder),
> +			       VRR_CTL_VRR_ENABLE | VRR_CTL_CMRR_ENABLE |
> +			       trans_vrr_ctl(crtc_state));
> +	}
>  }
>  
>  void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state)
> @@ -262,7 +274,7 @@ void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state)
>  	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
>  	enum transcoder cpu_transcoder = old_crtc_state->cpu_transcoder;
>  
> -	if (!old_crtc_state->vrr.enable)
> +	if (!(old_crtc_state->vrr.enable || old_crtc_state->cmrr.enable))
>  		return;
>  
>  	intel_de_write(dev_priv, TRANS_VRR_CTL(cpu_transcoder),
> @@ -305,6 +317,6 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
>  		crtc_state->vrr.vmin = intel_de_read(dev_priv, TRANS_VRR_VMIN(cpu_transcoder)) + 1;
>  	}
>  
> -	if (crtc_state->vrr.enable)
> +	if (crtc_state->vrr.enable || crtc_state->cmrr.enable)
>  		crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
>  }

-- 
Jani Nikula, Intel
