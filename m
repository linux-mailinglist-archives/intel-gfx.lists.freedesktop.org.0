Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C39211DD1D
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Dec 2019 05:22:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 761DF6E26C;
	Fri, 13 Dec 2019 04:22:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 60D026E26C
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Dec 2019 04:22:47 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Dec 2019 20:22:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,308,1571727600"; d="scan'208";a="296810776"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.64])
 by orsmga001.jf.intel.com with ESMTP; 12 Dec 2019 20:22:21 -0800
Date: Thu, 12 Dec 2019 20:22:21 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Message-ID: <20191213042221.GX85422@mdroper-desk1.amr.corp.intel.com>
References: <20191129133709.24397-1-stanislav.lisovskiy@intel.com>
 <20191129133709.24397-3-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191129133709.24397-3-stanislav.lisovskiy@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
Subject: Re: [Intel-gfx] [PATCH v7 2/4] drm/i915: Move dbuf slice update to
 proper place
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

On Fri, Nov 29, 2019 at 03:37:07PM +0200, Stanislav Lisovskiy wrote:
> Current DBuf slices update wasn't done in proper
> plane, especially its "post" part, which should
> disable those only once vblank had passed and
> all other changes are committed.
> 
> v2: Fix to use dev_priv and intel_atomic_state
>     instead of skl_ddb_values
>     (to be nuked in Villes patch)
> 
> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 38 ++++++++++++++------
>  1 file changed, 28 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index dda43e3dcdbf..db0830745f25 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -14637,6 +14637,28 @@ static void intel_update_trans_port_sync_crtcs(struct intel_crtc *crtc,
>  				       state);
>  }
>  
> +static void icl_dbuf_slice_pre_update(struct intel_atomic_state *state)
> +{
> +	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
> +	u8 hw_enabled_slices = dev_priv->enabled_slices;
> +	u8 required_slices = state->enabled_slices;
> +
> +	/* If 2nd DBuf slice required, enable it here */
> +	if (INTEL_GEN(dev_priv) >= 11 && required_slices > hw_enabled_slices)
> +		icl_dbuf_slices_update(dev_priv, required_slices);
> +}
> +
> +static void icl_dbuf_slice_post_update(struct intel_atomic_state *state)
> +{
> +	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
> +	u8 hw_enabled_slices = dev_priv->enabled_slices;
> +	u8 required_slices = state->enabled_slices;
> +
> +	/* If 2nd DBuf slice is no more required disable it */
> +	if (INTEL_GEN(dev_priv) >= 11 && required_slices < hw_enabled_slices)
> +		icl_dbuf_slices_update(dev_priv, required_slices);
> +}
> +
>  static void skl_commit_modeset_enables(struct intel_atomic_state *state)
>  {
>  	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
> @@ -14645,8 +14667,6 @@ static void skl_commit_modeset_enables(struct intel_atomic_state *state)
>  	unsigned int updated = 0;
>  	bool progress;
>  	int i;
> -	u8 hw_enabled_slices = dev_priv->enabled_slices;
> -	u8 required_slices = state->enabled_slices;
>  	struct skl_ddb_entry entries[I915_MAX_PIPES] = {};
>  
>  	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state, new_crtc_state, i)
> @@ -14654,10 +14674,6 @@ static void skl_commit_modeset_enables(struct intel_atomic_state *state)
>  		if (new_crtc_state->hw.active)
>  			entries[i] = old_crtc_state->wm.skl.ddb;
>  
> -	/* If 2nd DBuf slice required, enable it here */
> -	if (INTEL_GEN(dev_priv) >= 11 && required_slices > hw_enabled_slices)
> -		icl_dbuf_slices_update(dev_priv, required_slices);
> -
>  	/*
>  	 * Whenever the number of active pipes changes, we need to make sure we
>  	 * update the pipes in the right order so that their ddb allocations
> @@ -14714,10 +14730,6 @@ static void skl_commit_modeset_enables(struct intel_atomic_state *state)
>  			progress = true;
>  		}
>  	} while (progress);
> -
> -	/* If 2nd DBuf slice is no more required disable it */
> -	if (INTEL_GEN(dev_priv) >= 11 && required_slices < hw_enabled_slices)
> -		icl_dbuf_slices_update(dev_priv, required_slices);
>  }
>  
>  static void intel_atomic_helper_free_state(struct drm_i915_private *dev_priv)
> @@ -14847,6 +14859,9 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
>  	if (state->modeset)
>  		intel_encoders_update_prepare(state);
>  
> +	/* Enable all new slices, we might need */
> +	icl_dbuf_slice_pre_update(state);
> +
>  	/* Now enable the clocks, plane, pipe, and connectors that we set up. */
>  	dev_priv->display.commit_modeset_enables(state);
>  
> @@ -14906,6 +14921,9 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
>  	if (state->modeset && intel_can_enable_sagv(state))
>  		intel_enable_sagv(dev_priv);
>  
> +	/* Disable all slices, we don't need */
> +	icl_dbuf_slice_post_update(state);
> +
>  	drm_atomic_helper_commit_hw_done(&state->base);
>  
>  	if (state->modeset) {
> -- 
> 2.17.1
> 

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
