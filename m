Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D580097BBAB
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Sep 2024 13:35:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B983410E1D0;
	Wed, 18 Sep 2024 11:35:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iVFNCoXg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D51A410E1D0;
 Wed, 18 Sep 2024 11:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726659323; x=1758195323;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=cO1lLDBQ6mvUwJnmHmhRGm/H4exwxliXlLcLHTebCJY=;
 b=iVFNCoXg+CUDxRwoX3j28BoNJ4wSAA3x8JsK/+gz7kzclzbGYfwgo7hf
 VZO96zNym6YWv10zp9Mti3a+OxniGs006dbSmM/RdZSz5Wf9EampZTn1L
 /lOPURQx4banmaSyQZhIn1S6A3asd8ys7m6W1VxHjxXTwfQiusOeuRPnu
 tpAQLPTHUaigQDwsNN9sqLLpGdX0C7ncEx2QrGgR98Slofgam+u6AOQGa
 A5DYklO5Lhsjd4gX2xXL12J+9ymu9SAukxGvVXjviTJDahwADVqAjR6C8
 JOdAPmP4t4XumHvWhga4hySzjuH94TRtAey+Fe03ErDBkcS8RBq2KaIQF g==;
X-CSE-ConnectionGUID: o4OmaxucTnOfsnwKZSKdLg==
X-CSE-MsgGUID: 5hs1Ib0uTl2hLN0oDH9vJg==
X-IronPort-AV: E=McAfee;i="6700,10204,11198"; a="48086224"
X-IronPort-AV: E=Sophos;i="6.10,238,1719903600"; d="scan'208";a="48086224"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2024 04:35:23 -0700
X-CSE-ConnectionGUID: yQGJL6WAQHWMzREEKsLqag==
X-CSE-MsgGUID: XWZNJPJoSZy5TLc9j0V9Zg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,238,1719903600"; d="scan'208";a="69610073"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 18 Sep 2024 04:35:20 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 18 Sep 2024 14:35:19 +0300
Date: Wed, 18 Sep 2024 14:35:19 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 suraj.kandpal@intel.com
Subject: Re: [PATCH 2/2] drm/i915/display: Enhance iterators for modeset
 en/disable
Message-ID: <Zuq69yTKkibmln47@intel.com>
References: <20240918063016.2667721-1-ankit.k.nautiyal@intel.com>
 <20240918063016.2667721-3-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240918063016.2667721-3-ankit.k.nautiyal@intel.com>
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

