Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A8A894EB52D
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Mar 2022 23:23:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CA90210EED9;
	Tue, 29 Mar 2022 21:23:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8A3E810EED9
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Mar 2022 21:23:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648589016; x=1680125016;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=3t8/EThAtg5F1avIDlX/czyDROSc9yc5aQ/l67bmq3E=;
 b=hyblUmR7wxgpDCk0O5hKH3p2sjLsZnnMZ0/z/HjyKisv7TG4JgfDmnGm
 WZHl/NWMVcWwGD3DajT0SqAE6tEz2iE9FB62jXI3rOFzbPdWfrRKs4qSN
 mrnSMc/NmzpOftqPn/yldH/knbjx1WrPRWUlNiRgDK5A1SZJCyro6qNO3
 4tz/RFBn629Wu82AUkOa8r4xE1p61eeXPOLrut9VAOgmSC6HBNlUEQ6Og
 siVsBCqQtl2Fg1vmBFLePBg5Rh9G5dopHuL0KROaaMAUNPeKYBYzHnvNi
 vrQBkYCssgZnIsKrnSTsz7uIONYlGadeMvb4UP1ZRWQeiv90MZo25iw9w w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10301"; a="345815153"
X-IronPort-AV: E=Sophos;i="5.90,220,1643702400"; d="scan'208";a="345815153"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2022 14:23:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,220,1643702400"; d="scan'208";a="585747310"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.61])
 by orsmga001.jf.intel.com with SMTP; 29 Mar 2022 14:23:33 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 30 Mar 2022 00:23:32 +0300
