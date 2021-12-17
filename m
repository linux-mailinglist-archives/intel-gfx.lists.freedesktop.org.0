Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AB66547918D
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Dec 2021 17:36:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B5D2A10E34E;
	Fri, 17 Dec 2021 16:36:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9F1DC10E34E
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Dec 2021 16:36:36 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10201"; a="240008302"
X-IronPort-AV: E=Sophos;i="5.88,213,1635231600"; d="scan'208";a="240008302"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2021 08:36:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,213,1635231600"; d="scan'208";a="483266944"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga002.jf.intel.com with SMTP; 17 Dec 2021 08:36:28 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 17 Dec 2021 18:36:27 +0200
Date: Fri, 17 Dec 2021 18:36:27 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <Yby8i/5jatjcmnH+@intel.com>
References: <20211216140548.1255782-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20211216140548.1255782-1-jani.nikula@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/i915/mst: update slot information for
 128b/132b
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
Cc: intel-gfx@lists.freedesktop.org,
 Bhawanpreet Lakha <Bhawanpreet.Lakha@amd.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Dec 16, 2021 at 04:05:48PM +0200, Jani Nikula wrote:
> 128b/132b supports using 64 slots starting from 0, while 8b/10b reserves
> slot 0 for metadata.
> 
> Commit d6c6a76f80a1 ("drm: Update MST First Link Slot Information Based
> on Encoding Format") added support for updating the topology state
> accordingly, and commit 41724ea273cd ("drm/amd/display: Add DP 2.0 MST
> DM Support") started using it in the amd driver.
> 
> This feels more than a little cumbersome, especially updating the
> information in atomic check. For i915, add the update to MST connector
> .atomic_check hook rather than iterating over all MST managers and
> connectors in global mode config .atomic_check. Fingers crossed.
> 
> Cc: Bhawanpreet Lakha <Bhawanpreet.Lakha@amd.com>
> Cc: Lyude Paul <lyude@redhat.com>
> Cc: Uma Shankar <uma.shankar@intel.com>
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp_mst.c | 18 +++++++++++++++---
>  1 file changed, 15 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index b8bc7d397c81..d13c7952a8d6 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -302,6 +302,8 @@ intel_dp_mst_atomic_check(struct drm_connector *connector,
>  	if (!old_conn_state->crtc)
>  		return 0;
>  
> +	mgr = &enc_to_mst(to_intel_encoder(old_conn_state->best_encoder))->primary->dp.mst_mgr;
> +
>  	/* We only want to free VCPI if this state disables the CRTC on this
>  	 * connector
>  	 */
> @@ -309,6 +311,15 @@ intel_dp_mst_atomic_check(struct drm_connector *connector,
>  		struct intel_crtc *crtc = to_intel_crtc(new_crtc);
>  		struct intel_crtc_state *crtc_state =
>  			intel_atomic_get_new_crtc_state(state, crtc);
> +		struct drm_dp_mst_topology_state *topology_state;
> +		u8 link_coding_cap = intel_dp_is_uhbr(crtc_state) ?
> +			DP_CAP_ANSI_128B132B : DP_CAP_ANSI_8B10B;

This is too early. We haven't determined the link rate yet.
So intel_dp_mst_compute_config() is the earliest we can do this.

> +
> +		topology_state = drm_atomic_get_mst_topology_state(&state->base, mgr);
> +		if (IS_ERR(topology_state))
> +			return PTR_ERR(topology_state);
> +
> +		drm_dp_mst_update_slots(topology_state, link_coding_cap);
>  
>  		if (!crtc_state ||
>  		    !drm_atomic_crtc_needs_modeset(&crtc_state->uapi) ||
> @@ -316,7 +327,6 @@ intel_dp_mst_atomic_check(struct drm_connector *connector,
>  			return 0;
>  	}
>  
> -	mgr = &enc_to_mst(to_intel_encoder(old_conn_state->best_encoder))->primary->dp.mst_mgr;
>  	ret = drm_dp_atomic_release_vcpi_slots(&state->base, mgr,
>  					       intel_connector->port);
>  
> @@ -357,6 +367,7 @@ static void intel_mst_disable_dp(struct intel_atomic_state *state,
>  	struct intel_connector *connector =
>  		to_intel_connector(old_conn_state->connector);
>  	struct drm_i915_private *i915 = to_i915(connector->base.qdev);
> +	int start_slot = intel_dp_is_uhbr(old_crtc_state) ? 0 : 1;a
>  	int ret;
>  
>  	drm_dbg_kms(&i915->drm, "active links %d\n",
> @@ -366,7 +377,7 @@ static void intel_mst_disable_dp(struct intel_atomic_state *state,
>  
>  	drm_dp_mst_reset_vcpi_slots(&intel_dp->mst_mgr, connector->port);
>  
> -	ret = drm_dp_update_payload_part1(&intel_dp->mst_mgr, 1);
> +	ret = drm_dp_update_payload_part1(&intel_dp->mst_mgr, start_slot);

I supoose what we should do in these places is grab the new/old
mst state and dig the slot info out from it. Or I guess even better
to just pass in the whole mst_state and let the mst code dig out what
it needs.

>  	if (ret) {
>  		drm_dbg_kms(&i915->drm, "failed to update payload %d\n", ret);
>  	}
> @@ -475,6 +486,7 @@ static void intel_mst_pre_enable_dp(struct intel_atomic_state *state,
>  	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
>  	struct intel_connector *connector =
>  		to_intel_connector(conn_state->connector);
> +	int start_slot = intel_dp_is_uhbr(pipe_config) ? 0 : 1;
>  	int ret;
>  	bool first_mst_stream;
>  
> @@ -509,7 +521,7 @@ static void intel_mst_pre_enable_dp(struct intel_atomic_state *state,
>  
>  	intel_dp->active_mst_links++;
>  
> -	ret = drm_dp_update_payload_part1(&intel_dp->mst_mgr, 1);
> +	ret = drm_dp_update_payload_part1(&intel_dp->mst_mgr, start_slot);
>  
>  	/*
>  	 * Before Gen 12 this is not done as part of
> -- 
> 2.30.2

-- 
Ville Syrjälä
Intel