On Wed, Sep 18, 2024 at 12:00:16PM +0530, Ankit Nautiyal wrote:
> Joiners have specific enabling and disabling order dependent on primary
> and secondary pipes. This becomes more complex with ultrajoiner where we
> have ultrajoiner primary/secondary pipes in addition to bigjoiner
> primary/secondary pipes. To unify the approach that works for present
> and future joiner cases, use primary and secondary pipe masks to
> iterate over pipes.
> 
> If joiner is used, derive bigoiner primary and secondary pipe masks
> and use following sequences:
> Disabling : disable primary pipes followed by secondary pipes,
> Enabling: enable secondary pipes followed by primary pipes.
> 
> This works well with ultrajoiner too, as ultrajoiner has 2 bigjoiner
> primary/secondary pairs (AC, BD).
> 
> For non joiner case, enable/disable based on usual pipe order A-D, D-A
> respectively.
> 
> v2:
> -Simplify the iterator macro. (Ville)
> -Use struct intel_display. (Ville)
> -Add prefix _intel to the helper name. (Ville)
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Suggested-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c     | 14 +++----
>  drivers/gpu/drm/i915/display/intel_display.c | 40 ++++++++++++--------
>  drivers/gpu/drm/i915/display/intel_display.h | 26 +++++++++++++
>  drivers/gpu/drm/i915/display/intel_dp_mst.c  | 14 +++----
>  4 files changed, 64 insertions(+), 30 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index b1c294236cc8..85e519a21542 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -3115,11 +3115,12 @@ static void intel_ddi_post_disable_hdmi_or_sst(struct intel_atomic_state *state,
>  					       const struct intel_crtc_state *old_crtc_state,
>  					       const struct drm_connector_state *old_conn_state)
>  {
> +	struct intel_display *display = to_intel_display(encoder);
>  	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
>  	struct intel_crtc *pipe_crtc;
> +	int i;
>  
> -	for_each_intel_crtc_in_pipe_mask(&dev_priv->drm, pipe_crtc,
> -					 intel_crtc_joined_pipe_mask(old_crtc_state)) {
> +	for_each_pipe_crtc_modeset_disable(display, pipe_crtc, old_crtc_state, i) {
>  		const struct intel_crtc_state *old_pipe_crtc_state =
>  			intel_atomic_get_old_crtc_state(state, pipe_crtc);
>  
> @@ -3130,8 +3131,7 @@ static void intel_ddi_post_disable_hdmi_or_sst(struct intel_atomic_state *state,
>  
>  	intel_ddi_disable_transcoder_func(old_crtc_state);
>  
> -	for_each_intel_crtc_in_pipe_mask(&dev_priv->drm, pipe_crtc,
> -					 intel_crtc_joined_pipe_mask(old_crtc_state)) {
> +	for_each_pipe_crtc_modeset_disable(display, pipe_crtc, old_crtc_state, i) {
>  		const struct intel_crtc_state *old_pipe_crtc_state =
>  			intel_atomic_get_old_crtc_state(state, pipe_crtc);
>  
> @@ -3382,8 +3382,9 @@ static void intel_enable_ddi(struct intel_atomic_state *state,
>  			     const struct intel_crtc_state *crtc_state,
>  			     const struct drm_connector_state *conn_state)
>  {
> -	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> +	struct intel_display *display = to_intel_display(encoder);
>  	struct intel_crtc *pipe_crtc;
> +	int i;
>  
>  	intel_ddi_enable_transcoder_func(encoder, crtc_state);
>  
> @@ -3394,8 +3395,7 @@ static void intel_enable_ddi(struct intel_atomic_state *state,
>  
>  	intel_ddi_wait_for_fec_status(encoder, crtc_state, true);
>  
> -	for_each_intel_crtc_in_pipe_mask_reverse(&i915->drm, pipe_crtc,
> -						 intel_crtc_joined_pipe_mask(crtc_state)) {
> +	for_each_pipe_crtc_modeset_enable(display, pipe_crtc, crtc_state, i) {
>  		const struct intel_crtc_state *pipe_crtc_state =
>  			intel_atomic_get_new_crtc_state(state, pipe_crtc);
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 83ea188cbe21..7a279f57208f 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -299,6 +299,21 @@ bool intel_crtc_is_bigjoiner_secondary(const struct intel_crtc_state *crtc_state
>  	return BIT(crtc->pipe) & bigjoiner_secondary_pipes(crtc_state);
>  }
>  
> +u8 _intel_modeset_primary_pipes(const struct intel_crtc_state *crtc_state)
> +{
> +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> +
> +	if (!is_bigjoiner(crtc_state))
> +		return BIT(crtc->pipe);
> +
> +	return bigjoiner_primary_pipes(crtc_state);
> +}
> +
> +u8 _intel_modeset_secondary_pipes(const struct intel_crtc_state *crtc_state)
> +{
> +	return bigjoiner_secondary_pipes(crtc_state);
> +}
> +
>  u8 intel_crtc_joiner_secondary_pipes(const struct intel_crtc_state *crtc_state)
>  {
>  	if (crtc_state->joiner_pipes)
> @@ -1729,18 +1744,16 @@ static void hsw_crtc_enable(struct intel_atomic_state *state,
>  	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
>  	enum transcoder cpu_transcoder = new_crtc_state->cpu_transcoder;
>  	struct intel_crtc *pipe_crtc;
> +	int i;
>  
>  	if (drm_WARN_ON(&dev_priv->drm, crtc->active))
>  		return;
> -
> -	for_each_intel_crtc_in_pipe_mask_reverse(&dev_priv->drm, pipe_crtc,
> -						 intel_crtc_joined_pipe_mask(new_crtc_state))
> +	for_each_pipe_crtc_modeset_enable(display, pipe_crtc, new_crtc_state, i)
>  		intel_dmc_enable_pipe(display, pipe_crtc->pipe);
>  
>  	intel_encoders_pre_pll_enable(state, crtc);
>  
> -	for_each_intel_crtc_in_pipe_mask_reverse(&dev_priv->drm, pipe_crtc,
> -						 intel_crtc_joined_pipe_mask(new_crtc_state)) {
> +	for_each_pipe_crtc_modeset_enable(display, pipe_crtc, new_crtc_state, i) {
>  		const struct intel_crtc_state *pipe_crtc_state =
>  			intel_atomic_get_new_crtc_state(state, pipe_crtc);
>  
> @@ -1750,8 +1763,7 @@ static void hsw_crtc_enable(struct intel_atomic_state *state,
>  
>  	intel_encoders_pre_enable(state, crtc);
>  
> -	for_each_intel_crtc_in_pipe_mask_reverse(&dev_priv->drm, pipe_crtc,
> -						 intel_crtc_joined_pipe_mask(new_crtc_state)) {
> +	for_each_pipe_crtc_modeset_enable(display, pipe_crtc, new_crtc_state, i) {
>  		const struct intel_crtc_state *pipe_crtc_state =
>  			intel_atomic_get_new_crtc_state(state, pipe_crtc);
>  
> @@ -1769,8 +1781,7 @@ static void hsw_crtc_enable(struct intel_atomic_state *state,
>  	if (!transcoder_is_dsi(cpu_transcoder))
>  		hsw_configure_cpu_transcoder(new_crtc_state);
>  
> -	for_each_intel_crtc_in_pipe_mask_reverse(&dev_priv->drm, pipe_crtc,
> -						 intel_crtc_joined_pipe_mask(new_crtc_state)) {
> +	for_each_pipe_crtc_modeset_enable(display, pipe_crtc, new_crtc_state, i) {
>  		const struct intel_crtc_state *pipe_crtc_state =
>  			intel_atomic_get_new_crtc_state(state, pipe_crtc);
>  
> @@ -1805,8 +1816,7 @@ static void hsw_crtc_enable(struct intel_atomic_state *state,
>  
>  	intel_encoders_enable(state, crtc);
>  
> -	for_each_intel_crtc_in_pipe_mask_reverse(&dev_priv->drm, pipe_crtc,
> -						 intel_crtc_joined_pipe_mask(new_crtc_state)) {
> +	for_each_pipe_crtc_modeset_enable(display, pipe_crtc, new_crtc_state, i) {
>  		const struct intel_crtc_state *pipe_crtc_state =
>  			intel_atomic_get_new_crtc_state(state, pipe_crtc);
>  		enum pipe hsw_workaround_pipe;
> @@ -1889,10 +1899,10 @@ static void hsw_crtc_disable(struct intel_atomic_state *state,
>  			     struct intel_crtc *crtc)
>  {
>  	struct intel_display *display = to_intel_display(state);
> -	struct drm_i915_private *i915 = to_i915(display->drm);
>  	const struct intel_crtc_state *old_crtc_state =
>  		intel_atomic_get_old_crtc_state(state, crtc);
>  	struct intel_crtc *pipe_crtc;
> +	int i;
>  
>  	/*
>  	 * FIXME collapse everything to one hook.
> @@ -1901,8 +1911,7 @@ static void hsw_crtc_disable(struct intel_atomic_state *state,
>  	intel_encoders_disable(state, crtc);
>  	intel_encoders_post_disable(state, crtc);
>  
> -	for_each_intel_crtc_in_pipe_mask(&i915->drm, pipe_crtc,
> -					 intel_crtc_joined_pipe_mask(old_crtc_state)) {
> +	for_each_pipe_crtc_modeset_disable(display, pipe_crtc, old_crtc_state, i) {
>  		const struct intel_crtc_state *old_pipe_crtc_state =
>  			intel_atomic_get_old_crtc_state(state, pipe_crtc);
>  
> @@ -1911,8 +1920,7 @@ static void hsw_crtc_disable(struct intel_atomic_state *state,
>  
>  	intel_encoders_post_pll_disable(state, crtc);
>  
> -	for_each_intel_crtc_in_pipe_mask(&i915->drm, pipe_crtc,
> -					 intel_crtc_joined_pipe_mask(old_crtc_state))
> +	for_each_pipe_crtc_modeset_disable(display, pipe_crtc, old_crtc_state, i)
>  		intel_dmc_disable_pipe(display, pipe_crtc->pipe);
>  }
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
> index 27c6a5940991..0b28dbca7828 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.h
> +++ b/drivers/gpu/drm/i915/display/intel_display.h
> @@ -392,6 +392,30 @@ enum phy_fia {
>  			     ((connector) = to_intel_connector((__state)->base.connectors[__i].ptr), \
>  			     (new_connector_state) = to_intel_digital_connector_state((__state)->base.connectors[__i].new_state), 1))
>  
> +#define for_each_crtc_in_masks(display, crtc, first_pipes, second_pipes, i) \
> +	for ((i) = 0; \
> +	     (i) < (I915_MAX_PIPES * 2) && ((crtc) = intel_crtc_for_pipe(display, (i) % I915_MAX_PIPES), 1); \
> +	     (i)++) \
> +		for_each_if((crtc) && ((first_pipes) | ((second_pipes) << I915_MAX_PIPES)) & BIT(i))
> +
> +#define for_each_crtc_in_masks_reverse(display, crtc, first_pipes, second_pipes, i) \
> +	for ((i) = (I915_MAX_PIPES * 2 - 1); \
> +	     (i) >= 0 && ((crtc) = intel_crtc_for_pipe(display, (i) % I915_MAX_PIPES), 1); \
> +	     (i)--) \
> +		for_each_if((crtc) && ((first_pipes) | ((second_pipes) << I915_MAX_PIPES)) & BIT(i))

This will now process "second" before "first" which is 
perphaps a bit confusing. Functionally looks correct though.

But I guess one might argue we also walk the bits in the opposite
order so eg. "first set bit" comes after "last set bit" as well.
Shrug.

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> +
> +#define for_each_pipe_crtc_modeset_disable(display, crtc, crtc_state, i) \
> +	for_each_crtc_in_masks(display, crtc, \
> +			       _intel_modeset_primary_pipes(crtc_state), \
> +			       _intel_modeset_secondary_pipes(crtc_state), \
> +			       i)
> +
> +#define for_each_pipe_crtc_modeset_enable(display, crtc, crtc_state, i) \
> +	for_each_crtc_in_masks_reverse(display, crtc, \
> +				       _intel_modeset_primary_pipes(crtc_state), \
> +				       _intel_modeset_secondary_pipes(crtc_state), \
> +				       i)
> +
>  int intel_atomic_check(struct drm_device *dev, struct drm_atomic_state *state);
>  int intel_atomic_add_affected_planes(struct intel_atomic_state *state,
>  				     struct intel_crtc *crtc);
> @@ -419,6 +443,8 @@ bool intel_crtc_is_joiner_primary(const struct intel_crtc_state *crtc_state);
>  bool intel_crtc_is_bigjoiner_primary(const struct intel_crtc_state *crtc_state);
>  bool intel_crtc_is_bigjoiner_secondary(const struct intel_crtc_state *crtc_state);
>  u8 intel_crtc_joiner_secondary_pipes(const struct intel_crtc_state *crtc_state);
> +u8 _intel_modeset_primary_pipes(const struct intel_crtc_state *crtc_state);
> +u8 _intel_modeset_secondary_pipes(const struct intel_crtc_state *crtc_state);
>  struct intel_crtc *intel_primary_crtc(const struct intel_crtc_state *crtc_state);
>  bool intel_crtc_get_pipe_config(struct intel_crtc_state *crtc_state);
>  bool intel_pipe_config_compare(const struct intel_crtc_state *current_config,
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index 15541932b809..1a16310b4147 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -985,6 +985,7 @@ static void intel_mst_post_disable_dp(struct intel_atomic_state *state,
>  				      const struct intel_crtc_state *old_crtc_state,
>  				      const struct drm_connector_state *old_conn_state)
>  {
> +	struct intel_display *display = to_intel_display(encoder);
>  	struct intel_dp_mst_encoder *intel_mst = enc_to_mst(encoder);
>  	struct intel_digital_port *dig_port = intel_mst->primary;
>  	struct intel_dp *intel_dp = &dig_port->dp;
> @@ -1001,6 +1002,7 @@ static void intel_mst_post_disable_dp(struct intel_atomic_state *state,
>  	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
>  	struct intel_crtc *pipe_crtc;
>  	bool last_mst_stream;
> +	int i;
>  
>  	intel_dp->active_mst_links--;
>  	last_mst_stream = intel_dp->active_mst_links == 0;
> @@ -1008,8 +1010,7 @@ static void intel_mst_post_disable_dp(struct intel_atomic_state *state,
>  		    DISPLAY_VER(dev_priv) >= 12 && last_mst_stream &&
>  		    !intel_dp_mst_is_master_trans(old_crtc_state));
>  
> -	for_each_intel_crtc_in_pipe_mask(&dev_priv->drm, pipe_crtc,
> -					 intel_crtc_joined_pipe_mask(old_crtc_state)) {
> +	for_each_pipe_crtc_modeset_disable(display, pipe_crtc, old_crtc_state, i) {
>  		const struct intel_crtc_state *old_pipe_crtc_state =
>  			intel_atomic_get_old_crtc_state(state, pipe_crtc);
>  
> @@ -1033,8 +1034,7 @@ static void intel_mst_post_disable_dp(struct intel_atomic_state *state,
>  
>  	intel_ddi_disable_transcoder_func(old_crtc_state);
>  
> -	for_each_intel_crtc_in_pipe_mask(&dev_priv->drm, pipe_crtc,
> -					 intel_crtc_joined_pipe_mask(old_crtc_state)) {
> +	for_each_pipe_crtc_modeset_disable(display, pipe_crtc, old_crtc_state, i) {
>  		const struct intel_crtc_state *old_pipe_crtc_state =
>  			intel_atomic_get_old_crtc_state(state, pipe_crtc);
>  
> @@ -1243,6 +1243,7 @@ static void intel_mst_enable_dp(struct intel_atomic_state *state,
>  				const struct intel_crtc_state *pipe_config,
>  				const struct drm_connector_state *conn_state)
>  {
> +	struct intel_display *display = to_intel_display(encoder);
>  	struct intel_dp_mst_encoder *intel_mst = enc_to_mst(encoder);
>  	struct intel_digital_port *dig_port = intel_mst->primary;
>  	struct intel_dp *intel_dp = &dig_port->dp;
> @@ -1253,7 +1254,7 @@ static void intel_mst_enable_dp(struct intel_atomic_state *state,
>  	enum transcoder trans = pipe_config->cpu_transcoder;
>  	bool first_mst_stream = intel_dp->active_mst_links == 1;
>  	struct intel_crtc *pipe_crtc;
> -	int ret;
> +	int ret, i;
>  
>  	drm_WARN_ON(&dev_priv->drm, pipe_config->has_pch_encoder);
>  
> @@ -1300,8 +1301,7 @@ static void intel_mst_enable_dp(struct intel_atomic_state *state,
>  
>  	intel_enable_transcoder(pipe_config);
>  
> -	for_each_intel_crtc_in_pipe_mask_reverse(&dev_priv->drm, pipe_crtc,
> -						 intel_crtc_joined_pipe_mask(pipe_config)) {
> +	for_each_pipe_crtc_modeset_enable(display, pipe_crtc, pipe_config, i) {
>  		const struct intel_crtc_state *pipe_crtc_state =
>  			intel_atomic_get_new_crtc_state(state, pipe_crtc);
>  
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
