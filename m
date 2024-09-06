Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BE18996F81D
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Sep 2024 17:24:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A18E10EA98;
	Fri,  6 Sep 2024 15:24:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lSWvW6hy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AAC1E10EA98
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Sep 2024 15:24:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725636284; x=1757172284;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=SBvI1WVIDx/vLejxgVU6tutCbG1wxPtAP79EYwVVgCY=;
 b=lSWvW6hy+q7UuoDnhCf24NVMhUSluaYtaC64d9AjUzxthZIGXWqI6CBZ
 DzgFpNY9tN+S0SePnAdzlkKaCKO7m59/pZPCp7h+I+3mOar/5BpQGkdUQ
 50LK4bpSJBmVeL3Aer7xr6Zeii+SINbQatTv7qqeFa6T/9IyXAnzFqsmo
 QGTNfGttPTueIMBMEA33o5KwBGZlTvHl4MHmrTW4SNANvfXRU2cP0qCrf
 wIV7BxyrkBcIZFRYRRMvdxsNDG6Ly+LR33c+BdTsXw/X2hME1KbJhSx/I
 qCFsWFU6AMZBpywa9RzwvWC3uEj0q2YUpnbKuk6T9gaMmRzWKSfR0Ild8 Q==;
X-CSE-ConnectionGUID: djfMIQsQRhCWpN/QIKm1vw==
X-CSE-MsgGUID: S9EPhOhoRcOjmbs9HEjpxQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11187"; a="34974134"
X-IronPort-AV: E=Sophos;i="6.10,208,1719903600"; d="scan'208";a="34974134"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2024 08:24:44 -0700
X-CSE-ConnectionGUID: 7gYtPJFlQtm5HqjMBvgP5A==
X-CSE-MsgGUID: 7if0czrBTr25Axr9vZZhyw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,208,1719903600"; d="scan'208";a="66016830"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 06 Sep 2024 08:24:41 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 06 Sep 2024 18:24:40 +0300
Date: Fri, 6 Sep 2024 18:24:40 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, jani.saarinen@intel.com
Subject: Re: [PATCH 05/14] drm/i915: Add some essential functionality for
 joiners
Message-ID: <ZtseuOqSAGGamFb1@intel.com>
References: <20240906125807.3960642-1-ankit.k.nautiyal@intel.com>
 <20240906125807.3960642-6-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240906125807.3960642-6-ankit.k.nautiyal@intel.com>
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

