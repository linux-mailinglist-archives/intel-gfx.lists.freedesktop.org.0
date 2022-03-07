Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 066744D08C7
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Mar 2022 21:49:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 10B3B10E1E3;
	Mon,  7 Mar 2022 20:49:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 505D210E1E3
 for <intel-gfx@lists.freedesktop.org>; Mon,  7 Mar 2022 20:49:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646686144; x=1678222144;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=g+9kD0N7ubRdicvB8K2STbnTd2ZRa1vnWH/Lj1Ze5+w=;
 b=FjX2F/jTrX1YgRNmi6lWhGvJuRGLrmbue/70JqpbgrHKu1X6QXsPKS4m
 LEzrDzI90WeM9Wb81iGbuxgtkBp31kALjZv3HorYmljdNcqok4cxr/cu5
 lB7ztQ7BD5qL41wlomMCVy4pTJEKSDyqEOLgwQchlzk32YztWaTNZUa/G
 EZj6PyfVYCwY1MBgqcp4XatEJ5aZDspdW3AA83exfIsS4E+iKhU7P6TA6
 +MFRxBiwEifweH+wWdUgQSOI3gEWEZYQHF+xnhsGU4pLbiYXqxBIArN/j
 NQhgFanl9wsktjqFGQwmkkH3iJclch8J3Y/6YJnugeIzlcQCpYAWfgDgU A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10279"; a="315214975"
