Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6367A4DE384
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Mar 2022 22:28:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3FA1010E146;
	Fri, 18 Mar 2022 21:28:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A23D410E146
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Mar 2022 21:28:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647638887; x=1679174887;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=mzMqS0J/FtjKF/J41O8r7ND0nW80YeqlukINDijTvag=;
 b=OJl/1iGQvayO8hOgvIldDFCjnlLIA3oNmPCSmr4+QSkiTgxzuwsIgLlH
 2yeN+1yoxVXNz4cKbCYVltQavRT06lXyqwX1FBrsR+OZFcwMzkJ+BQeN3
 MDBMuLgIt8aw00YC1xJ4kg/IvVKLeyFTOw/AHf8rLJAho6sjoaLBHthaS
 EyTfXw4RdDg3FspA6U0gcUIei3otHX1hXxZCnnakMc46F2CV+MLccYyzX
 q/SQxVmPu0VoWqtlaw1HcZgX2139I2+YVfsK6locCOSx/GG3NcstYmFqX
 LVTIiIDF99epGetyiQgwMJPykd5xdJtSmQUMl1PUuEuRiolmFSDfgNPR/ g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10290"; a="237840478"
X-IronPort-AV: E=Sophos;i="5.90,192,1643702400"; d="scan'208";a="237840478"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2022 14:28:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,192,1643702400"; d="scan'208";a="514092222"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by orsmga002.jf.intel.com with SMTP; 18 Mar 2022 14:28:04 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 18 Mar 2022 23:28:03 +0200
Date: Fri, 18 Mar 2022 23:28:03 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <YjT5Y9tSXHubPURH@intel.com>
References: <20220318195522.456180-1-jose.souza@intel.com>
 <20220318195522.456180-3-jose.souza@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220318195522.456180-3-jose.souza@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915/display/adlp: Fix programing
 of PIPE_MBUS_DBOX_CTL
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

On Fri, Mar 18, 2022 at 12:55:22PM -0700, José Roberto de Souza wrote:
> PIPE_MBUS_DBOX_CTL was only being programmed when a pipe is being
> enabled leaving other pipes with a wrong A_CREDIT value in cases
> like when going from one pipe enabled to two pipes and the first
> pipe don't need modeset, similar when going from two or more
> pipes to ones.
> 
> So here moving the PIPE_MBUS_DBOX_CTL programing to be executed before
> the function that enables and updates all necessary pipes.
> Leaving all pipes with the correct value of A_CREDIT.
> 
> As now PIPE_MBUS_DBOX_CTL is being programmed at the right time it
> is also waiting the vblanks after adjust PIPE_MBUS_DBOX_CTL
> as required by specification.
> 
> BSpec: 49213
> BSpec: 50343
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 36 +------------
>  drivers/gpu/drm/i915/intel_pm.c              | 55 +++++++++++++++++++-
>  drivers/gpu/drm/i915/intel_pm.h              |  1 +
>  3 files changed, 56 insertions(+), 36 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 2e85ae575423a..4cd2d76058b8c 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -1821,34 +1821,6 @@ static void glk_pipe_scaler_clock_gating_wa(struct drm_i915_private *dev_priv,
>  	intel_de_write(dev_priv, CLKGATE_DIS_PSL(pipe), val);
>  }
>  
> -static void icl_pipe_mbus_enable(struct intel_crtc *crtc, bool joined_mbus)
> -{
> -	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
> -	enum pipe pipe = crtc->pipe;
> -	u32 val = intel_de_read(dev_priv, PIPE_MBUS_DBOX_CTL(pipe));
> -
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
> @@ -1984,13 +1956,6 @@ static void hsw_crtc_enable(struct intel_atomic_state *state,
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
> @@ -8589,6 +8554,7 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
>  	intel_encoders_update_prepare(state);
>  
>  	intel_dbuf_pre_plane_update(state);
> +	intel_mbus_dbox_update(state);
>  
>  	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
>  		if (new_crtc_state->do_async_flip)
> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
> index 96bb8ecc11668..08ba32e5eb4ad 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -6172,7 +6172,6 @@ skl_compute_ddb(struct intel_atomic_state *state)
>  			return ret;
>  
>  		if (old_dbuf_state->joined_mbus != new_dbuf_state->joined_mbus) {
> -			/* TODO: Implement vblank synchronized MBUS joining changes */
>  			ret = intel_modeset_all_pipes(state);
>  			if (ret)
>  				return ret;
> @@ -8365,3 +8364,57 @@ void intel_dbuf_post_plane_update(struct intel_atomic_state *state)
>  	gen9_dbuf_slices_update(dev_priv,
>  				new_dbuf_state->enabled_slices);
>  }
> +
> +void intel_mbus_dbox_update(struct intel_atomic_state *state)
> +{
> +	struct drm_i915_private *i915 = to_i915(state->base.dev);
> +	struct intel_crtc_state *old_crtc_state, *new_crtc_state;
> +	struct intel_dbuf_state *old_dbuf_state, *new_dbuf_state;
> +	struct intel_crtc *crtc;
> +	int i;
> +
> +	if (DISPLAY_VER(i915) < 11 || !state->modeset)
> +		return;
> +
> +	if (HAS_MBUS_JOINING(i915)) {
> +		new_dbuf_state = intel_atomic_get_dbuf_state(state);
> +		old_dbuf_state = intel_atomic_get_old_dbuf_state(state);
> +	}
> +
> +	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state, new_crtc_state, i) {
> +		u32 val;
> +
> +		val = intel_de_read(i915, PIPE_MBUS_DBOX_CTL(crtc->pipe));

In which power well does that live? and are we guaranteed to
have that enabled here?

I guess tou could just do something like
 if (!hw.active || !needs_modeset)
 	continue;
since I don't think there's much point in programming this
for inactive pipes, or pipes that have already been enabled
earlier. That should also avoid any power well issues.

> +		val &= ~MBUS_DBOX_A_CREDIT_MASK;
> +
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
> +
> +		/* If going from joined to not joined, wait a vblank */
> +		if (HAS_MBUS_JOINING(i915) &&
> +		    old_crtc_state->hw.active &&
> +		    new_crtc_state->hw.active &&
> +		    old_dbuf_state->joined_mbus &&
> +		    !new_dbuf_state->joined_mbus)
> +			intel_crtc_wait_for_next_vblank(crtc);

That check does not guarantee the pipe is active when you call this.
It could be doing a enabled->enabled modeset. In fact that is guaranteed
to be the case since we anyway force a full modeset on everything when
changing mbus joining. So you can just nuke this vblank wait.

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

AFAICS you could just call this from intel_dbuf_pre_plane_update()
instead of making the high level modeset code have to deal with it.

>  
>  #endif /* __INTEL_PM_H__ */
> -- 
> 2.35.1

-- 
Ville Syrjälä
Intel