On Fri, Sep 06, 2024 at 06:27:58PM +0530, Ankit Nautiyal wrote:
> From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> 
> In most of the cases we now try to avoid mentioning things like
> "bigjoiner" or "ultrajoiner" trying to unify the API and refer
> mostly to all this functionality as "joiner".
> In majority cases that should be way to go.
> However in some cases we still need to distinguish between
> bigjoiner primaries and secondaries(such as DSC register programming).
> 
> Create correspondent helper functions and start using them,
> in order be prepared for adding ultrajoiner functionality.
> 
> v2: Fixed checkpatch warnings (Ankit)
> v3: Introduce ultrajoiner helpers in next patch.
> 
> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  .../gpu/drm/i915/display/intel_atomic_plane.c |  2 +-
>  drivers/gpu/drm/i915/display/intel_display.c  | 52 +++++++++++++++++--
>  drivers/gpu/drm/i915/display/intel_display.h  |  6 ++-
>  .../drm/i915/display/intel_modeset_verify.c   |  2 +-
>  drivers/gpu/drm/i915/display/intel_vdsc.c     |  4 +-
>  5 files changed, 56 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> index 928d985f9985..83ed018b1735 100644
> --- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> +++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> @@ -725,7 +725,7 @@ int intel_plane_atomic_check(struct intel_atomic_state *state,
>  
>  	if (new_crtc_state && intel_crtc_is_joiner_secondary(new_crtc_state)) {
>  		struct intel_crtc *primary_crtc =
> -			intel_primary_crtc(new_crtc_state);
> +			intel_joiner_primary_crtc(new_crtc_state);
>  		struct intel_plane *primary_crtc_plane =
>  			intel_crtc_get_plane(primary_crtc, plane->id);
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 257e479310c2..3278debf47cc 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -254,6 +254,50 @@ static enum pipe joiner_primary_pipe(const struct intel_crtc_state *crtc_state)
>  	return ffs(crtc_state->joiner_pipes) - 1;
>  }
>  
> +static bool intel_is_joiner(const struct intel_crtc_state *crtc_state)
> +{
> +	return intel_joiner_num_pipes(crtc_state) > 1;
> +}
> +
> +static u8 bigjoiner_primary_pipes(const struct intel_crtc_state *crtc_state)
> +{
> +	int lsb = ffs(crtc_state->joiner_pipes) - 1;
> +	int msb = fls(crtc_state->joiner_pipes) - 1;
> +	int i;
> +	u8 bigjoiner_primary_mask = 0;
> +
> +	for (i = lsb; i < msb; i += 4) {
> +		/*
> +		 * Regardless of how joiner_pipes mask is set, currently
> +		 * we always assume, that primary pipe bit goes before secondary
> +		 * pipe bit. So in each set of 2 bits, least significant bit is
> +		 * bigjoiner primary pipe and most significant bit is secondary pipe.
> +		 */
> +		bigjoiner_primary_mask |=
> +			((BIT(0) | BIT(2)) << i) & crtc_state->joiner_pipes;
> +	}
> +
> +	return bigjoiner_primary_mask;

This seems needlessly complicated.

Something like this?

return crtc_state->joiner_pipes & (0b01010101 << joiner_primary_pipe(crtc_state))

> +}
> +
> +bool intel_crtc_is_bigjoiner_primary(const struct intel_crtc_state *crtc_state)
> +{
> +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> +
> +	if (!intel_is_joiner(crtc_state))
> +		return false;
> +
> +	return BIT(crtc->pipe) & bigjoiner_primary_pipes(crtc_state);
> +}
> +
> +bool intel_crtc_is_bigjoiner_secondary(const struct intel_crtc_state *crtc_state)
> +{
> +	if (!intel_is_joiner(crtc_state))
> +		return false;
> +
> +	return !intel_crtc_is_bigjoiner_primary(crtc_state);
> +}
> +
>  u8 intel_crtc_joiner_secondary_pipes(const struct intel_crtc_state *crtc_state)
>  {
>  	if (crtc_state->joiner_pipes)
> @@ -290,7 +334,7 @@ u8 intel_crtc_joined_pipe_mask(const struct intel_crtc_state *crtc_state)
>  	return BIT(crtc->pipe) | crtc_state->joiner_pipes;
>  }
>  
> -struct intel_crtc *intel_primary_crtc(const struct intel_crtc_state *crtc_state)
> +struct intel_crtc *intel_joiner_primary_crtc(const struct intel_crtc_state *crtc_state)
>  {
>  	struct intel_display *display = to_intel_display(crtc_state);
>  
> @@ -810,7 +854,7 @@ intel_get_crtc_new_encoder(const struct intel_atomic_state *state,
>  	int num_encoders = 0;
>  	int i;
>  
> -	primary_crtc = intel_primary_crtc(crtc_state);
> +	primary_crtc = intel_joiner_primary_crtc(crtc_state);

That rename seems unrelated to the rest of the patch.

>  
>  	for_each_new_connector_in_state(&state->base, connector, connector_state, i) {
>  		if (connector_state->crtc != &primary_crtc->base)
> @@ -4530,7 +4574,7 @@ copy_joiner_crtc_state_nomodeset(struct intel_atomic_state *state,
>  {
>  	struct intel_crtc_state *secondary_crtc_state =
>  		intel_atomic_get_new_crtc_state(state, secondary_crtc);
> -	struct intel_crtc *primary_crtc = intel_primary_crtc(secondary_crtc_state);
> +	struct intel_crtc *primary_crtc = intel_joiner_primary_crtc(secondary_crtc_state);
>  	const struct intel_crtc_state *primary_crtc_state =
>  		intel_atomic_get_new_crtc_state(state, primary_crtc);
>  
> @@ -4550,7 +4594,7 @@ copy_joiner_crtc_state_modeset(struct intel_atomic_state *state,
>  {
>  	struct intel_crtc_state *secondary_crtc_state =
>  		intel_atomic_get_new_crtc_state(state, secondary_crtc);
> -	struct intel_crtc *primary_crtc = intel_primary_crtc(secondary_crtc_state);
> +	struct intel_crtc *primary_crtc = intel_joiner_primary_crtc(secondary_crtc_state);
>  	const struct intel_crtc_state *primary_crtc_state =
>  		intel_atomic_get_new_crtc_state(state, primary_crtc);
>  	struct intel_crtc_state *saved_state;
> diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
> index c0f8bb7e5095..840a98947de8 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.h
> +++ b/drivers/gpu/drm/i915/display/intel_display.h
> @@ -424,10 +424,12 @@ enum phy intel_port_to_phy(struct drm_i915_private *i915, enum port port);
>  bool is_trans_port_sync_mode(const struct intel_crtc_state *state);
>  bool is_trans_port_sync_master(const struct intel_crtc_state *state);
>  u8 intel_crtc_joined_pipe_mask(const struct intel_crtc_state *crtc_state);
> -bool intel_crtc_is_joiner_secondary(const struct intel_crtc_state *crtc_state);
>  bool intel_crtc_is_joiner_primary(const struct intel_crtc_state *crtc_state);
> +bool intel_crtc_is_joiner_secondary(const struct intel_crtc_state *crtc_state);
> +bool intel_crtc_is_bigjoiner_primary(const struct intel_crtc_state *crtc_state);
> +bool intel_crtc_is_bigjoiner_secondary(const struct intel_crtc_state *crtc_state);
>  u8 intel_crtc_joiner_secondary_pipes(const struct intel_crtc_state *crtc_state);
> -struct intel_crtc *intel_primary_crtc(const struct intel_crtc_state *crtc_state);
> +struct intel_crtc *intel_joiner_primary_crtc(const struct intel_crtc_state *crtc_state);
>  bool intel_crtc_get_pipe_config(struct intel_crtc_state *crtc_state);
>  bool intel_pipe_config_compare(const struct intel_crtc_state *current_config,
>  			       const struct intel_crtc_state *pipe_config,
> diff --git a/drivers/gpu/drm/i915/display/intel_modeset_verify.c b/drivers/gpu/drm/i915/display/intel_modeset_verify.c
> index 3491db5cad31..b53b810c6470 100644
> --- a/drivers/gpu/drm/i915/display/intel_modeset_verify.c
> +++ b/drivers/gpu/drm/i915/display/intel_modeset_verify.c
> @@ -193,7 +193,7 @@ verify_crtc_state(struct intel_atomic_state *state,
>  			"transitional active state does not match atomic hw state (expected %i, found %i)\n",
>  			sw_crtc_state->hw.active, crtc->active);
>  
> -	primary_crtc = intel_primary_crtc(sw_crtc_state);
> +	primary_crtc = intel_joiner_primary_crtc(sw_crtc_state);
>  
>  	for_each_encoder_on_crtc(dev, &primary_crtc->base, encoder) {
>  		enum pipe pipe;
> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
> index 2e849b015e74..8158e3702ed5 100644
> --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
> +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
> @@ -742,7 +742,7 @@ void intel_uncompressed_joiner_enable(const struct intel_crtc_state *crtc_state)
>  	u32 dss_ctl1_val = 0;
>  
>  	if (crtc_state->joiner_pipes && !crtc_state->dsc.compression_enable) {
> -		if (intel_crtc_is_joiner_secondary(crtc_state))
> +		if (intel_crtc_is_bigjoiner_secondary(crtc_state))
>  			dss_ctl1_val |= UNCOMPRESSED_JOINER_SECONDARY;
>  		else
>  			dss_ctl1_val |= UNCOMPRESSED_JOINER_PRIMARY;
> @@ -771,7 +771,7 @@ void intel_dsc_enable(const struct intel_crtc_state *crtc_state)
>  	}
>  	if (crtc_state->joiner_pipes) {
>  		dss_ctl1_val |= BIG_JOINER_ENABLE;
> -		if (!intel_crtc_is_joiner_secondary(crtc_state))
> +		if (intel_crtc_is_bigjoiner_primary(crtc_state))
>  			dss_ctl1_val |= PRIMARY_BIG_JOINER_ENABLE;
>  	}
>  	intel_de_write(dev_priv, dss_ctl1_reg(crtc, crtc_state->cpu_transcoder), dss_ctl1_val);
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
