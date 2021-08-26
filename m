Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 62B213F8EC6
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Aug 2021 21:37:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ADA106E8A2;
	Thu, 26 Aug 2021 19:37:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E8DE86E8A2
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Aug 2021 19:37:35 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10088"; a="198065064"
X-IronPort-AV: E=Sophos;i="5.84,354,1620716400"; d="scan'208";a="198065064"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2021 12:37:35 -0700
X-IronPort-AV: E=Sophos;i="5.84,354,1620716400"; d="scan'208";a="508496712"
Received: from fbenmlih-mobile.amr.corp.intel.com (HELO intel.com)
 ([10.255.36.148])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2021 12:37:34 -0700
Date: Thu, 26 Aug 2021 15:37:33 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Message-ID: <YSftfVvZJv55Uptc@intel.com>
References: <cover.1629906431.git.jani.nikula@intel.com>
 <fd8afe4876f0b0762a9c69e01762a8dba31349e5.1629906431.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <fd8afe4876f0b0762a9c69e01762a8dba31349e5.1629906431.git.jani.nikula@intel.com>
Subject: Re: [Intel-gfx] [PATCH 2/5] drm/i915/fdi: move fdi bc bifurcation
 functions to intel_fdi.c
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

On Wed, Aug 25, 2021 at 06:47:49PM +0300, Jani Nikula wrote:
> Move FDI related functions to intel_fdi.c. Don't bother with renaming as
> we'll make the functions static shortly.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 49 --------------------
>  drivers/gpu/drm/i915/display/intel_fdi.c     | 49 ++++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_fdi.h     |  1 +
>  3 files changed, 50 insertions(+), 49 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 3a9afe04ce0a..f62bbff7a6be 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -2010,55 +2010,6 @@ static void ilk_pch_transcoder_set_timings(const struct intel_crtc_state *crtc_s
>  		       intel_de_read(dev_priv, VSYNCSHIFT(cpu_transcoder)));
>  }
>  
> -static void cpt_set_fdi_bc_bifurcation(struct drm_i915_private *dev_priv, bool enable)
> -{
> -	u32 temp;
> -
> -	temp = intel_de_read(dev_priv, SOUTH_CHICKEN1);
> -	if (!!(temp & FDI_BC_BIFURCATION_SELECT) == enable)
> -		return;
> -
> -	drm_WARN_ON(&dev_priv->drm,
> -		    intel_de_read(dev_priv, FDI_RX_CTL(PIPE_B)) &
> -		    FDI_RX_ENABLE);
> -	drm_WARN_ON(&dev_priv->drm,
> -		    intel_de_read(dev_priv, FDI_RX_CTL(PIPE_C)) &
> -		    FDI_RX_ENABLE);
> -
> -	temp &= ~FDI_BC_BIFURCATION_SELECT;
> -	if (enable)
> -		temp |= FDI_BC_BIFURCATION_SELECT;
> -
> -	drm_dbg_kms(&dev_priv->drm, "%sabling fdi C rx\n",
> -		    enable ? "en" : "dis");
> -	intel_de_write(dev_priv, SOUTH_CHICKEN1, temp);
> -	intel_de_posting_read(dev_priv, SOUTH_CHICKEN1);
> -}
> -
> -static void ivb_update_fdi_bc_bifurcation(const struct intel_crtc_state *crtc_state)
> -{
> -	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> -	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
> -
> -	switch (crtc->pipe) {
> -	case PIPE_A:
> -		break;
> -	case PIPE_B:
> -		if (crtc_state->fdi_lanes > 2)
> -			cpt_set_fdi_bc_bifurcation(dev_priv, false);
> -		else
> -			cpt_set_fdi_bc_bifurcation(dev_priv, true);
> -
> -		break;
> -	case PIPE_C:
> -		cpt_set_fdi_bc_bifurcation(dev_priv, true);
> -
> -		break;
> -	default:
> -		BUG();
> -	}
> -}
> -
>  /*
>   * Finds the encoder associated with the given CRTC. This can only be
>   * used when we know that the CRTC isn't feeding multiple encoders!
> diff --git a/drivers/gpu/drm/i915/display/intel_fdi.c b/drivers/gpu/drm/i915/display/intel_fdi.c
> index 88a78dafd54d..f8ffd5c032ae 100644
> --- a/drivers/gpu/drm/i915/display/intel_fdi.c
> +++ b/drivers/gpu/drm/i915/display/intel_fdi.c
> @@ -170,6 +170,55 @@ int ilk_fdi_compute_config(struct intel_crtc *crtc,
>  	return ret;
>  }
>  
> +static void cpt_set_fdi_bc_bifurcation(struct drm_i915_private *dev_priv, bool enable)
> +{
> +	u32 temp;
> +
> +	temp = intel_de_read(dev_priv, SOUTH_CHICKEN1);
> +	if (!!(temp & FDI_BC_BIFURCATION_SELECT) == enable)
> +		return;
> +
> +	drm_WARN_ON(&dev_priv->drm,
> +		    intel_de_read(dev_priv, FDI_RX_CTL(PIPE_B)) &
> +		    FDI_RX_ENABLE);
> +	drm_WARN_ON(&dev_priv->drm,
> +		    intel_de_read(dev_priv, FDI_RX_CTL(PIPE_C)) &
> +		    FDI_RX_ENABLE);
> +
> +	temp &= ~FDI_BC_BIFURCATION_SELECT;
> +	if (enable)
> +		temp |= FDI_BC_BIFURCATION_SELECT;
> +
> +	drm_dbg_kms(&dev_priv->drm, "%sabling fdi C rx\n",
> +		    enable ? "en" : "dis");
> +	intel_de_write(dev_priv, SOUTH_CHICKEN1, temp);
> +	intel_de_posting_read(dev_priv, SOUTH_CHICKEN1);
> +}
> +
> +void ivb_update_fdi_bc_bifurcation(const struct intel_crtc_state *crtc_state)
> +{
> +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> +	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
> +
> +	switch (crtc->pipe) {
> +	case PIPE_A:
> +		break;
> +	case PIPE_B:
> +		if (crtc_state->fdi_lanes > 2)
> +			cpt_set_fdi_bc_bifurcation(dev_priv, false);
> +		else
> +			cpt_set_fdi_bc_bifurcation(dev_priv, true);
> +
> +		break;
> +	case PIPE_C:
> +		cpt_set_fdi_bc_bifurcation(dev_priv, true);
> +
> +		break;
> +	default:
> +		BUG();
> +	}
> +}
> +
>  void intel_fdi_normal_train(struct intel_crtc *crtc)
>  {
>  	struct drm_device *dev = crtc->base.dev;
> diff --git a/drivers/gpu/drm/i915/display/intel_fdi.h b/drivers/gpu/drm/i915/display/intel_fdi.h
> index cda9a32c25ba..135802e4da68 100644
> --- a/drivers/gpu/drm/i915/display/intel_fdi.h
> +++ b/drivers/gpu/drm/i915/display/intel_fdi.h
> @@ -16,6 +16,7 @@ int intel_fdi_link_freq(struct drm_i915_private *i915,
>  			const struct intel_crtc_state *pipe_config);
>  int ilk_fdi_compute_config(struct intel_crtc *intel_crtc,
>  			   struct intel_crtc_state *pipe_config);
> +void ivb_update_fdi_bc_bifurcation(const struct intel_crtc_state *crtc_state);
>  void intel_fdi_normal_train(struct intel_crtc *crtc);
>  void ilk_fdi_disable(struct intel_crtc *crtc);
>  void ilk_fdi_pll_disable(struct intel_crtc *intel_crtc);
> -- 
> 2.20.1
> 
