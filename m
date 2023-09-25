Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B72E77AD1F2
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Sep 2023 09:42:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A7D1510E075;
	Mon, 25 Sep 2023 07:42:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8FDF610E075
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 Sep 2023 07:42:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695627746; x=1727163746;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=adg/8aQwpu61cOrmIhSkLyB4df0pIZEDHk018v0HaMQ=;
 b=ZGOP+Lhth6FGmE4u7jmyMxtmNnoi2DjCZBt8YUhfSTvMy2863A9lLZSl
 5O6eYvlxlFosRFMkGjO1JGGdDZsWvlpFrgEUWZdadPi06wwyNmJYdfRUf
 QmAc0GJWrqQDY5O+xYqVAp8WBd8rsPaz2ixAY8ilGpFYe3Q8F4I9Sb5zS
 H/6n1hxH4oFbIaNYHkFs6tEG64YPikvGIBtQNK+Z3+hCWMN3HZkw4maFM
 DYnTWIAQXRmxFkgPMQTfyQVEfsAPbEAHfGEWGLo8cAUEEr5Yx7m9NZW1v
 nO2SYr5Fck9u2Aec+gJY8/fu1jUBZeZfdw1oLRShvaBP+rvQEK98E9zUN w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10843"; a="378459515"
X-IronPort-AV: E=Sophos;i="6.03,174,1694761200"; d="scan'208";a="378459515"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Sep 2023 00:42:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10843"; a="813841780"
X-IronPort-AV: E=Sophos;i="6.03,174,1694761200"; d="scan'208";a="813841780"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Sep 2023 00:42:24 -0700
Date: Mon, 25 Sep 2023 10:42:15 +0300
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Imre Deak <imre.deak@intel.com>
Message-ID: <ZRE51xfyt4Xn7T1m@intel.com>
References: <20230914192659.757475-25-imre.deak@intel.com>
 <20230919105211.1671174-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230919105211.1671174-1-imre.deak@intel.com>
Subject: Re: [Intel-gfx] [PATCH v5 24/25] drm/i915/dp_mst: Improve BW
 sharing between MST streams
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

