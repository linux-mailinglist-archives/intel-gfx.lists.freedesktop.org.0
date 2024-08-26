Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D16B95F0B4
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Aug 2024 14:09:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D352A10E1A2;
	Mon, 26 Aug 2024 12:09:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UOBUDTNC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A56A510E1A2;
 Mon, 26 Aug 2024 12:09:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724674187; x=1756210187;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=LuOLWU+ghzJq/2tYmjLi+3d8uNofg9u37F33w3qNFPc=;
 b=UOBUDTNCKAj7DhOSa0rxvQCGsFjnVkE//hQ7Qf7sBIOMafcZxuwI15Wi
 RHd0aOLPqefEbEZt29ovsYpAwGXDLF7oBOf4xmdEzel6neLfOG0jUU7Qt
 75EjSfNUO1P+jVk8xbjfLXTyw3CFqnmiZGDEFnlJsntJqvovIPqxQ4t2g
 vURKLz5bvQitOa8PQJh4h1DWb+nS8BTUW42lxBc0od34Iau5gko35V2aT
 damrMioj5/iU59WXUzz9fzB7j+X9gG3zSxiBZvz5znA2WhD0oZ99m6AEZ
 tsqIDw+AQ9NJ0aLxNt6n1U8qSR21915M/x5X/V/1yRnh+uiJYOIdvcogs Q==;
X-CSE-ConnectionGUID: 6HtwbleuRoOP4uqzBszSaQ==
X-CSE-MsgGUID: k5J5dwGdRrWQPDdcSHIOpQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11175"; a="23061359"
X-IronPort-AV: E=Sophos;i="6.10,177,1719903600"; d="scan'208";a="23061359"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2024 05:09:33 -0700
X-CSE-ConnectionGUID: BYNfTsgkTJ+ZACaSCBDkUQ==
X-CSE-MsgGUID: j3xYC9xxRSSXLzdIOyAP9A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,177,1719903600"; d="scan'208";a="67417934"
Received: from sschumil-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.113])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2024 05:09:30 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: suraj.kandpal@intel.com, ville.syrjala@linux.intel.com
Subject: Re: [PATCH 06/12] drm/i915/vdsc: Move all dss stuff in dss files
In-Reply-To: <20240826111527.1113622-7-ankit.k.nautiyal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240826111527.1113622-1-ankit.k.nautiyal@intel.com>
 <20240826111527.1113622-7-ankit.k.nautiyal@intel.com>