Date: Wed, 30 Mar 2022 00:23:32 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <YkN41DucR8lQk03Z@intel.com>
References: <20220328191617.122838-1-jose.souza@intel.com>
 <20220328191617.122838-3-jose.souza@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220328191617.122838-3-jose.souza@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v3 3/3] drm/i915/display/adlp: Fix
 programing of PIPE_MBUS_DBOX_CTL
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Mar 28, 2022 at 12:16:17PM -0700, José Roberto de Souza wrote:
> PIPE_MBUS_DBOX_CTL was only being programmed when a pipe is being
> enabled but that could potentially cause issues as it could have
> mismatching values while pipes are being enabled.
> 
> So here moving the PIPE_MBUS_DBOX_CTL programming of all pipes to be
> executed before the function that enables all pipes, leaving all pipes
> with a matching A_CREDIT value.
> 
> While at it, also moving it to intel_pm.c as we are trying to reduce
> the gigantic size of it and intel_pm.c have other MBUS programing
> sequences.
> 
> v2:
> - do not program PIPE_MBUS_DBOX_CTL if pipe will not be active or
> when it do not needs modeset
> - remove the checks to wait a vblank
> 
> v3:
> - checking if dbuf state is present in state before using it
> 
> BSpec: 49213
> BSpec: 50343
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 37 +-------------
>  drivers/gpu/drm/i915/intel_pm.c              | 51 ++++++++++++++++++++
>  drivers/gpu/drm/i915/intel_pm.h              |  1 +
>  3 files changed, 53 insertions(+), 36 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 078ada041e1cd..4e8afd94e58d0 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -1824,35 +1824,6 @@ static void glk_pipe_scaler_clock_gating_wa(struct drm_i915_private *dev_priv,
>  	intel_de_write(dev_priv, CLKGATE_DIS_PSL(pipe), val);
>  }
>  
> -static void icl_pipe_mbus_enable(struct intel_crtc *crtc, bool joined_mbus)
> -{
> -	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
> -	enum pipe pipe = crtc->pipe;
> -	u32 val;
> -
> -	val = intel_de_read(dev_priv, PIPE_MBUS_DBOX_CTL(pipe));
> -	val &= ~MBUS_DBOX_A_CREDIT_MASK;
> -	/* Wa_22010947358:adl-p */
> -	if (IS_ALDERLAKE_P(dev_priv))
> -		val |= joined_mbus ? MBUS_DBOX_A_CREDIT(6) : MBUS_DBOX_A_CREDIT(4);
> -	else
> -		val |= MBUS_DBOX_A_CREDIT(2);
> -
> -	val &= ~(MBUS_DBOX_BW_CREDIT_MASK | MBUS_DBOX_B_CREDIT_MASK);
> -	if (IS_ALDERLAKE_P(dev_priv)) {
> -		val |= MBUS_DBOX_BW_CREDIT(2);
> -		val |= MBUS_DBOX_B_CREDIT(8);
> -	} else if (DISPLAY_VER(dev_priv) >= 12) {
> -		val |= MBUS_DBOX_BW_CREDIT(2);
> -		val |= MBUS_DBOX_B_CREDIT(12);
> -	} else {
> -		val |= MBUS_DBOX_BW_CREDIT(1);
> -		val |= MBUS_DBOX_B_CREDIT(8);
> -	}
> -
> -	intel_de_write(dev_priv, PIPE_MBUS_DBOX_CTL(pipe), val);
> -}
> -
>  static void hsw_set_linetime_wm(const struct intel_crtc_state *crtc_state)
>  {
>  	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> @@ -1988,13 +1959,6 @@ static void hsw_crtc_enable(struct intel_atomic_state *state,
>  
>  	intel_initial_watermarks(state, crtc);
>  
> -	if (DISPLAY_VER(dev_priv) >= 11) {
> -		const struct intel_dbuf_state *dbuf_state =
> -				intel_atomic_get_new_dbuf_state(state);
> -
> -		icl_pipe_mbus_enable(crtc, dbuf_state->joined_mbus);
> -	}
> -
>  	if (intel_crtc_is_bigjoiner_slave(new_crtc_state))
>  		intel_crtc_vblank_on(new_crtc_state);
>  
> @@ -8586,6 +8550,7 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
>  	intel_encoders_update_prepare(state);
>  
>  	intel_dbuf_pre_plane_update(state);
> +	intel_mbus_dbox_update(state);
>  
>  	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
>  		if (new_crtc_state->do_async_flip)
> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
> index e60c02d760ffa..8881944c80c5b 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -8258,3 +8258,54 @@ void intel_dbuf_post_plane_update(struct intel_atomic_state *state)
>  	gen9_dbuf_slices_update(dev_priv,
>  				new_dbuf_state->enabled_slices);
>  }
> +
> +void intel_mbus_dbox_update(struct intel_atomic_state *state)
> +{
> +	struct drm_i915_private *i915 = to_i915(state->base.dev);
> +	struct intel_dbuf_state *new_dbuf_state, *old_dbuf_state;
> +	struct intel_crtc_state *new_crtc_state;
> +	struct intel_crtc *crtc;
> +	int i;
> +
> +	if (DISPLAY_VER(i915) < 11 || !state->modeset)
> +		return;

The state->modeset check seems redundant.

> +
> +	new_dbuf_state = intel_atomic_get_dbuf_state(state);

get_new

> +	old_dbuf_state = intel_atomic_get_old_dbuf_state(state);
> +	if (!new_dbuf_state || !old_dbuf_state ||

If you have one you have the other, so no need to check both old and new
presence.

> +	    (new_dbuf_state->joined_mbus == old_dbuf_state->joined_mbus &&
> +	     new_dbuf_state->active_pipes == old_dbuf_state->active_pipes))
> +		return;
> +
> +	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
> +		u32 val;
> +
> +		if (!new_crtc_state->hw.active ||
> +		    !intel_crtc_needs_modeset(new_crtc_state))
> +			continue;
> +
> +		val = intel_de_read(i915, PIPE_MBUS_DBOX_CTL(crtc->pipe));
> +		val &= ~MBUS_DBOX_A_CREDIT_MASK;
> +		/* Wa_22010947358:adl-p */
> +		if (IS_ALDERLAKE_P(i915))
> +			val |= new_dbuf_state->joined_mbus ? MBUS_DBOX_A_CREDIT(6) :
> +							     MBUS_DBOX_A_CREDIT(4);
> +		else
> +			val |= MBUS_DBOX_A_CREDIT(2);
> +
> +		if (IS_ALDERLAKE_P(i915)) {
> +			val |= MBUS_DBOX_BW_CREDIT(2);
> +			val |= MBUS_DBOX_B_CREDIT(8);
> +		} else if (DISPLAY_VER(i915) >= 12) {
> +			val &= ~(MBUS_DBOX_BW_CREDIT_MASK | MBUS_DBOX_B_CREDIT_MASK);
> +			val |= MBUS_DBOX_BW_CREDIT(2);
> +			val |= MBUS_DBOX_B_CREDIT(12);
> +		} else {
> +			val &= ~(MBUS_DBOX_BW_CREDIT_MASK | MBUS_DBOX_B_CREDIT_MASK);
> +			val |= MBUS_DBOX_BW_CREDIT(1);
> +			val |= MBUS_DBOX_B_CREDIT(8);
> +		}
> +
> +		intel_de_write(i915, PIPE_MBUS_DBOX_CTL(crtc->pipe), val);
> +	}
> +}
> diff --git a/drivers/gpu/drm/i915/intel_pm.h b/drivers/gpu/drm/i915/intel_pm.h
> index 51705151b842f..50604cf7398c4 100644
> --- a/drivers/gpu/drm/i915/intel_pm.h
> +++ b/drivers/gpu/drm/i915/intel_pm.h
> @@ -94,5 +94,6 @@ intel_atomic_get_dbuf_state(struct intel_atomic_state *state);
>  int intel_dbuf_init(struct drm_i915_private *dev_priv);
>  void intel_dbuf_pre_plane_update(struct intel_atomic_state *state);
>  void intel_dbuf_post_plane_update(struct intel_atomic_state *state);
> +void intel_mbus_dbox_update(struct intel_atomic_state *state);
>  
>  #endif /* __INTEL_PM_H__ */
> -- 
> 2.35.1

-- 
Ville Syrjälä
Intel