X-IronPort-AV: E=Sophos;i="5.90,163,1643702400"; d="scan'208";a="315214975"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2022 12:49:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,163,1643702400"; d="scan'208";a="553321876"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by orsmga008.jf.intel.com with SMTP; 07 Mar 2022 12:49:00 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 07 Mar 2022 22:48:59 +0200
Date: Mon, 7 Mar 2022 22:48:59 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <YiZvu30c4WXRS7gK@intel.com>
References: <20220307193657.2468022-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220307193657.2468022-1-jani.nikula@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/i915/mst: re-enable link training
 failure fallback for DP MST
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
Cc: intel-gfx@lists.freedesktop.org, Nikola Cornij <nikola.cornij@amd.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Mar 07, 2022 at 09:36:57PM +0200, Jani Nikula wrote:
> Commit 80a8cecf62a5 ("drm/i915/dp_mst: Disable link training fallback on
> MST links") disabled link training failure fallback for DP MST due to
> the MST manager using the DPCD directly, and generally being ignorant
> about the possibility of downgrading link parameters. See the commit for
> further details.
> 
> Since then, the max_lane_count and max_link_rate members have been added
> to struct drm_dp_mst_topology_mgr in commit 98025a62cb00 ("drm/dp_mst:
> Use Extended Base Receiver Capability DPCD space") and refined in
> follow-up work.
> 
> The members perhaps aren't intended for changing the parameters during
> the lifetime of the manager, as they're supposed to be passed to
> drm_dp_mst_topology_mgr_init(). However, the members are only ever used
> in drm_dp_mst_topology_mgr_set_mst(), and there seems to be nothing to
> prevent us from adjusting them *before* enabling MST. The wouldn't have
> an effect if modified while MST is enabled. This is not necessarily
> pretty, though.
> 
> Cc: Nikola Cornij <nikola.cornij@amd.com>
> Cc: Lyude Paul <lyude@redhat.com>
> Cc: Imre Deak <imre.deak@intel.com>
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Cc: Uma Shankar <uma.shankar@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> 
> ---
> 
> This is *untested*. I don't see why it wouldn't work, though...

I don't think we have the required stuff to force a modeset on all
the streams when the link params change. And the bad link status
property + uevent stuff is only hooked up to the SST connector
AFAICS.

The other major thing missing is a way to reduce the bpp/etc. of
all the streams to make more room on the link if we have
insufficient bandwidth. And the more we start to reduce the bw
the more we're going to hit that and fail the modesets. We already
ran into regressions due to this when I tried to enable deep color
for MST.

> this
> should allow us to downgrade the link to from 128b/132b to 8b/10b if the
> former fails.
> 
> Thoughts? In particular, any objections for messing with the topology
> manager members directly? Any chance it'll make refactoring the MST code
> more difficult?
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c     | 42 ++++++++++-----------
>  drivers/gpu/drm/i915/display/intel_dp_mst.c |  5 ++-
>  2 files changed, 23 insertions(+), 24 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 619546441eae..2fad3104b40e 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -600,15 +600,6 @@ int intel_dp_get_link_train_fallback_values(struct intel_dp *intel_dp,
>  	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
>  	int index;
>  
> -	/*
> -	 * TODO: Enable fallback on MST links once MST link compute can handle
> -	 * the fallback params.
> -	 */
> -	if (intel_dp->is_mst) {
> -		drm_err(&i915->drm, "Link Training Unsuccessful\n");
> -		return -1;
> -	}
> -
>  	if (intel_dp_is_edp(intel_dp) && !intel_dp->use_max_params) {
>  		drm_dbg_kms(&i915->drm,
>  			    "Retrying Link training for eDP with max parameters\n");
> @@ -2785,6 +2776,8 @@ intel_dp_configure_mst(struct intel_dp *intel_dp)
>  	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
>  	struct intel_encoder *encoder =
>  		&dp_to_dig_port(intel_dp)->base;
> +	struct drm_dp_mst_topology_mgr *mgr = &intel_dp->mst_mgr;
> +
>  	bool sink_can_mst = drm_dp_read_mst_cap(&intel_dp->aux, intel_dp->dpcd);
>  
>  	drm_dbg_kms(&i915->drm,
> @@ -2800,8 +2793,17 @@ intel_dp_configure_mst(struct intel_dp *intel_dp)
>  	intel_dp->is_mst = sink_can_mst &&
>  		i915->params.enable_dp_mst;
>  
> -	drm_dp_mst_topology_mgr_set_mst(&intel_dp->mst_mgr,
> -					intel_dp->is_mst);
> +	/*
> +	 * Set the source max lane count and link rate using the possibly
> +	 * limited values due to failed link training.
> +	 *
> +	 * This is a bit hackish, as the values are supposed to be passed to
> +	 * drm_dp_mst_topology_mgr_init().
> +	 */
> +	mgr->max_lane_count = intel_dp->max_link_lane_count;
> +	mgr->max_link_rate = intel_dp->max_link_rate;
> +
> +	drm_dp_mst_topology_mgr_set_mst(mgr, intel_dp->is_mst);
>  }
>  
>  static bool
> @@ -4472,23 +4474,19 @@ intel_dp_detect(struct drm_connector *connector,
>  		goto out;
>  	}
>  
> -	/* Read DP Sink DSC Cap DPCD regs for DP v1.4 */
> -	if (DISPLAY_VER(dev_priv) >= 11)
> -		intel_dp_get_dsc_sink_cap(intel_dp);
> -
> -	intel_dp_configure_mst(intel_dp);
> -
> -	/*
> -	 * TODO: Reset link params when switching to MST mode, until MST
> -	 * supports link training fallback params.
> -	 */
> -	if (intel_dp->reset_link_params || intel_dp->is_mst) {
> +	if (intel_dp->reset_link_params) {
>  		intel_dp_reset_max_link_params(intel_dp);
>  		intel_dp->reset_link_params = false;
>  	}
>  
>  	intel_dp_print_rates(intel_dp);
>  
> +	/* Read DP Sink DSC Cap DPCD regs for DP v1.4 */
> +	if (DISPLAY_VER(dev_priv) >= 11)
> +		intel_dp_get_dsc_sink_cap(intel_dp);
> +
> +	intel_dp_configure_mst(intel_dp);
> +
>  	if (intel_dp->is_mst) {
>  		/*
>  		 * If we are in MST mode then this connector
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index e30e698aa684..442dbd0ed201 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -151,8 +151,9 @@ static int intel_dp_mst_compute_config(struct intel_encoder *encoder,
>  			intel_conn_state->force_audio == HDMI_AUDIO_ON;
>  
>  	/*
> -	 * for MST we always configure max link bw - the spec doesn't
> -	 * seem to suggest we should do otherwise.
> +	 * For MST we always configure max link bw - the spec doesn't seem to
> +	 * suggest we should do otherwise. The values may be reduced due to link
> +	 * training failures, however.
>  	 */
>  	limits.min_rate =
>  	limits.max_rate = intel_dp_max_link_rate(intel_dp);
> -- 
> 2.30.2

-- 
Ville Syrjälä
Intel