Date: Mon, 26 Aug 2024 15:09:17 +0300
Message-ID: <87seur1o5u.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Mon, 26 Aug 2024, Ankit Nautiyal <ankit.k.nautiyal@intel.com> wrote:
> Move helpers to configure dss for compressed and uncompressed joiner to
> intel_dss files. While at it, replace struct drm_i915_private to struct
> intel_display wherever possible.
>
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c |  3 +-
>  drivers/gpu/drm/i915/display/intel_dss.c     | 78 ++++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_dss.h     |  5 ++
>  drivers/gpu/drm/i915/display/intel_vdsc.c    | 67 ++---------------
>  drivers/gpu/drm/i915/display/intel_vdsc.h    |  2 +-
>  5 files changed, 92 insertions(+), 63 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 8bce46bb7f3f..05ffd28cc16a 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -87,6 +87,7 @@
>  #include "intel_drrs.h"
>  #include "intel_dsb.h"
>  #include "intel_dsi.h"
> +#include "intel_dss.h"
>  #include "intel_dss_regs.h"
>  #include "intel_dvo.h"
>  #include "intel_fb.h"
> @@ -1711,7 +1712,7 @@ static void hsw_crtc_enable(struct intel_atomic_state *state,
>  		intel_dsc_enable(pipe_crtc_state);
>  
>  		if (DISPLAY_VER(dev_priv) >= 13)
> -			intel_uncompressed_joiner_enable(pipe_crtc_state);
> +			intel_dss_enable_uncompressed_joiner(pipe_crtc_state);
>  
>  		intel_set_pipe_src_size(pipe_crtc_state);
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_dss.c b/drivers/gpu/drm/i915/display/intel_dss.c
> index f44dcac84aa4..8b2841689bfb 100644
> --- a/drivers/gpu/drm/i915/display/intel_dss.c
> +++ b/drivers/gpu/drm/i915/display/intel_dss.c
> @@ -6,10 +6,12 @@
>  #include "i915_drv.h"
>  #include "i915_reg_defs.h"
>  #include "intel_de.h"
> +#include "intel_display_limits.h"
>  #include "intel_display_types.h"
>  #include "intel_dsi.h"
>  #include "intel_dss.h"
>  #include "intel_dss_regs.h"
> +#include "intel_vdsc.h"
>  
>  /*
>   * Splitter enable for eDP MSO is limited to certain pipes, on certain
> @@ -136,3 +138,79 @@ void intel_dss_configure_dsi_dual_link_mode(struct intel_encoder *encoder,
>  
>  	intel_de_write(display, dss_ctl1_reg, dss_ctl1);
>  }
> +
> +static i915_reg_t dss_ctl1_reg(struct intel_crtc *crtc, enum transcoder cpu_transcoder)
> +{
> +	return intel_dsc_is_dsc_pipe(crtc, cpu_transcoder) ?
> +		ICL_PIPE_DSS_CTL1(crtc->pipe) : DSS_CTL1;
> +}
> +
> +static i915_reg_t dss_ctl2_reg(struct intel_crtc *crtc, enum transcoder cpu_transcoder)
> +{
> +	return intel_dsc_is_dsc_pipe(crtc, cpu_transcoder) ?
> +		ICL_PIPE_DSS_CTL2(crtc->pipe) : DSS_CTL2;
> +}
> +
> +void intel_dss_reset(const struct intel_crtc_state *old_crtc_state)
> +{
> +	struct intel_display *display = to_intel_display(old_crtc_state);
> +	struct intel_crtc *crtc = to_intel_crtc(old_crtc_state->uapi.crtc);
> +
> +	intel_de_write(display, dss_ctl1_reg(crtc, old_crtc_state->cpu_transcoder), 0);
> +	intel_de_write(display, dss_ctl2_reg(crtc, old_crtc_state->cpu_transcoder), 0);
> +}
> +
> +void intel_dss_enable_uncompressed_joiner(const struct intel_crtc_state *crtc_state)
> +{
> +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> +	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
> +	u32 dss_ctl1_val = 0;
> +
> +	if (crtc_state->joiner_pipes && !crtc_state->dsc.compression_enable) {
> +		if (intel_crtc_is_joiner_secondary(crtc_state))
> +			dss_ctl1_val |= UNCOMPRESSED_JOINER_SECONDARY;
> +		else
> +			dss_ctl1_val |= UNCOMPRESSED_JOINER_PRIMARY;
> +
> +		intel_de_write(dev_priv, dss_ctl1_reg(crtc, crtc_state->cpu_transcoder), dss_ctl1_val);
> +	}
> +}
> +
> +void intel_dss_enable_compressed_joiner(const struct intel_crtc_state *crtc_state,
> +					int vdsc_instances_per_pipe)
> +{
> +	struct intel_display *display = to_intel_display(crtc_state);
> +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> +	u32 dss_ctl1_val = 0;
> +	u32 dss_ctl2_val = 0;
> +
> +	dss_ctl2_val |= LEFT_BRANCH_VDSC_ENABLE;
> +	if (vdsc_instances_per_pipe > 1) {
> +		dss_ctl2_val |= RIGHT_BRANCH_VDSC_ENABLE;
> +		dss_ctl1_val |= JOINER_ENABLE;
> +	}
> +	if (crtc_state->joiner_pipes) {
> +		dss_ctl1_val |= BIG_JOINER_ENABLE;
> +		if (!intel_crtc_is_joiner_secondary(crtc_state))
> +			dss_ctl1_val |= PRIMARY_BIG_JOINER_ENABLE;
> +	}
> +	intel_de_write(display, dss_ctl1_reg(crtc, crtc_state->cpu_transcoder), dss_ctl1_val);
> +	intel_de_write(display, dss_ctl2_reg(crtc, crtc_state->cpu_transcoder), dss_ctl2_val);
> +}
> +
> +void intel_dss_get_dsc_config(struct intel_crtc_state *crtc_state)
> +{
> +	struct intel_display *display = to_intel_display(crtc_state);
> +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> +	u32 dss_ctl1, dss_ctl2;
> +
> +	dss_ctl1 = intel_de_read(display, dss_ctl1_reg(crtc, crtc_state->cpu_transcoder));
> +	dss_ctl2 = intel_de_read(display, dss_ctl2_reg(crtc, crtc_state->cpu_transcoder));
> +
> +	crtc_state->dsc.compression_enable = dss_ctl2 & LEFT_BRANCH_VDSC_ENABLE;
> +	if (!crtc_state->dsc.compression_enable)
> +		return;
> +
> +	crtc_state->dsc.dsc_split = (dss_ctl2 & RIGHT_BRANCH_VDSC_ENABLE) &&
> +				    (dss_ctl1 & JOINER_ENABLE);
> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_dss.h b/drivers/gpu/drm/i915/display/intel_dss.h
> index 0c5d652d46f5..2dadbe76cbf9 100644
> --- a/drivers/gpu/drm/i915/display/intel_dss.h
> +++ b/drivers/gpu/drm/i915/display/intel_dss.h
> @@ -19,6 +19,11 @@ void intel_dss_configure_mso(const struct intel_crtc_state *crtc_state);
>  void intel_dss_configure_dsi_dual_link_mode(struct intel_encoder *encoder,
>  					    const struct intel_crtc_state *pipe_config,
>  					    u8 dual_link, u8 pixel_overlap);
> +void intel_dss_reset(const struct intel_crtc_state *old_crtc_state);
> +void intel_dss_enable_uncompressed_joiner(const struct intel_crtc_state *crtc_state);
> +void intel_dss_enable_compressed_joiner(const struct intel_crtc_state *crtc_state,
> +					int vdsc_instances_per_pipe);
> +void intel_dss_get_dsc_config(struct intel_crtc_state *crtc_state);

Nitpick, intel_dss_dsc_get_config()

>  
>  #endif /* __INTEL_DSS_H__ */
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
> index 6d60b72a9dfb..c278290dcfb9 100644
> --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
> +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
> @@ -15,7 +15,7 @@
>  #include "intel_de.h"
>  #include "intel_display_types.h"
>  #include "intel_dsi.h"
> -#include "intel_dss_regs.h"
> +#include "intel_dss.h"
>  #include "intel_qp_tables.h"
>  #include "intel_vdsc.h"
>  #include "intel_vdsc_regs.h"
> @@ -35,7 +35,7 @@ bool intel_dsc_source_support(const struct intel_crtc_state *crtc_state)
>  	return true;
>  }
>  
> -static bool intel_dsc_is_dsc_pipe(struct intel_crtc *crtc, enum transcoder cpu_transcoder)
> +bool intel_dsc_is_dsc_pipe(struct intel_crtc *crtc, enum transcoder cpu_transcoder)
>  {
>  	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
>  
> @@ -724,72 +724,23 @@ void intel_dsc_dp_pps_write(struct intel_encoder *encoder,
>  				  sizeof(dp_dsc_pps_sdp));
>  }
>  
> -static i915_reg_t dss_ctl1_reg(struct intel_crtc *crtc, enum transcoder cpu_transcoder)
> -{
> -	return intel_dsc_is_dsc_pipe(crtc, cpu_transcoder) ?
> -		ICL_PIPE_DSS_CTL1(crtc->pipe) : DSS_CTL1;
> -}
> -
> -static i915_reg_t dss_ctl2_reg(struct intel_crtc *crtc, enum transcoder cpu_transcoder)
> -{
> -	return intel_dsc_is_dsc_pipe(crtc, cpu_transcoder) ?
> -		ICL_PIPE_DSS_CTL2(crtc->pipe) : DSS_CTL2;
> -}
> -
> -void intel_uncompressed_joiner_enable(const struct intel_crtc_state *crtc_state)
> -{
> -	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> -	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
> -	u32 dss_ctl1_val = 0;
> -
> -	if (crtc_state->joiner_pipes && !crtc_state->dsc.compression_enable) {
> -		if (intel_crtc_is_joiner_secondary(crtc_state))
> -			dss_ctl1_val |= UNCOMPRESSED_JOINER_SECONDARY;
> -		else
> -			dss_ctl1_val |= UNCOMPRESSED_JOINER_PRIMARY;
> -
> -		intel_de_write(dev_priv, dss_ctl1_reg(crtc, crtc_state->cpu_transcoder), dss_ctl1_val);
> -	}
> -}
> -
>  void intel_dsc_enable(const struct intel_crtc_state *crtc_state)
>  {
> -	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> -	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
> -	u32 dss_ctl1_val = 0;
> -	u32 dss_ctl2_val = 0;
>  	int vdsc_instances_per_pipe = intel_dsc_get_vdsc_per_pipe(crtc_state);
>  
>  	if (!crtc_state->dsc.compression_enable)
>  		return;
>  
>  	intel_dsc_pps_configure(crtc_state);
> -
> -	dss_ctl2_val |= LEFT_BRANCH_VDSC_ENABLE;
> -	if (vdsc_instances_per_pipe > 1) {
> -		dss_ctl2_val |= RIGHT_BRANCH_VDSC_ENABLE;
> -		dss_ctl1_val |= JOINER_ENABLE;
> -	}
> -	if (crtc_state->joiner_pipes) {
> -		dss_ctl1_val |= BIG_JOINER_ENABLE;
> -		if (!intel_crtc_is_joiner_secondary(crtc_state))
> -			dss_ctl1_val |= PRIMARY_BIG_JOINER_ENABLE;
> -	}
> -	intel_de_write(dev_priv, dss_ctl1_reg(crtc, crtc_state->cpu_transcoder), dss_ctl1_val);
> -	intel_de_write(dev_priv, dss_ctl2_reg(crtc, crtc_state->cpu_transcoder), dss_ctl2_val);
> +	intel_dss_enable_compressed_joiner(crtc_state, vdsc_instances_per_pipe);
>  }
>  
>  void intel_dsc_disable(const struct intel_crtc_state *old_crtc_state)
>  {
> -	struct intel_crtc *crtc = to_intel_crtc(old_crtc_state->uapi.crtc);
> -	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
> -
>  	/* Disable only if either of them is enabled */
>  	if (old_crtc_state->dsc.compression_enable ||
> -	    old_crtc_state->joiner_pipes) {
> -		intel_de_write(dev_priv, dss_ctl1_reg(crtc, old_crtc_state->cpu_transcoder), 0);
> -		intel_de_write(dev_priv, dss_ctl2_reg(crtc, old_crtc_state->cpu_transcoder), 0);
> -	}
> +	    old_crtc_state->joiner_pipes)
> +		intel_dss_reset(old_crtc_state);
>  }
>  
>  static u32 intel_dsc_pps_read(struct intel_crtc_state *crtc_state, int pps,
> @@ -946,7 +897,6 @@ void intel_dsc_get_config(struct intel_crtc_state *crtc_state)
>  	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
>  	enum intel_display_power_domain power_domain;
>  	intel_wakeref_t wakeref;
> -	u32 dss_ctl1, dss_ctl2;
>  
>  	if (!intel_dsc_source_support(crtc_state))
>  		return;
> @@ -957,16 +907,11 @@ void intel_dsc_get_config(struct intel_crtc_state *crtc_state)
>  	if (!wakeref)
>  		return;
>  
> -	dss_ctl1 = intel_de_read(dev_priv, dss_ctl1_reg(crtc, cpu_transcoder));
> -	dss_ctl2 = intel_de_read(dev_priv, dss_ctl2_reg(crtc, cpu_transcoder));
> +	intel_dss_get_dsc_config(crtc_state);
>  
> -	crtc_state->dsc.compression_enable = dss_ctl2 & LEFT_BRANCH_VDSC_ENABLE;
>  	if (!crtc_state->dsc.compression_enable)
>  		goto out;
>  
> -	crtc_state->dsc.dsc_split = (dss_ctl2 & RIGHT_BRANCH_VDSC_ENABLE) &&
> -		(dss_ctl1 & JOINER_ENABLE);
> -
>  	intel_dsc_get_pps_config(crtc_state);
>  out:
>  	intel_display_power_put(dev_priv, power_domain, wakeref);
> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.h b/drivers/gpu/drm/i915/display/intel_vdsc.h
> index 290b2e9b3482..345956d0c77e 100644
> --- a/drivers/gpu/drm/i915/display/intel_vdsc.h
> +++ b/drivers/gpu/drm/i915/display/intel_vdsc.h
> @@ -16,7 +16,6 @@ struct intel_crtc_state;
>  struct intel_encoder;
>  
>  bool intel_dsc_source_support(const struct intel_crtc_state *crtc_state);
> -void intel_uncompressed_joiner_enable(const struct intel_crtc_state *crtc_state);
>  void intel_dsc_enable(const struct intel_crtc_state *crtc_state);
>  void intel_dsc_disable(const struct intel_crtc_state *crtc_state);
>  int intel_dsc_compute_params(struct intel_crtc_state *pipe_config);
> @@ -31,5 +30,6 @@ void intel_dsc_dp_pps_write(struct intel_encoder *encoder,
>  			    const struct intel_crtc_state *crtc_state);
>  void intel_vdsc_state_dump(struct drm_printer *p, int indent,
>  			   const struct intel_crtc_state *crtc_state);
> +bool intel_dsc_is_dsc_pipe(struct intel_crtc *crtc, enum transcoder cpu_transcoder);
>  
>  #endif /* __INTEL_VDSC_H__ */

-- 
Jani Nikula, Intel