On Tue, Sep 19, 2023 at 01:52:11PM +0300, Imre Deak wrote:
> At the moment modesetting a stream CRTC will fail if the stream's BW
> along with the current BW of all the other streams on the same MST link
> is above the total BW of the MST link. Make the BW sharing more dynamic
> by trying to reduce the link bpp of one or more streams on the MST link
> in this case.
> 
> When selecting a stream to reduce the BW for, take into account which
> link segment in the MST topology ran out of BW and which streams go
> through this link segment. For instance with A,B,C streams in the same
> MST topology A and B may share the BW of a link segment downstream of a
> branch device, stream C not downstream of the branch device, hence not
> affecting this BW. If this link segment's BW runs out one or both of
> stream A/B's BW will be reduced until their total BW is within limits.
> 
> While reducing the link bpp for a given stream DSC may need to be
> enabled for it, which requires FEC on the whole MST link. Check for this
> condition and recompute the state for all streams taking the FEC
> overhead into account (on 8b/10b links).
> 
> v2:
> - Rebase on s/min_bpp_pipes/min_bpp_reached_pipes/ change.
> 
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c |   5 +-
>  drivers/gpu/drm/i915/display/intel_dp.c      |  13 +-
>  drivers/gpu/drm/i915/display/intel_dp.h      |   2 +
>  drivers/gpu/drm/i915/display/intel_dp_mst.c  | 129 +++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_dp_mst.h  |   3 +
>  drivers/gpu/drm/i915/display/intel_link_bw.c |  15 ++-
>  drivers/gpu/drm/i915/display/intel_link_bw.h |   1 +
>  7 files changed, 159 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 8af22cf9a49de..565a6f20ffbfd 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -4629,6 +4629,7 @@ intel_modeset_pipe_config(struct intel_atomic_state *state,
>  	if (ret)
>  		return ret;
>  
> +	crtc_state->fec_enable = limits->force_fec_pipes & BIT(crtc->pipe);
>  	crtc_state->max_link_bpp_x16 = limits->max_bpp_x16[crtc->pipe];
>  
>  	if (crtc_state->pipe_bpp > to_bpp_int(crtc_state->max_link_bpp_x16)) {
> @@ -6435,10 +6436,6 @@ int intel_atomic_check(struct drm_device *dev,
>  		goto fail;
>  	}
>  
> -	ret = drm_dp_mst_atomic_check(&state->base);
> -	if (ret)
> -		goto fail;
> -
>  	ret = intel_atomic_check_planes(state);
>  	if (ret)
>  		goto fail;
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 3d2ede31aa4e8..9b5070d8c8984 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1369,8 +1369,8 @@ static bool intel_dp_source_supports_fec(struct intel_dp *intel_dp,
>  	return false;
>  }
>  
> -static bool intel_dp_supports_fec(struct intel_dp *intel_dp,
> -				  const struct intel_crtc_state *pipe_config)
> +bool intel_dp_supports_fec(struct intel_dp *intel_dp,
> +			   const struct intel_crtc_state *pipe_config)
>  {
>  	return intel_dp_source_supports_fec(intel_dp, pipe_config) &&
>  		drm_dp_sink_supports_fec(intel_dp->fec_capable);
> @@ -2111,8 +2111,9 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
>  		&pipe_config->hw.adjusted_mode;
>  	int ret;
>  
> -	pipe_config->fec_enable = !intel_dp_is_edp(intel_dp) &&
> -		intel_dp_supports_fec(intel_dp, pipe_config);
> +	pipe_config->fec_enable = pipe_config->fec_enable ||
> +		(!intel_dp_is_edp(intel_dp) &&
> +		 intel_dp_supports_fec(intel_dp, pipe_config));
>  
>  	if (!intel_dp_supports_dsc(intel_dp, pipe_config))
>  		return -EINVAL;
> @@ -2308,6 +2309,10 @@ intel_dp_compute_link_config(struct intel_encoder *encoder,
>  	bool dsc_needed;
>  	int ret = 0;
>  
> +	if (pipe_config->fec_enable &&
> +	    !intel_dp_supports_fec(intel_dp, pipe_config))
> +		return -EINVAL;

I wonder, could we just check that, when
we are actually setting fec_enable to true, then
we wouldn't have to care about this here.

Otherwise, with this clarified

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

> +
>  	if (intel_dp_need_bigjoiner(intel_dp, adjusted_mode->crtc_hdisplay,
>  				    adjusted_mode->crtc_clock))
>  		pipe_config->bigjoiner_pipes = GENMASK(crtc->pipe + 1, crtc->pipe);
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
> index 2cf3681bac64a..612105a303419 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.h
> +++ b/drivers/gpu/drm/i915/display/intel_dp.h
> @@ -135,6 +135,8 @@ static inline unsigned int intel_dp_unused_lane_mask(int lane_count)
>  	return ~((1 << lane_count) - 1) & 0xf;
>  }
>  
> +bool intel_dp_supports_fec(struct intel_dp *intel_dp,
> +			   const struct intel_crtc_state *pipe_config);
>  u32 intel_dp_mode_to_fec_clock(u32 mode_clock);
>  u32 intel_dp_dsc_nearest_valid_bpp(struct drm_i915_private *i915, u32 bpp, u32 pipe_bpp);
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index 9681708acaa1a..ce69122fb4e54 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -43,6 +43,7 @@
>  #include "intel_dpio_phy.h"
>  #include "intel_hdcp.h"
>  #include "intel_hotplug.h"
> +#include "intel_link_bw.h"
>  #include "intel_vdsc.h"
>  #include "skl_scaler.h"
>  
> @@ -373,6 +374,10 @@ static int intel_dp_mst_compute_config(struct intel_encoder *encoder,
>  	bool dsc_needed;
>  	int ret = 0;
>  
> +	if (pipe_config->fec_enable &&
> +	    !intel_dp_supports_fec(intel_dp, pipe_config))
> +		return -EINVAL;
> +
>  	if (adjusted_mode->flags & DRM_MODE_FLAG_DBLSCAN)
>  		return -EINVAL;
>  
> @@ -492,6 +497,130 @@ intel_dp_mst_transcoder_mask(struct intel_atomic_state *state,
>  	return transcoders;
>  }
>  
> +static u8 get_pipes_downstream_of_mst_port(struct intel_atomic_state *state,
> +					   struct drm_dp_mst_topology_mgr *mst_mgr,
> +					   struct drm_dp_mst_port *parent_port)
> +{
> +	const struct intel_digital_connector_state *conn_state;
> +	struct intel_connector *connector;
> +	u8 mask = 0;
> +	int i;
> +
> +	for_each_new_intel_connector_in_state(state, connector, conn_state, i) {
> +		if (!conn_state->base.crtc)
> +			continue;
> +
> +		if (&connector->mst_port->mst_mgr != mst_mgr)
> +			continue;
> +
> +		if (connector->port != parent_port &&
> +		    !drm_dp_mst_port_downstream_of_parent(mst_mgr,
> +							  connector->port,
> +							  parent_port))
> +			continue;
> +
> +		mask |= BIT(to_intel_crtc(conn_state->base.crtc)->pipe);
> +	}
> +
> +	return mask;
> +}
> +
> +static int intel_dp_mst_check_fec_change(struct intel_atomic_state *state,
> +					 struct drm_dp_mst_topology_mgr *mst_mgr,
> +					 struct intel_link_bw_limits *limits)
> +{
> +	struct drm_i915_private *i915 = to_i915(state->base.dev);
> +	struct intel_crtc *crtc;
> +	u8 mst_pipe_mask;
> +	u8 fec_pipe_mask = 0;
> +	int ret;
> +
> +	mst_pipe_mask = get_pipes_downstream_of_mst_port(state, mst_mgr, NULL);
> +
> +	for_each_intel_crtc_in_pipe_mask(&i915->drm, crtc, mst_pipe_mask) {
> +		struct intel_crtc_state *crtc_state =
> +			intel_atomic_get_new_crtc_state(state, crtc);
> +
> +		/* Atomic connector check should've added all the MST CRTCs. */
> +		if (drm_WARN_ON(&i915->drm, !crtc_state))
> +			return -EINVAL;
> +
> +		if (crtc_state->fec_enable)
> +			fec_pipe_mask |= BIT(crtc->pipe);
> +	}
> +
> +	if (!fec_pipe_mask || mst_pipe_mask == fec_pipe_mask)
> +		return 0;
> +
> +	limits->force_fec_pipes |= mst_pipe_mask;
> +
> +	ret = intel_modeset_pipes_in_mask_early(state, "MST FEC",
> +						mst_pipe_mask);
> +
> +	return ret ? : -EAGAIN;
> +}
> +
> +static int intel_dp_mst_check_bw(struct intel_atomic_state *state,
> +				 struct drm_dp_mst_topology_mgr *mst_mgr,
> +				 struct drm_dp_mst_topology_state *mst_state,
> +				 struct intel_link_bw_limits *limits)
> +{
> +	struct drm_dp_mst_port *mst_port;
> +	u8 mst_port_pipes;
> +	int ret;
> +
> +	ret = drm_dp_mst_atomic_check_mgr(&state->base, mst_mgr, mst_state, &mst_port);
> +	if (ret != -ENOSPC)
> +		return ret;
> +
> +	mst_port_pipes = get_pipes_downstream_of_mst_port(state, mst_mgr, mst_port);
> +
> +	ret = intel_link_bw_reduce_bpp(state, limits,
> +				       mst_port_pipes, "MST link BW");
> +
> +	return ret ? : -EAGAIN;
> +}
> +
> +/**
> + * intel_dp_mst_atomic_check_link - check all modeset MST link configuration
> + * @state: intel atomic state
> + * @limits: link BW limits
> + *
> + * Check the link configuration for all modeset MST outputs. If the
> + * configuration is invalid @limits will be updated if possible to
> + * reduce the total BW, after which the configuration for all CRTCs in
> + * @state must be recomputed with the updated @limits.
> + *
> + * Returns:
> + *   - 0 if the confugration is valid
> + *   - %-EAGAIN, if the configuration is invalid and @limits got updated
> + *     with fallback values with which the configuration of all CRTCs in
> + *     @state must be recomputed
> + *   - Other negative error, if the configuration is invalid without a
> + *     fallback possibility, or the check failed for another reason
> + */
> +int intel_dp_mst_atomic_check_link(struct intel_atomic_state *state,
> +				   struct intel_link_bw_limits *limits)
> +{
> +	struct drm_dp_mst_topology_mgr *mgr;
> +	struct drm_dp_mst_topology_state *mst_state;
> +	int ret;
> +	int i;
> +
> +	for_each_new_mst_mgr_in_state(&state->base, mgr, mst_state, i) {
> +		ret = intel_dp_mst_check_fec_change(state, mgr, limits);
> +		if (ret)
> +			return ret;
> +
> +		ret = intel_dp_mst_check_bw(state, mgr, mst_state,
> +					    limits);
> +		if (ret)
> +			return ret;
> +	}
> +
> +	return 0;
> +}
> +
>  static int intel_dp_mst_compute_config_late(struct intel_encoder *encoder,
>  					    struct intel_crtc_state *crtc_state,
>  					    struct drm_connector_state *conn_state)
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.h b/drivers/gpu/drm/i915/display/intel_dp_mst.h
> index f1815bb722672..4e836b9ac6061 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.h
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.h
> @@ -13,6 +13,7 @@ struct intel_crtc;
>  struct intel_crtc_state;
>  struct intel_digital_port;
>  struct intel_dp;
> +struct intel_link_bw_limits;
>  
>  int intel_dp_mst_encoder_init(struct intel_digital_port *dig_port, int conn_id);
>  void intel_dp_mst_encoder_cleanup(struct intel_digital_port *dig_port);
> @@ -22,5 +23,7 @@ bool intel_dp_mst_is_slave_trans(const struct intel_crtc_state *crtc_state);
>  bool intel_dp_mst_source_support(struct intel_dp *intel_dp);
>  int intel_dp_mst_add_topology_state_for_crtc(struct intel_atomic_state *state,
>  					     struct intel_crtc *crtc);
> +int intel_dp_mst_atomic_check_link(struct intel_atomic_state *state,
> +				   struct intel_link_bw_limits *limits);
>  
>  #endif /* __INTEL_DP_MST_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_link_bw.c b/drivers/gpu/drm/i915/display/intel_link_bw.c
> index 9d95e4a8478f7..85ceae2a5aaf1 100644
> --- a/drivers/gpu/drm/i915/display/intel_link_bw.c
> +++ b/drivers/gpu/drm/i915/display/intel_link_bw.c
> @@ -22,6 +22,7 @@ void intel_link_bw_init_limits(struct drm_i915_private *i915, struct intel_link_
>  {
>  	enum pipe pipe;
>  
> +	limits->force_fec_pipes = 0;
>  	limits->min_bpp_reached_pipes = 0;
>  	for_each_pipe(i915, pipe)
>  		limits->max_bpp_x16[pipe] = INT_MAX;
> @@ -168,6 +169,10 @@ static int check_all_link_config(struct intel_atomic_state *state,
>  {
>  	int ret;
>  
> +	ret = intel_dp_mst_atomic_check_link(state, limits);
> +	if (ret)
> +		return ret;
> +
>  	ret = intel_fdi_atomic_check_link(state, limits);
>  	if (ret)
>  		return ret;
> @@ -183,6 +188,12 @@ assert_link_limit_change_valid(struct drm_i915_private *i915,
>  	bool bpps_changed = false;
>  	enum pipe pipe;
>  
> +	/* FEC can't be forced off after it was forced on. */
> +	if (drm_WARN_ON(&i915->drm,
> +			(old_limits->force_fec_pipes & new_limits->force_fec_pipes) !=
> +			old_limits->force_fec_pipes))
> +		return false;
> +
>  	for_each_pipe(i915, pipe) {
>  		/* The bpp limit can only decrease. */
>  		if (drm_WARN_ON(&i915->drm,
> @@ -197,7 +208,9 @@ assert_link_limit_change_valid(struct drm_i915_private *i915,
>  
>  	/* At least one limit must change. */
>  	if (drm_WARN_ON(&i915->drm,
> -			!bpps_changed))
> +			!bpps_changed &&
> +			new_limits->force_fec_pipes ==
> +			old_limits->force_fec_pipes))
>  		return false;
>  
>  	return true;
> diff --git a/drivers/gpu/drm/i915/display/intel_link_bw.h b/drivers/gpu/drm/i915/display/intel_link_bw.h
> index 0f666c9712f3c..33b9a338beeb6 100644
> --- a/drivers/gpu/drm/i915/display/intel_link_bw.h
> +++ b/drivers/gpu/drm/i915/display/intel_link_bw.h
> @@ -16,6 +16,7 @@ struct intel_atomic_state;
>  struct intel_crtc_state;
>  
>  struct intel_link_bw_limits {
> +	u8 force_fec_pipes;
>  	u8 min_bpp_reached_pipes;
>  	/* in 1/16 bpp units */
>  	int max_bpp_x16[I915_MAX_PIPES];
> -- 
> 2.37.2
> 
